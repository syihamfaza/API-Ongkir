import 'package:flutter/material.dart';
import 'package:get/get.dart';
import './app/data/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: "Tugas Akhir",
      debugShowCheckedModeBanner: false,
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
