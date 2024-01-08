import 'package:fleact_task/core/constants/app_colors.dart';
import 'package:fleact_task/core/constants/img_assets.dart';
import 'package:fleact_task/core/constants/screen_utils.dart';
import 'package:fleact_task/ui/screens/add_familyMember_screen/add_family_vm.dart';
import 'package:fleact_task/ui/screens/register_screen/register_vm.dart';
import 'package:fleact_task/ui/screens/update_profile/update_profile_vm.dart';
import 'package:fleact_task/ui/widgets/circleAvatar.dart';
import 'package:fleact_task/ui/widgets/default_button.dart';
import 'package:fleact_task/ui/widgets/default_textfield.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class UpdateProfileScreen extends StatelessWidget {
  static const String routeName = '/update_profile_screen';

  const UpdateProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return SafeArea(
      child: ChangeNotifierProvider(
        create: (BuildContext context) => UpdateProfileVm(),
        child: Consumer<UpdateProfileVm>(
          builder: (context, vm, child) {
            return Scaffold(
              resizeToAvoidBottomInset: false,
              // appBar: AppBar(
              //   title: Text("Edit Profile"),
              //   centerTitle: true,
              //   actions: [
              //     // IconButton(
              //     //   onPressed: () {
              //     //     Navigator.pop(context);
              //     //   },
              //     //   icon: Icon(
              //     //     Icons.arrow_back_ios,
              //     //     color: AppColors.black,
              //     //     size: 3.h,
              //     //   ),
              //     // ),
              //     // kWidth(4.w),
              //     // Align(
              //     //   alignment: Alignment.center,
              //     //   child: Text(
              //     //     'Edit Profile',
              //     //     style: textTheme.headlineMedium,
              //     //   ),
              //     // ),
              //   ],
              // ),
              body: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(
                            Icons.arrow_back_ios,
                            color: AppColors.black,
                            size: 3.h,
                          ),
                        ),
                        // kWidth(4.w),
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            'Edit Profile',
                            style: textTheme.headlineMedium,
                          ),
                        ),
                      ],
                    ),
                    // Image.asset(
                    //   ImgAssets.imgLoginBackground,
                    //   fit: BoxFit.fill,
                    //   width: 100.w,
                    // ),
                    kHeight(3.h),
                    Center(
                      child: customCircleAvatar(),
                    ),
                    kHeight(4.h),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.sp),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Full Name', style: textTheme.headlineSmall),
                          kHeight(2.h),
                          DefaultTextField(
                            controller: vm.fullNameC,
                            hintText: "Full Name",
                            // validator: validateNameField,
                            keyboardType: TextInputType.name,
                            // inputFormatters: [
                            //   FilteringTextInputFormatter.allow(
                            //       RegExp('[a-zA-Z ]')),
                            //   LengthLimitingTextInputFormatter(30),
                            // ],
                          ),
                          kHeight(2.h),

                          Text('Phone Number', style: textTheme.headlineSmall),
                          kHeight(2.h),
                          DefaultTextField(
                            controller: vm.phoneC,
                            hintText: "Phone Number",
                            // validator: validateNameField,
                            keyboardType: TextInputType.name,
                            // inputFormatters: [
                            //   FilteringTextInputFormatter.allow(
                            //       RegExp('[a-zA-Z ]')),
                            //   LengthLimitingTextInputFormatter(30),
                            // ],
                          ),
                          kHeight(2.h),
                          Text('Date of Birth', style: textTheme.headlineSmall),
                          kHeight(2.h),
                          DefaultTextField(
                            controller: vm.dateOfBirthC,
                            hintText: "Date of Birth",
                            // validator: validateNameField,
                            keyboardType: TextInputType.name,
                            // inputFormatters: [
                            //   FilteringTextInputFormatter.allow(
                            //       RegExp('[a-zA-Z ]')),
                            //   LengthLimitingTextInputFormatter(30),
                            // ],
                          ),
                          kHeight(2.h),

                          Text(
                            'Birth Gender',
                            style: textTheme.headlineSmall,
                          ),
                          kHeight(1.h),

                          Row(
                            children: [
                              RadioMenuButton<String>(
                                  child:  Text('Male'),

                                  value: "Male",
                                  groupValue: vm.gender,
                                  onChanged: (value) {
                                    vm.setGender(value!);
                                  }),

                              kWidth(1.w),

                              RadioMenuButton<String>(

                                  child:  Text('Female'),
                                  value: "Female",
                                  groupValue: vm.gender,

                                  onChanged: (value) {
                                    vm.setGender(value!);

                                  }),
                            ],
                          ),





                          // Row(
                          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          //   children: [
                          //     Row(
                          //       children: [
                          //         Container(
                          //           width: 24.0,
                          //           height: 24.0,
                          //           // color: Colors.red,
                          //           child: Checkbox(
                          //             // title: Text('dfd'),
                          //
                          //             value: vm.isChecked,
                          //
                          //             // title: Text("Remember Me?"),
                          //
                          //             onChanged: (bool? value) {
                          //               if (value != null) {
                          //                 vm.setIsChecked(value);
                          //               }
                          //             },
                          //           ),
                          //         ),
                          //         kWidth(2.w),
                          //         Text('Remember me')
                          //       ],
                          //     ),
                          //     Text("Forgot password?")
                          //   ],
                          // ),
                          kHeight(3.h),

                          // Row(
                          //   children: [
                          //     Radio<String>(
                          //         value: "Female",
                          //
                          //         groupValue: vm.gender,
                          //         onChanged: (value) {
                          //           vm.setGender(value!);
                          //
                          //         }),
                          //     Radio<String>(
                          //         value: "Female",
                          //         groupValue: vm.gender,
                          //         onChanged: (value) {
                          //           vm.setGender(value!);
                          //
                          //         }),
                          //   ],
                          // ),
                          DefaultButton(
                            width: 100.w,
                            onPress: () {},
                            title: "Update",
                          ),
                        ],
                      ),
                    ),
                    // kHeight(3.h),
                    // // Spacer(),
                    // Center(
                    //   child: RichText(
                    //     text: TextSpan(
                    //       text: "Already have an account? ",
                    //       style: textTheme.headlineSmall!.copyWith(
                    //         color: Colors.grey,
                    //       ),
                    //       children: <TextSpan>[
                    //         TextSpan(
                    //           text: "Login",
                    //           recognizer: TapGestureRecognizer()
                    //             ..onTap = () {
                    //               // Navigator.pushNamed(
                    //               //     context, SignUpScreen.routeName);
                    //             },
                    //           style: textTheme.headlineSmall!.copyWith(
                    //             color: AppColors.appPink,
                    //           ),
                    //         ),
                    //       ],
                    //     ),
                    //   ),
                    // ),
                    // kHeight(3.h),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
