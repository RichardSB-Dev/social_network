import "package:flutter/material.dart";
import "package:flutter/widgets.dart";
import "package:social_network/Pages/add_post_screen.dart";
import "package:social_network/Pages/feed_screen.dart";
import "package:social_network/Pages/search_screen.dart";

const webScreenSize = 600;

List<Widget> homeScreenItems = [
  const FeedScreen(),
  const SearchScreen(),
  const AddPostScreen(),
  const Text('notifications'),
  // ProfileScreen(
  //   uid: FirebaseAuth.instance.currentUser!.uid,
  // ),
];
