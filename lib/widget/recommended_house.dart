import 'package:flutter/material.dart';
import 'package:trustify/model/house.dart';
import 'package:trustify/widget/circle_icon_button.dart';

class RecommendedHouse extends StatelessWidget {
  final recommendedList = House.generateRecommended();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      height: 340,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => Container(
                height: 340,
                width: 300,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8)),
                child: Stack(children: [
                  Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                              recommendedList[index].imageUrl,
                            ),
                            fit: BoxFit.cover)),
                  ),
                  Positioned(
                    right: 15,
                    top: 15,
                    child: CircleIconButton(
                      iconUrl: 'assets/icons/mark.svg',
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                  Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Container(
                        color: Colors.white54,
                        padding: EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(recommendedList[index].name,
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineMedium!
                                        .copyWith(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold)),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  recommendedList[index].address,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .copyWith(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                            CircleIconButton(
                                iconUrl: 'assets/icons/mark.svg',
                                color: Theme.of(context).primaryColor)
                          ],
                        ),
                      ))
                ]),
              ),
          separatorBuilder: (_, index) => SizedBox(
                width: 20,
              ),
          itemCount: recommendedList.length),
    );
  }
}
