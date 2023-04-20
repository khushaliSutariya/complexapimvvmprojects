
import 'dart:convert';
import 'dart:io' show Platform;
import 'package:flutter/material.dart';
import 'package:mvvmprojects/helper/ApiHandler.dart';
import 'package:mvvmprojects/resources/URLResources.dart';

class AuthProvider extends ChangeNotifier
{
  bool islogin=false;
  var message="";
  checklogin(params) async
  {

     var jsonparams = {
       "name": params["name"],
       "password": params["password"],
       "device_token":"12345678",
       "device_os": Platform.operatingSystem
     };

     var headers = {
       "Content-Type":"application/json"
     };
     
     
     await ApiHandler.postCall(URLResources.LOGIN_API,body: jsonEncode(jsonparams),headers: headers).then((json){
       if(json["result"]=="success")
         {
           islogin=true;
           var id = json["data"]["id"].toString();
           var name = json["data"]["name"].toString();
           var email = json["data"]["email"].toString();
           var user_session_token = json["data"]["user_session_token"].toString();
           //sp

         }
       else
         {
           islogin=false;
         }
       message=json["message"];
     });
  }
}