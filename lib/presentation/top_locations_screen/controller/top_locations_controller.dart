import 'package:houseit/core/app_export.dart';import 'package:houseit/presentation/top_locations_screen/models/top_locations_model.dart';class TopLocationsController extends GetxController {Rx<TopLocationsModel> topLocationsModelObj = TopLocationsModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); } 
 }
