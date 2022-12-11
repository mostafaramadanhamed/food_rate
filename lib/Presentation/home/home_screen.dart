import 'package:flutter/material.dart';
import 'widgets/home_widgets.dart';


class HomePage  extends StatelessWidget {
 const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBarHome(context),
      body: ListView(padding: const EdgeInsets.symmetric(horizontal: 16),
        physics: const BouncingScrollPhysics(),
        children: [
          Column(
            children: [
             buildListViewVHome()
           ]
          ),
        ],
      ),
    );
  }






}
