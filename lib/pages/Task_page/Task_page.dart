import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:managerapp/pages/Task_page/Task_page2.dart';
import 'package:managerapp/pages/Task_page/Task_page3.dart';
import 'package:managerapp/widgets/coustom_textfield.dart';

// ignore: camel_case_types
class My_Task extends StatefulWidget {
  const My_Task({super.key});

  @override
  State<My_Task> createState() => _My_TaskState();
}

// ignore: camel_case_types
class _My_TaskState extends State<My_Task> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Stack(children: [
          Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 1.8,
                width: double.infinity,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTpPVyc4LETd6GWTNZWJCuiBWoEI3w5yHZeoA&usqp=CAU'),
                        fit: BoxFit.cover)),
              ),
              

              Expanded(
                  child: Container(
                decoration: const BoxDecoration(color: Colors.white),
              )
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                width: double.infinity,
                decoration: const BoxDecoration(
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
                        children: const [
                          Text(
                            "Welcome",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 25),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Sign in to your acoount",
                            style:
                                TextStyle(color: Colors.black54, fontSize: 16),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 15, top: 8, bottom: 8, right: 15),
                      child: CoustomTextField(
                        onTextValidator: (va) {},
                        contentPadding: const EdgeInsets.all(15),
                        prefixIcon: const Icon(Icons.email_outlined, size: 25),
                        labelText: 'Email Address',
                        borderEnableColors: Colors.transparent,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 15, top: 8, bottom: 8, right: 15),
                      child: CoustomTextField(
                        onTextValidator: (va) {},
                        contentPadding: const EdgeInsets.all(15),
                        prefixIcon: const Icon(Icons.lock, size: 25),
                        labelText: 'Enter Paassword',
                        suffixIcon: const Icon(
                          Icons.visibility_outlined,
                          size: 25,
                        ),
                        borderEnableColors: Colors.transparent,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 15, top: 2, bottom: 8, right: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Switch(value: true, onChanged: (f) {}),
                              const Text("Remember Me")
                            ],
                          ),
                          const Text(
                            "Forgot password",
                            style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                                fontSize: 15),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15, right: 15),
                      child: SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                elevation: 10,
                                shadowColor:
                                    const Color.fromARGB(255, 3, 47, 80)
                                        .withOpacity(0.5),
                                padding: const EdgeInsets.all(18),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25)),
                                backgroundColor:
                                    const Color.fromARGB(255, 3, 47, 80)),
                            onPressed: () {
                              Get.to(const my_task_3());
                            },
                            child: const Text(
                              "Login",
                              style: TextStyle(fontSize: 18),
                            )),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              InkWell(
                                onTap: () {
                                  Get.to(const My_Task2());
                                },
                                child: RichText(
                                    text: const TextSpan(
                                        text: "Dont't have an account ? ",
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 16),
                                        children: [
                                      TextSpan(
                                          text: " Sign up ",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18))
                                    ])),
                              )
                            ],
                          )
                        ],
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

  String getVideoID(String url) {
    url = url.replaceAll("https://www.youtube.com/watch?v=", "");

    return url;
  }
}
