import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/utils.dart';
import 'package:login_app/src/constants/image_strings.dart';
import 'package:login_app/src/constants/sizes.dart';
import 'package:login_app/src/constants/text_strings.dart';
import 'widgets/login_footer_widget.dart';
import 'widgets/login_form_widget.dart';
import 'widgets/login_header_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //final size = MediaQuery.of(context).size;
    final height = Get.height;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
            child: Container(
          padding: EdgeInsets.all(tDefaultSize),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            /*---section-1---*/
            LoginHeaderWidget(height: height),
            /*-- .end --*/

            /*---section-2--*/
            LoginForm(),

            /*-- .end --*/

            LoginFooterWidget()
          ]),
        )),
      ),
    );
  }
}

