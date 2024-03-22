import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:trustify/model/house.dart';

class DetailAppBar extends StatelessWidget {
  final House house;
  const DetailAppBar({Key? key, required this.house}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      child: Stack(
        children: [
          Image.asset(
            house.imageUrl,
            fit: BoxFit.cover,
            height: double.infinity,
          ),
          SafeArea(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 20,
                width: 20,
                padding: EdgeInsets.all(5),
                decoration:
                    BoxDecoration(color: Colors.grey, shape: BoxShape.circle),
                child: SvgPicture.asset('assets/icons/arrow.svg'),
              ),
              Container(
                height: 20,
                width: 20,
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    shape: BoxShape.circle),
                child: SvgPicture.asset('assets/icons/mark.svg'),
              )
            ],
          ))
        ],
      ),
    );
  }
}
