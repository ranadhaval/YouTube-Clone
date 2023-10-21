import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:managerapp/pages/Task_page/Task_page3.dart';

import '../../widgets/coustom_textfield.dart';

class My_Task2 extends StatefulWidget {
  const My_Task2({super.key});

  @override
  State<My_Task2> createState() => _My_Task2State();
}

class _My_Task2State extends State<My_Task2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Stack(children: [
          Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 1.8,
                width: double.infinity,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTpPVyc4LETd6GWTNZWJCuiBWoEI3w5yHZeoA&usqp=CAU'),
                        fit: BoxFit.cover)),
              ),
              Expanded(
                  child: Container(
                decoration: BoxDecoration(color: Colors.white),
              ))
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                    )),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 15, top: 20, bottom: 8, right: 15),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Create account",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 25),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Quickly create account",
                            style:
                                TextStyle(color: Colors.black54, fontSize: 16),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: 15, top: 8, bottom: 8, right: 15),
                      child: CoustomTextField(
                        onTextValidator: (va) {},
                        contentPadding: EdgeInsets.all(15),
                        prefixIcon: Icon(Icons.email_outlined, size: 25),
                        labelText: 'Email Address',
                        borderEnableColors: Colors.transparent,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 15, top: 8, bottom: 8, right: 15),
                      child: CoustomTextField(
                        onTextValidator: (va) {},
                        contentPadding: EdgeInsets.all(15),
                        prefixIcon: Icon(Icons.call, size: 25),
                        labelText: 'Enter Password',
                        borderEnableColors: Colors.transparent,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 15, top: 8, bottom: 8, right: 15),
                      child: CoustomTextField(
                        onTextValidator: (va) {},
                        contentPadding: EdgeInsets.all(15),
                        prefixIcon: Icon(Icons.lock, size: 25),
                        labelText: 'Phone Number',
                        suffixIcon: Icon(
                          Icons.visibility_outlined,
                          size: 25,
                        ),
                        borderEnableColors: Colors.transparent,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15, right: 15),
                      child: SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                elevation: 10,
                                shadowColor: Color.fromARGB(255, 3, 47, 80)
                                    .withOpacity(0.5),
                                padding: EdgeInsets.all(18),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25)),
                                backgroundColor:
                                    Color.fromARGB(255, 3, 47, 80)),
                            onPressed: () {
                              Get.to(my_task_3());
                            },
                            child: Text(
                              "Sign up",
                              style: TextStyle(fontSize: 18),
                            )),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    InkWell(
                      onTap: () {
                        Get.back();
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                RichText(
                                    text: TextSpan(
                                        text: "You have an account ? ",
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 16),
                                        children: [
                                      TextSpan(
                                          text: " Login ",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18))
                                    ]))
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          )
        ]),
      ),
    );
  }
}
