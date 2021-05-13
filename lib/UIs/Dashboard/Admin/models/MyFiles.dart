import 'package:estaleiro/UIs/Dashboard/Admin/constants.dart';
import 'package:flutter/material.dart';

class CloudStorageInfo {
  final String svgSrc, title, totalStorage;
  final int numOfFiels, percentage;
  final Color color;

  CloudStorageInfo(
      {required this.svgSrc,
     required this.title,
   required   this.totalStorage,
   required   this.numOfFiels,
   required   this.percentage,
    required  this.color});
}

List demoMyFiels = [
  CloudStorageInfo(
    title: "Documents",
    numOfFiels: 1328,
    svgSrc: "assets/icons/twitter.svg",
    totalStorage: "1.9GB",
    color: primaryColor,
    percentage: 35,
  ),
  CloudStorageInfo(
    title: "Google Drive",
    numOfFiels: 1328,
    svgSrc: "assets/icons/twitter.svg",
    totalStorage: "2.9GB",
    color: Color(0xFFFFA113),
    percentage: 35,
  ),
  CloudStorageInfo(
    title: "One Drive",
    numOfFiels: 1328,
    svgSrc: "assets/icons/twitter.svg",
    totalStorage: "1GB",
    color: Color(0xFFA4CDFF),
    percentage: 10,
  ),
  CloudStorageInfo(
    title: "Documents",
    numOfFiels: 5328,
    svgSrc: "assets/icons/twitter.svg",
    totalStorage: "7.3GB",
    color: Color(0xFF007EE5),
    percentage: 78,
  ),
];
