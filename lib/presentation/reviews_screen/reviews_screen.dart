import '../reviews_screen/widgets/layout22_item_widget.dart';import '../reviews_screen/widgets/ratingcategory1_item_widget.dart';import 'controller/reviews_controller.dart';import 'models/layout22_item_model.dart';import 'models/ratingcategory1_item_model.dart';import 'package:flutter/material.dart';import 'package:houseit/core/app_export.dart';import 'package:houseit/widgets/app_bar/appbar_iconbutton_2.dart';import 'package:houseit/widgets/app_bar/appbar_title.dart';import 'package:houseit/widgets/app_bar/custom_app_bar.dart';import 'package:houseit/widgets/custom_icon_button.dart';class ReviewsScreen extends GetWidget<ReviewsController> {@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(backgroundColor: ColorConstant.whiteA700, appBar: CustomAppBar(height: getVerticalSize(74), leadingWidth: 74, leading: AppbarIconbutton2(svgPath: ImageConstant.imgArrowleft, margin: getMargin(left: 24), onTap: () {onTapArrowleft24();}), centerTitle: true, title: AppbarTitle(text: "lbl_reviews".tr)), body: SizedBox(width: size.width, child: SingleChildScrollView(child: Padding(padding: getPadding(left: 24, top: 20, bottom: 5), child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [Container(margin: getMargin(right: 24), padding: getPadding(all: 8), decoration: AppDecoration.fillGray100.copyWith(borderRadius: BorderRadiusStyle.roundedBorder25), child: Row(crossAxisAlignment: CrossAxisAlignment.start, mainAxisSize: MainAxisSize.min, children: [Container(height: getVerticalSize(104), width: getHorizontalSize(168), child: Stack(alignment: Alignment.centerLeft, children: [CustomImageView(imagePath: ImageConstant.imgShape160x1448, height: getVerticalSize(104), width: getHorizontalSize(168), radius: BorderRadius.circular(getHorizontalSize(15)), alignment: Alignment.center), Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 8), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [CustomIconButton(height: 25, width: 25, variant: IconButtonVariant.FillWhiteA700c6, child: CustomImageView(svgPath: ImageConstant.imgLocationRedA200)), Container(margin: getMargin(top: 38), padding: getPadding(left: 7, top: 5, right: 7, bottom: 5), decoration: AppDecoration.fillBluegray700af.copyWith(borderRadius: BorderRadiusStyle.roundedBorder8), child: Row(mainAxisSize: MainAxisSize.min, children: [CustomImageView(imagePath: ImageConstant.imgButtoncategory, height: getVerticalSize(13), width: getHorizontalSize(11)), Padding(padding: getPadding(left: 6, top: 2, bottom: 1), child: Text("lbl_apartment".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRalewayMedium8.copyWith(letterSpacing: getHorizontalSize(0.24))))]))])))])), Padding(padding: getPadding(left: 16, top: 13, right: 33, bottom: 21), child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [Container(width: getHorizontalSize(93), child: Text("msg_sky_dandelions".tr, maxLines: null, textAlign: TextAlign.left, style: AppStyle.txtRalewayBold12.copyWith(letterSpacing: getHorizontalSize(0.36)))), Padding(padding: getPadding(top: 7), child: Row(children: [CustomImageView(svgPath: ImageConstant.imgStar1, height: getSize(9), width: getSize(9)), Padding(padding: getPadding(left: 2), child: Text("lbl_4_9".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtMontserratBold8))])), Padding(padding: getPadding(top: 6), child: Row(children: [CustomImageView(svgPath: ImageConstant.imgLocationDeepOrangeA200, height: getSize(9), width: getSize(9)), Padding(padding: getPadding(left: 2), child: Text("msg_jakarta_indone".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRalewayRegular8))]))]))])), Align(alignment: Alignment.centerRight, child: Container(height: getVerticalSize(71), child: Obx(() => ListView.separated(padding: getPadding(top: 20), scrollDirection: Axis.horizontal, separatorBuilder: (context, index) {return SizedBox(height: getVerticalSize(10));}, itemCount: controller.reviewsModelObj.value.ratingcategory1ItemList.value.length, itemBuilder: (context, index) {Ratingcategory1ItemModel model = controller.reviewsModelObj.value.ratingcategory1ItemList.value[index]; return Ratingcategory1ItemWidget(model);})))), Padding(padding: getPadding(top: 33), child: Text("lbl_user_reviews".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRalewayBold18.copyWith(letterSpacing: getHorizontalSize(0.54)))), Padding(padding: getPadding(top: 19, right: 24), child: Obx(() => ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: getVerticalSize(10));}, itemCount: controller.reviewsModelObj.value.layout22ItemList.value.length, itemBuilder: (context, index) {Layout22ItemModel model = controller.reviewsModelObj.value.layout22ItemList.value[index]; return Layout22ItemWidget(model);})))])))))); } 
onTapArrowleft24() { Get.back(); } 
 }
