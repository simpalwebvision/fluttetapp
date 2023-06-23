import 'package:flutter/material.dart';

import 'components/app_drawer.dart';
import 'components/appbar.dart';
import 'components/home_view_body.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: appBar(), drawer: appDrawer(), body: const HomeViewBody()),
    );
  }
}
