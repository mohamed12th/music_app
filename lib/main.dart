import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_app/screens/play_list/play_list.dart';
import 'package:music_app/screens/song/song.dart';

import 'screens/home/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: Theme.of(context).textTheme.apply(
            bodyColor: Colors.white,
            displayColor: Colors.white,

        ),

        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen (),
      getPages: [
        GetPage(name: "/", page:() => const HomeScreen()),
        GetPage(name: "/Song", page:() => const SongScreen()),
        GetPage(name: "/PlayList", page:() => const PlayListScreen()),
      ],
    );
  }
}
