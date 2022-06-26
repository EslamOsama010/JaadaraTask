import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task/helper/colors.dart';
import 'package:task/screens/login/controller.dart';
import 'package:task/screens/login/states.dart';

class LoginScreen extends StatelessWidget {
  var formKey = GlobalKey<FormState>();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginController(),
      child: BlocConsumer<LoginController, LoginStates>(
        listener: (context, state) {},
        builder: (context, state) {
          final controller = LoginController.get(context);
          return Scaffold(
            body: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                image: DecorationImage(
                  image: AssetImage('assets/images/Group 3147.png'),
                ),
              ),
              child: Stack(

                children: [
                  Positioned(
                    bottom: -10,
                    left: 0,
                    right: MediaQuery.of(context).size.width*.2,

                    child: SizedBox(

                      child: Image.asset(
                        'assets/images/Group 3125.png',
                        width: MediaQuery.of(context).size.width*.2,
                        fit: BoxFit.fill,
                        alignment: AlignmentDirectional.bottomStart,
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                    child: Container(
                      height: MediaQuery.of(context).size.height,
                      padding: const EdgeInsets.only(
                          top: 80, bottom: 25, left: 25, right: 25),
                      width: MediaQuery.of(context).size.width,
                      child: Form(
                        key: formKey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Align(
                                child: Text(
                                  '! مرحباا بعودتك',
                                  style: TextStyle(fontSize: 20),
                                ),
                                alignment: AlignmentDirectional.topEnd),
                            const SizedBox(
                              height: 12,
                            ),
                            Align(
                                child: Text('تسجيل الدخول للمتابعة',
                                    style: TextStyle(
                                      fontSize: 21,
                                      color: color,
                                    )),
                                alignment: AlignmentDirectional.topEnd),
                            const SizedBox(
                              height: 40,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                const Text(
                                  'تسجيل الدخول',
                                  style: TextStyle(fontSize: 20),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  height: 1,
                                  width: 25,
                                  color: Colors.black,
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            SizedBox(
                              height: 60,
                              child: TextFormField(
                                controller: emailController,
                                validator: (dynamic value) {
                                  if (value.isEmpty) {
                                    return 'Email must be not empty';
                                  }
                                  return null;
                                },
                                keyboardType: TextInputType.emailAddress,
                                textInputAction: TextInputAction.next,
                                decoration: InputDecoration(
                                  enabled: true,
                                  hintText: "البريد الالكتروني",
                                  hintStyle: TextStyle(
                                    color: Colors.grey.withOpacity(0.7),
                                  ),
                                  hintTextDirection: TextDirection.rtl,
                                  suffixIcon: Image.asset(
                                      'assets/images/mail (11).png'),
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30),
                                      borderSide: const BorderSide(
                                          color: Colors.transparent)),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30),
                                      borderSide: const BorderSide(
                                          color: Colors.transparent)),
                                  fillColor: Colors.grey.withOpacity(0.1),
                                  filled: true,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            SizedBox(
                              height: 60,
                              child: TextFormField(
                                controller: passwordController,
                                validator: (dynamic value) {
                                  if (value.isEmpty) {
                                    return 'Password must be not empty';
                                  }
                                  return null;
                                },
                                keyboardType: TextInputType.visiblePassword,
                                decoration: InputDecoration(
                                  enabled: true,
                                  hintText: "كلمة المرور",
                                  hintStyle: TextStyle(
                                    color: Colors.grey.withOpacity(0.7),
                                  ),
                                  hintTextDirection: TextDirection.rtl,
                                  suffixIcon: Image.asset(
                                    'assets/images/padlock (1).png',
                                    width: 80,
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30),
                                      borderSide: const BorderSide(
                                          color: Colors.transparent)),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30),
                                      borderSide: const BorderSide(
                                          color: Colors.transparent)),
                                  fillColor: Colors.grey.withOpacity(0.1),
                                  filled: true,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            InkWell(
                              onTap: () {},
                              child: Align(
                                  child: Text(' نسيت كلمة المرور ؟',
                                      style: TextStyle(
                                        fontSize: 17,
                                        color: color,
                                      )),
                                  alignment: AlignmentDirectional.topStart),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            ConditionalBuilder(
                              condition: state is! LoginLoadingState,
                              builder: (context) => Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.green.shade900,
                                ),
                                child: MaterialButton(
                                  height: 50,
                                  minWidth: 140,
                                  onPressed: () {
                                    if (formKey.currentState!.validate()) {
                                      controller.userLogin(
                                        email: emailController.text,
                                        password: passwordController.text,
                                        context: context,
                                      );
                                    }
                                  },
                                  child: const Text(
                                    'دخول',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 15),
                                  ),
                                ),

                              ),
                              fallback: (context) => const Center(
                                child: CircularProgressIndicator(),
                              ),
                            ),
                            const SizedBox(
                              height: 6,
                            ),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    'تسجيل جديد',
                                    style: TextStyle(
                                      color: color,
                                      decoration: TextDecoration.underline,
                                    ),
                                  ),
                                ),
                                const Text('ليس لدي حساب '),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
