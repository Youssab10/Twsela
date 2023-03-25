import 'package:flutter/material.dart';
import 'package:twsela/Drawer/googlemap.dart';
import 'package:twsela/Drawer/my_trips.dart';
import 'package:twsela/Drawer/profile.dart';
import 'package:twsela/Drawer/promotion.dart';
import 'package:twsela/Drawer/setting.dart';
import 'package:twsela/Drawer/support.dart';

import 'package:twsela/auth/Address.dart';
import 'package:twsela/auth/Car_License.dart';
import 'package:twsela/auth/Car_info.dart';
import 'package:twsela/auth/Car_type.dart';
import 'package:twsela/auth/Criminal_records.dart';
import 'package:twsela/auth/ID_confirmation.dart';
import 'package:twsela/auth/National_ID.dart';
import 'package:twsela/auth/Number_plate.dart';
import 'package:twsela/auth/Photo_Of_Car.dart';
import 'package:twsela/auth/SignUP_Driver.dart';
import 'package:twsela/auth/SignUP_Passenger.dart';
import 'package:twsela/auth/Welcome.dart';
import 'package:twsela/auth/basic_info.dart';
import 'package:twsela/car_types/BYD.dart';
import 'package:twsela/car_types/Car_Color.dart';
import 'package:twsela/car_types/Hyundai.dart';
import 'package:twsela/car_types/KIA.dart';
import 'package:twsela/car_types/Mitsubishi.dart';
import 'package:twsela/car_types/Nissan.dart';
import 'package:twsela/auth/driver_license.dart';
import 'package:twsela/auth/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login(),
      routes: {
        "login": (context) => Login(),
        "Welcome": (context) => Welcome(),
        "Passenger": (context) => SignUP_Passenger(),
        "Driver": (context) => SignUp_Driver(),
        "Basic Info": (context) => Basic_info(),
        "Driver License": (context) => Driver_license(),
        "Car Info": (context) => Car_info(),
        "Address": (context) => Address(),
        "Criminal Records Certification": (context) =>
            Criminal_records_certification(),
        "ID confirmation": (context) => ID_confirmation(),
        "car type": (context) => Car_type(),
        "number plate": (context) => Number_plate(),
        "National ID": (context) => National_ID(),
        "car License": (context) => Car_License(),
        "photo of car": (context) => photo_of_car(),
        "KIA": (context) => KIA(),
        "Nissan": (context) => Nissan(),
        "BYD": (context) => BYD(),
        "Hyundai": (context) => Hyundai(),
        "Mitsubishi": (context) => Mitsubishi(),
        "Car Color": (context) => Car_Color(),
        "googlemap": (context) => googlemap(),
        "profile": (context) => profile(),
        "my_trips": (context) => My_trip(),
        "promotion": (context) => promotion(),
        "setting": (context) => setting(),
        "support": (context) => support(),
      },
    );
  }
}
