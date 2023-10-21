import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:managerapp/pages/Task_page/Task_pageController.dart';

import 'package:managerapp/widgets/progress_bar.dart';
import 'package:youtube/youtube.dart';
import 'package:youtube/youtube_thumbnail.dart';
import 'package:url_launcher/url_launcher.dart';

import 'task_page4.dart';

class my_task_3 extends StatefulWidget {
  const my_task_3({super.key});

  @override
  State<my_task_3> createState() => _my_task_3State();
}

class _my_task_3State extends State<my_task_3> {
  @override
  final controller = Get.put(Mycontroller());
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return GetBuilder(
        init: controller,
        builder: (con) {
          return Scaffold(
            backgroundColor: Colors.grey,
            appBar: AppBar(
              title: Text(
                "Watch Movies",
                style: TextStyle(fontSize: 25),
              ),
              automaticallyImplyLeading: false,
              backgroundColor: Color.fromARGB(255, 2, 21, 37),
            ),
            body: controller.sampleList.isEmpty
                ? ProgressBar(isLoader: true)
                : Column(
                    children: [
                      Expanded(
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          color: Colors.grey,
                          child: ListView.builder(
                              itemCount: controller.sampleList.length,
                              itemBuilder: (context, index) {
                                int firstindex = controller
                                    .sampleList[index].videoLink
                                    .toString()
                                    .indexOf('=');
                                String newString = controller
                                    .sampleList[index].videoLink
                                    .toString()
                                    .substring(
                                        firstindex + 1,
                                        controller.sampleList[index].videoLink
                                            .toString()
                                            .length);
                                return Padding(
                                  padding: EdgeInsets.all(10),
                                  child: Container(
                                    height: height / 3,
                                    margin: EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(15),
                                            bottomRight: Radius.circular(15))),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Expanded(
                                          child: InkWell(
                                            onTap: () async {
                                              Get.to(MyHomePage(),
                                                  arguments: [newString]);
                                            },
                                            child: Container(
                                              // height: 120,
                                              width: double.infinity,
                                              padding: EdgeInsets.all(0.5),
                                              child: Image.network(
                                                YoutubeThumbnail(
                                                        youtubeId: newString)
                                                    .hd(),
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 10, right: 10),
                                              child: Text(
                                                controller
                                                    .sampleList[index].movieName
                                                    .toString(),
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    height: 1.1,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 5,
                                              left: 5,
                                              right: 5,
                                              bottom: 5),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              Icon(Icons.favorite_border),
                                              SizedBox(
                                                width: 5,
                                              ),
                                              Icon(Icons.share),
                                              SizedBox(
                                                width: 5,
                                              ),
                                              Icon(Icons.download),
                                              SizedBox(
                                                width: 5,
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                );
                              }),
                        ),
                      ),
                    ],
                  ),
          );
        });
  }

  final Uri _url = Uri.parse('https://flutter.dev');
  Future<void> _launchUrl() async {
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }
}
