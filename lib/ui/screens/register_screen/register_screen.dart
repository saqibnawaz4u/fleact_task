import 'package:fleact_task/core/constants/app_colors.dart';
import 'package:fleact_task/core/constants/img_assets.dart';
import 'package:fleact_task/core/constants/screen_utils.dart';
import 'package:fleact_task/ui/screens/add_familyMember_screen/add_family_screen.dart';
import 'package:fleact_task/ui/screens/register_screen/register_vm.dart';
import 'package:fleact_task/ui/widgets/default_button.dart';
import 'package:fleact_task/ui/widgets/default_textfield.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';



class RegisterScreen extends StatelessWidget {
  static const String routeName = '/register_screen';

  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return SafeArea(
      child: ChangeNotifierProvider(
        create: (BuildContext context) => RegisterVm(),
        child: Consumer<RegisterVm>(
          builder: (context, vm, child) {
            return Scaffold(
              resizeToAvoidBottomInset: false,
              body: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      ImgAssets.imgLoginBackground,
                      fit: BoxFit.fill,
                      width: 100.w,
                    ),
                    kHeight(3.h),
                    Center(
                      child: Image.asset(
                        ImgAssets.imgLogo,
                        height: 15.h,
                        width: 25.h,
                        fit: BoxFit.fill,
                      ),
                    ),
                    kHeight(2.h),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.sp),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Register an Account',
                            style: textTheme.headlineLarge!.copyWith(
                              fontSize: 20.px,
                            ),
                          ),
                          kHeight(3.h),
                          Text('First Name', style: textTheme.headlineSmall),
                          kHeight(2.h),
                          DefaultTextField(
                            controller: vm.firstNameC,
                            hintText: "First Name",
                            // validator: validateNameField,
                            keyboardType: TextInputType.name,
                            // inputFormatters: [
                            //   FilteringTextInputFormatter.allow(
                            //       RegExp('[a-zA-Z ]')),
                            //   LengthLimitingTextInputFormatter(30),
                            // ],
                          ),
                          kHeight(2.h),
                          Text('Last Name', style: textTheme.headlineSmall),
                          kHeight(2.h),
                          DefaultTextField(
                            controller: vm.lastNameC,
                            hintText: "Last Name",
                            // validator: validateNameField,
                            keyboardType: TextInputType.name,
                            // inputFormatters: [
                            //   FilteringTextInputFormatter.allow(
                            //       RegExp('[a-zA-Z ]')),
                            //   LengthLimitingTextInputFormatter(30),
                            // ],
                          ),
                          kHeight(2.h),
                          Text('Email', style: textTheme.headlineSmall),
                          kHeight(2.h),
                          DefaultTextField(
                            controller: vm.emailC,
                            hintText: "Email",
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
                          Text('Password',style: textTheme.headlineSmall),
                          kHeight(2.h),
                          DefaultTextField(
                            controller: vm.passwordC,
                            hintText: "Password",
                            // validator: validateNameField,
                            keyboardType: TextInputType.name,
                            // inputFormatters: [
                            //   FilteringTextInputFormatter.allow(
                            //       RegExp('[a-zA-Z ]')),
                            //   LengthLimitingTextInputFormatter(30),
                            // ],
                          ),
                          kHeight(2.h),
                          Text('Confrim Password', style: textTheme.headlineSmall),
                          kHeight(2.h),
                          DefaultTextField(
                            controller: vm.confrmC,
                            hintText: "Confirm Password",
                            // validator: validateNameField,
                            keyboardType: TextInputType.name,
                            // inputFormatters: [
                            //   FilteringTextInputFormatter.allow(
                            //       RegExp('[a-zA-Z ]')),
                            //   LengthLimitingTextInputFormatter(30),
                            // ],
                          ),

                          kHeight(1.h),
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
                          DefaultButton(
                            width: 100.w,

                            onPress: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>AddFamilyMemberScreen(),),);
                            },
                            title: "Create Account",
                          ),
                        ],
                      ),
                    ),
                    kHeight(3.h),
                    // Spacer(),
                    Center(
                      child: RichText(
                        text: TextSpan(
                          text: "Already have an account? ",
                          style: textTheme.headlineSmall!.copyWith(
                            color: Colors.grey,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: "Login",
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  // Navigator.pushNamed(
                                  //     context, SignUpScreen.routeName);
                                },
                              style: textTheme.headlineSmall!.copyWith(
                                color: AppColors.appPink,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    kHeight(3.h),
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