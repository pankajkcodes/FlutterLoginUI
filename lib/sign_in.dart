import 'package:flutter/material.dart';
import 'package:login_ui/constant.dart';
import 'package:login_ui/sign_up.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        color: Colors.black,
        child: SingleChildScrollView(
          child: Column(
            children: [

             Container(
                padding: EdgeInsets.only(top: 90,right: 10),
                height: 200,
                child: Text("Welcome Back!" ,style:
                TextStyle(color: Colors.white,fontSize:35),),
              ),

              Container(
                height: AppConstant.height(context) * 0.74,
                width: AppConstant.width(context),
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.only(topLeft: Radius.circular(70))),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 50,
                    ),
                    const Text(
                      "Log In ",
                      style:
                          TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 21, vertical: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.black)),
                      child: TextFormField(
                        decoration: const InputDecoration(
                            contentPadding: EdgeInsets.only(left: 10),
                            hintText: "Email@gmail.com",
                            border: InputBorder.none),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 21),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.black)),
                      child: TextFormField(
                        obscureText: true,
                        decoration: const InputDecoration(
                            contentPadding: EdgeInsets.only(left: 10),
                            hintText: "Password",

                            border: InputBorder.none),
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Container(
                        width: AppConstant.width(context) * 0.88,
                        height: 50,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: const Text("Login"),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            side: const BorderSide(
                              width: 0,
                              color: Color(0xffC09E63),
                            ),
                          ),
                        )),
                    const Spacer(),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SignUpScreen()));
                      },
                      child: Container(
                        margin: const EdgeInsets.only(bottom: 20),
                        child: const Text("Don't have account ? Sigin  Up"),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
