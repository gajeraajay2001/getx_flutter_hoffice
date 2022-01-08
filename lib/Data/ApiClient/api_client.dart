import 'package:connectivity/connectivity.dart';
import 'package:get/get.dart' hide Response, FormData;

class ApiClient extends GetConnect {
  Connectivity connectivity = Connectivity();
}
