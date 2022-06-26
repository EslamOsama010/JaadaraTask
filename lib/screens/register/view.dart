import 'package:flutter/material.dart';
import 'package:task/helper/colors.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
            SingleChildScrollView(
              child: Container(
                padding: const EdgeInsets.only(top: 70, left: 25, right: 25),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Align(
                        child: Text(
                          '! مرحباا بك',
                          style: TextStyle(fontSize: 20),
                        ),
                        alignment: AlignmentDirectional.topEnd),
                    const SizedBox(
                      height: 8,
                    ),
                    Align(
                        child: Text('انشاء حساب لبدء التطبيق ',
                            style: TextStyle(
                              fontSize: 21,
                              color: color,
                            )),
                        alignment: AlignmentDirectional.topEnd),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const Text(
                          'تسجيل جديد',
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
                      height: 25,
                    ),
                    SizedBox(
                      height: 50,
                      child: TextFormField(
                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                          hintText: "اسم المستخدم",
                          hintStyle: TextStyle(
                            color: Colors.grey.withOpacity(0.7),
                          ),
                          hintTextDirection: TextDirection.rtl,
                          suffixIcon:
                              Image.asset('assets/images/user (50).png',width: 70,),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide:
                                  const BorderSide(color: Colors.transparent)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide:
                                  const BorderSide(color: Colors.transparent)),
                          fillColor: Colors.grey.withOpacity(0.1),
                          filled: true,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                      height: 50,
                      child: TextFormField(
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                          hintText: "رقم الجوال",
                          hintStyle: TextStyle(
                            color: Colors.grey.withOpacity(0.7),
                          ),
                          hintTextDirection: TextDirection.rtl,
                          suffixIcon:
                              Image.asset('assets/images/mobile.png',width: 75,),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide:
                                  const BorderSide(color: Colors.transparent)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide:
                                  const BorderSide(color: Colors.transparent)),
                          fillColor: Colors.grey.withOpacity(0.1),
                          filled: true,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                      height: 50,
                      child: TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          hintText: "البريد الالكتروني",
                          hintStyle: TextStyle(
                            color: Colors.grey.withOpacity(0.7),
                          ),
                          hintTextDirection: TextDirection.rtl,
                          suffixIcon:
                              Image.asset('assets/images/mail (11).png'),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide:
                                  const BorderSide(color: Colors.transparent)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide:
                                  const BorderSide(color: Colors.transparent)),
                          fillColor: Colors.grey.withOpacity(0.1),
                          filled: true,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                      height: 50,
                      child: TextFormField(
                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(
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
                              borderSide:
                                  const BorderSide(color: Colors.transparent)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide:
                                  const BorderSide(color: Colors.transparent)),
                          fillColor: Colors.grey.withOpacity(0.1),
                          filled: true,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                      height: 50,
                      child: TextFormField(
                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(
                          hintText: "تاكيد كلمة المرور",
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
                              borderSide:
                                  const BorderSide(color: Colors.transparent)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide:
                                  const BorderSide(color: Colors.transparent)),
                          fillColor: Colors.grey.withOpacity(0.1),
                          filled: true,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: 150,
                      padding: const EdgeInsets.only(
                        left: 30,
                        right: 30,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.green.shade900,
                      ),
                      child: MaterialButton(
                        onPressed: () {},
                        child: const Text(
                          'تسجيل',
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
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
                            'تسجيل دخول',
                            style: TextStyle(
                              color: color,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                        const Text('لدي حساب بالفعل'),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: 270,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/Mask Group 3.png'),
                  alignment: AlignmentDirectional.bottomStart,
                ),
              ),
              child: Align(
                alignment: AlignmentDirectional.bottomStart,
                child: Image.asset(
                  'assets/images/pngegg (18).png',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
