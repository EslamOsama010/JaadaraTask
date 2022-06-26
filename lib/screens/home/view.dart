import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task/screens/home/controller.dart';
import 'package:task/screens/home/states.dart';

import '../../helper/colors.dart';

class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeController()..getServices(),
      child: BlocConsumer<HomeController, HomeStates>(
        listener: (context, state) {

        },
        builder: (context, state) {
          final controller = HomeController.get(context);
          return Scaffold(
            extendBodyBehindAppBar: true,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              actions: [
                const Center(
                  child: Text(
                    'الخدمات الرئيسية',
                    style: TextStyle(fontSize: 25),
                  ),
                ),
                const SizedBox(
                  width: 25,
                ),
                TextButton(
                  onPressed: () {},
                  child: Image.asset('assets/images/arrow.png'),
                ),
              ],
            ),
            body:
            state is HomeLoadingState ?
                 Container(  padding: const EdgeInsets.only(left: 20,right: 20,bottom: 20,top: 60),
          decoration: const BoxDecoration(
          image: DecorationImage(
          image: AssetImage('assets/images/Rectangle 1234.png'),
          fit: BoxFit.cover),
          ),child: const Center(child:  CircularProgressIndicator()))
                  :
            Container(
              padding: const EdgeInsets.only(left: 20,right: 20,bottom: 20,top: 60),
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/Rectangle 1234.png'),
                    fit: BoxFit.cover),
              ),
              child: GridView.builder(
                physics: const BouncingScrollPhysics(),
               itemCount: controller.servicesData.length,
               gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                 crossAxisSpacing: 10,
                 crossAxisCount: 2,
                 childAspectRatio: 3/2,
                 mainAxisSpacing: 10,
                 mainAxisExtent: MediaQuery.of(context).size.height*.3
               ),
                itemBuilder: (context,index){
                  return  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: colorOp.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(11),
                    ),
                    child: Column(
                      children: [
                        ClipRRect(borderRadius: BorderRadius.circular(10),child: Image.network(controller.servicesData[index].image!)),
                        const SizedBox(
                            height: 20
                        ),
                        Text(
                          controller.servicesData[index].title!,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
                  );

                },


              ),
            ),
          );
    },
      ),
    );
  }
}
