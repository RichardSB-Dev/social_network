import "package:flutter/material.dart";
import "package:flutter_svg/flutter_svg.dart";
import "package:social_network/Utils/Colors.dart";
import "package:social_network/Utils/global_variables.dart";

class WebScreenLayout extends StatefulWidget {
  const WebScreenLayout({super.key});

  @override
  State<WebScreenLayout> createState() => _WebScreenLayoutState();
}

class _WebScreenLayoutState extends State<WebScreenLayout> {
  //variables
  int _page = 0;
  late PageController pageController;

  //methods
  @override
  void initState() {
    super.initState();
    pageController = PageController();
  }

  @override
  void dispose() {
    super.dispose();
    pageController = PageController();
  }

  void onPageChanged(int page) {
    setState(() {
      _page = page;
    });
  }

  void navigationTapped(int page) {
    setState(() {
      _page = page;
    });
  }

  Widget iconButton(IconData name, int page) {
    return IconButton(
      onPressed: () => navigationTapped(page),
      icon: Icon(
        name,
        color: _page == page ? primaryColor : secondaryColor,
      ),
    );
  }

  //

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mobileBackgroundColor,
        centerTitle: false,
        title: SvgPicture.asset(
          'assets/ic_instagram.svg',
          color: primaryColor,
          height: 32,
        ),
        actions: [
          iconButton(Icons.home, 0),
          iconButton(Icons.search, 1),
          iconButton(Icons.add_a_photo, 2),
          iconButton(Icons.favorite, 3),
          iconButton(Icons.person, 4),
        ],
      ),
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: pageController,
        onPageChanged: onPageChanged,
        children: homeScreenItems,
      ),
    );
  }
}
