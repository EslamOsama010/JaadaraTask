import 'package:flutter/material.dart';
import 'package:task/helper/colors.dart';

class PhoneScreen extends StatelessWidget {
  const PhoneScreen({Key? key}) : super(key: key);

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
                padding: const EdgeInsets.only(
                    top: 90, bottom: 25, left: 25, right: 20),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Align(
                        child: Text(
                          '! مرحباا اسلام   ',
                          style: TextStyle(fontSize: 20),
                        ),
                        alignment: AlignmentDirectional.topEnd),
                    const SizedBox(
                      height: 15,
                    ),
                    Align(
                        child: Text('تاكيد التسجيل بالتطبيق',
                            style: TextStyle(
                              fontSize: 21,
                              color: color,
                            )),
                        alignment: AlignmentDirectional.topEnd),
                    const SizedBox(
                      height: 80,
                    ),
                    Text(
                      'برجاء ادخال رقم الجوال لارسال كود التحقق',
                      style: TextStyle(color: Colors.black.withOpacity(0.5)),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    SizedBox(
                      height: 60,
                      child: TextFormField(
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                          hintText: "رقم الجوال",
                          hintStyle: TextStyle(
                            color: Colors.grey.withOpacity(0.7),
                          ),
                          hintTextDirection: TextDirection.rtl,
                          suffixIcon: Image.asset(
                            'assets/images/mobile.png',
                            width: 75,
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
                      height: 40,
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
                          'ارسال',
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
                            'اعاده المحاوله',
                            style: TextStyle(
                              color: color,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                        const Text('لم يتم الارسال'),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/Mask Group 3.png'),
                  alignment: AlignmentDirectional.bottomStart,
                ),
              ),
              child: Align(
                alignment: AlignmentDirectional.bottomStart,
                child: Image.asset(
                  'assets/images/vector.png',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
