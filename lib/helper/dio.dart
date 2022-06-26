import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import 'CustomToast.dart';

class DioHelper {
  static Dio? dio;

  static init() {
    dio = Dio(
      BaseOptions(
        baseUrl: "https://beta-api.mawasims.com.sa/api/",
        receiveDataWhenStatusError: true,
      ),
    );
  }

  static Future postData({
    required String url ,
    dynamic query,
    required dynamic data,
    String lang = 'ar',
    String token = '',
  }) async
  {
    dio!.options.headers = {
      'Accept':'application/json',
      'Accept-Language':lang,
    };
   final response =await  dio!.post(url,data: data,queryParameters: query,);
    if(response.statusCode == 200){
      return response.data['data'];
    }else if(response.statusCode == 404){
      customToast(response.data['message']);
      return null;
    }else if(response.statusCode == 500){
      customToast("يوجد مشكلة في السيرفر");
      return null;
    }else if(response.statusCode == 422){
      customToast(response.data['message']);
      return null;
    }else{
      customToast(response.data['message']);
      return null;
    }
  }


  static Future getData({
    required String url ,
    dynamic query,
    String lang = 'ar',
    String token = '',
  }) async
  {
    dio!.options.headers = {
      'Accept':'application/json',
      'Accept-Language':lang,
    };
   final response=await dio!.get(url,queryParameters: query,);
    if(response.statusCode==200){
      return response.data['data'];
    }else if(response.statusCode==404){
      customToast(response.data['message']);
      return null;
    }else if(response.statusCode==500){
      customToast("يوجد مشكلة في السيرفر");
      return null;
    }else if(response.statusCode==422){
      customToast(response.data['message']);
      return null;
    }else{
      customToast(response.data['message']);
      return null;
    }
  }

}


