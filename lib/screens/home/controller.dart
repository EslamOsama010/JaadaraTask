import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task/screens/home/model.dart';
import 'package:task/screens/home/states.dart';

import '../../helper/CustomToast.dart';
import '../../helper/dio.dart';
import '../../helper/end point.dart';

class HomeController extends Cubit<HomeStates> {
  HomeController() : super(HomeInitialState());

  static HomeController get(context) => BlocProvider.of(context);

  List<ServiceModel> servicesData =[];
  var images = [
    'assets/images/Group 180.png',
    'assets/images/Group 179.png',
    'assets/images/Group 181.png',
    'assets/images/Group 175.png',
    'assets/images/Group 2183.png',
    'assets/images/Group 2182.png'
  ];
  var texts = [
    'نظافة سيارات',
    'نظافة مباني',
    'ايجار وايتات',
    'تأجير حاويات',
    'خدمات حاويات',
    'خدمات صيانة',
  ];
  getServices() async {
    emit(HomeLoadingState());
    var data = await DioHelper.getData(url: services).catchError((error) {
      debugPrint(error.toString());
      emit(HomeLoadingState());
      emit(HomeErrorState());
    });
    debugPrint(data.toString());
    emit(HomeLoadingState());
    if (data != null) {
      emit(HomeSuccessState());
      for(int x= 0;x< data.length ; x++){
        ServiceModel serviceModel =ServiceModel.fromJson(data[x]);
        servicesData.add(serviceModel);

      }
    }else{
      customToast("حدث خطا ما برجاء إعادة المحاولة");
    }
  }
}
