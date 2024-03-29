import 'package:flutter/material.dart';
import 'package:handyman/screens/choose_account/choose_acount.dart';
import 'package:handyman/screens/provider/screens/sign_in/components/provider_sign_form.dart';
import 'package:handyman/screens/sign_in/sign_in_screen.dart';

import '../../../../../size_config.dart';
import '../../../provider_components/provider_no_account_txt.dart';
import '../../../provider_constants.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(0)),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Stack(
                  children: <Widget>[
                    Container(
                      width: double.infinity,
                      height: SizeConfig.screenHeight * 0.4,
                      decoration: const BoxDecoration(
                        gradient: kPrimaryGradientColor,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(30),
                          bottomRight: Radius.circular(30),
                        ),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.fromLTRB(8.0, 48, 8, 8),
                        child: Text(
                          "Register as\nService Provider",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white, fontSize: 32),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.fromLTRB(36.0, 150.0, 36.0, 36.0),
                      child: SizedBox(
                        width: double.infinity,
                        height: SizeConfig.screenHeight * 0.46,
                        child: Card(
                          color: kSecondaryColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          elevation: 8.0,
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: SingleChildScrollView(
                              child: Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text(
                                      "Welcome Back",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: kTextColor,
                                        fontSize:
                                            getProportionateScreenWidth(20),
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "Sign in to continue.",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: kTextColorSecondary,
                                        fontSize:
                                            getProportionateScreenWidth(14),
                                      ),
                                    ),
                                    SizedBox(
                                        height:
                                            getProportionateScreenHeight(4)),
                                    const SignForm(),
                                  ]),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: getProportionateScreenHeight(0)),
                NoAccountText(
                    a: "User",
                    b: " Sign In",
                    press: () {
                      Navigator.of(context).pushNamedAndRemoveUntil(
                          SignInScreen.routeName, (route) => false);
                    }),
                SizedBox(height: getProportionateScreenHeight(102)),
                NoAccountText(
                    a: "Don’t have an account?",
                    b: " Sign Up",
                    press: () {
                      Navigator.of(context).pushNamedAndRemoveUntil(
                          ChooseAccount.routeName, (route) => false);
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
