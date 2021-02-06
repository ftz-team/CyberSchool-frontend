import 'dart:async';
import 'dart:io';
import 'package:cyberschool/helpers/dateHelpers.dart';
import 'package:flutter/services.dart';
import 'package:device_info/device_info.dart';
import 'package:cyberschool/models/AbstractModel.dart';

enum Gender {
  male,
  female,
  other
}

class UserModel extends AbstractModel{

  String _deviceId = null;
  DateTime _birthday;
  Gender _gender = Gender.other;
  String _city;


  Future<String> get deviceId async{
    if (_deviceId == null){

      final DeviceInfoPlugin deviceInfoPlugin = new DeviceInfoPlugin();
      try {
        if (Platform.isAndroid) {
          var build = await deviceInfoPlugin.androidInfo;
          _deviceId = build.androidId;  //UUID for Android
        } else if (Platform.isIOS) {
          var data = await deviceInfoPlugin.iosInfo;
          _deviceId = data.identifierForVendor;  //UUID for iOS
        }
      } on PlatformException {
        print('Failed to get platform version');
      }
      return _deviceId;
    }
    return _deviceId;
  }

  String get gender{
    return _gender.toString();
  }

  String get birthday{
    return djangoS(_birthday);
  }

  String get city{
    return _city;
  }


  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.deviceId;
    data['gender'] = this.gender;
    data['birthday'] = this.birthday;
    data['city'] = this.city;
    return data;
  }



}