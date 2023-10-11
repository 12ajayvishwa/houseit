import '../summary_change_payment_bottomsheet/widgets/paymentlist_item_widget.dart';import 'controller/summary_change_payment_controller.dart';import 'models/paymentlist_item_model.dart';import 'package:flutter/material.dart';import 'package:houseit/core/app_export.dart';import 'package:houseit/widgets/custom_button.dart';import 'package:houseit/presentation/summary_success_bottomsheet/summary_success_bottomsheet.dart';import 'package:houseit/presentation/summary_success_bottomsheet/controller/summary_success_controller.dart';
// ignore_for_file: must_be_immutable
class SummaryChangePaymentBottomsheet extends StatelessWidget {SummaryChangePaymentBottomsheet(this.controller);

SummaryChangePaymentController controller;

@override Widget build(BuildContext context) { return SingleChildScrollView(child: Container(width: double.maxFinite, child: Container(width: double.maxFinite, padding: getPadding(top: 24, bottom: 24), decoration: AppDecoration.white.copyWith(borderRadius: BorderRadiusStyle.circleBorder50), child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.center, children: [Padding(padding: getPadding(top: 3), child: SizedBox(width: getHorizontalSize(60), child: Divider(height: getVerticalSize(3), thickness: getVerticalSize(3), color: ColorConstant.blueGray600))), Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 24, top: 33), child: Text("lbl_change_payment".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRalewayBold18.copyWith(letterSpacing: getHorizontalSize(0.54))))), Align(alignment: Alignment.centerRight, child: Container(height: getVerticalSize(197), child: Obx(() => ListView.separated(padding: getPadding(left: 24, top: 17), scrollDirection: Axis.horizontal, separatorBuilder: (context, index) {return SizedBox(height: getVerticalSize(10));}, itemCount: controller.summaryChangePaymentModelObj.value.paymentlistItemList.value.length, itemBuilder: (context, index) {PaymentlistItemModel model = controller.summaryChangePaymentModelObj.value.paymentlistItemList.value[index]; return PaymentlistItemWidget(model);})))), CustomButton(height: getVerticalSize(70), text: "lbl_select_payment".tr, margin: getMargin(left: 24, top: 50, right: 24), onTap: () {onTapSelectpayment();})])))); } 
onTapSelectpayment() { Get.bottomSheet(SummarySuccessBottomsheet(Get.put(SummarySuccessController(),),),isScrollControlled: true,); } 
 }
