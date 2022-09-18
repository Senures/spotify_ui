import 'package:flutter/material.dart';
import 'package:spotify_ui/model/topMix_list_model.dart';

class TopMixList extends StatelessWidget {
  const TopMixList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Container(
          height: 208.0,
          //color: Colors.red,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: topMixList.length,
            itemBuilder: (context, index) {
              var item = topMixList[index];
              return Container(
                padding:const  EdgeInsets.only(left: 8.0, right: 8.0, top: 8.0),
                margin: const EdgeInsets.symmetric(horizontal: 8.0),
                width: 165.0,
                decoration: BoxDecoration(
                    color: const Color(0xff0e0e0f),
                    borderRadius: BorderRadius.circular(10.0)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                            // color: Colors.red,
                            ),
                        child: Stack(
                          children: [
                            Container(
                              clipBehavior: Clip.antiAlias,
                              width: 170.0,
                              height: 120,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15.0)),
                              child: Image.asset(
                                fit: BoxFit.fill,
                                item.imgUrl,
                              ),
                            ),
                            Positioned(
                              bottom: 20.0,
                              child: Container(
                                width: 7.0,
                                height: 24.0,
                                color: item.color,
                              ),
                            ),
                            Positioned(
                              bottom: 0.0,
                              child: Container(
                                width: 140.0,
                                height: 8.0,
                                decoration: BoxDecoration(
                                    color: item.color,
                                    borderRadius: const BorderRadius.only(
                                        bottomLeft: Radius.circular(25.0),
                                        bottomRight: Radius.circular(25.0))),
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 12.0,
                      ),
                      Text(
                        item.title,
                        style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 14.0),
                      ),
                      const SizedBox(
                        height: 3.0,
                      ),
                      Text(item.subTitle,
                          style: const TextStyle(
                              color: Color(0xffDADADA), fontSize: 11.0))
                    ],
                  ),
                ),
              );
            },
          )),
    );
  }
}
