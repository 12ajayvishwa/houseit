import 'package:houseit/core/app_export.dart';
import 'package:houseit/presentation/transaction_page/models/transaction_model.dart';

class TransactionController extends GetxController {
  TransactionController(this.transactionModelObj);

  Rx<TransactionModel> transactionModelObj;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
