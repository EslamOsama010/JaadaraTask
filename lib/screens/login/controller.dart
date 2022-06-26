import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task/helper/CustomToast.dart';
import 'package:task/helper/end%20point.dart';
import 'package:task/screens/login/model.dart';
import 'package:task/screens/login/states.dart';

import '../../helper/dio.dart';
import '../../helper/methods.dart';
import '../../helper/shared_pref.dart';
import '../home/view.dart';

class LoginController extends Cubit<LoginStates> {
  LoginController() : super(LoginInitialState());

  static LoginController get(context) => BlocProvider.of(context);

  userLogin({
    required String email,
    required String password,
    context,
  }) async {
    emit(LoginLoadingState());
    var data = await DioHelper.postData(url: login , data: {
      "email": email,
      "password": password,
      "token_firebase": "asdff",
      "device_id": "ce01ss15sddds0dff50",
    }).catchError((error) {
      debugPrint(error.toString());
      emit(LoginLoadingState());
      emit(LoginErrorState());

    });

    if (data != null) {
      UserModel model = UserModel.fromJson(data);
      SharedPref.saveData(key: 'token', value: model.token).then(
        (value) {
          token = model.token;
          navigateAndFinish(context, HomeScreen());
          emit(LoginSuccessState());
        }
      );
    }else{
      customToast("حدث خطا ما برجاء إعادة المحاولة");
    }
    }
  }

