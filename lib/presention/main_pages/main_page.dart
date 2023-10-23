import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:netflix_movieapp/core/colors/colors.dart';
import 'package:netflix_movieapp/presention/downloads_page/downloads_page.dart';
import 'package:netflix_movieapp/presention/fast_laughs_page/fast_laughs_page.dart';
import 'package:netflix_movieapp/presention/main_pages/bottom_navigation.dart';
import 'package:netflix_movieapp/presention/home_page/Screen_home.dart';
import 'package:netflix_movieapp/presention/new_and_hot_page/new_and_hot_page.dart';
import 'package:netflix_movieapp/presention/search_page/screen_search.dart';

class ScreenMain extends StatelessWidget {
  ScreenMain({super.key});

  List _pages = [
    HomeScreen(),
    ScreenNewAndHot(),
    ScreenFastLaugh(),
    ScreenSearch(),
    DownloadsPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: bgcolor,
        body: ValueListenableBuilder(
          valueListenable: indexChangeNotifier,
          builder: (context, int value, _) {
            return _pages[value];
          },
        ),
        bottomNavigationBar: BottomNavigationBarWidget(),
      ),
    );
  }
}
