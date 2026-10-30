import 'package:flutter_application_1/views/calculator.dart';
import 'package:flutter_application_1/views/home.dart';
import 'package:flutter_application_1/views/login.dart';
import 'package:flutter_application_1/views/registration.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

var myRoutes = [
  GetPage(name: "/", page: () => Calc()),
  GetPage(name: "/registration", page: () => RegistrationScreen()),
  GetPage(name: "/home", page: () => HomeScreen()),
];
