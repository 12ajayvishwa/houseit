import 'package:houseit/core/app_export.dart';
import 'package:houseit/presentation/delete_confirmation_bottomsheet/models/delete_confirmation_model.dart';

class DeleteConfirmationController extends GetxController {
  Rx<DeleteConfirmationModel> deleteConfirmationModelObj =
      DeleteConfirmationModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
