import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    //return type of build is widget
    return Scaffold(
      //it is a widget that has many features
      // Appbar, Drawer, floating action button, bottom navigation bar, snack bar
      appBar: appBar(), //extract method with name appBar
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(
              top: 40,
              left: 20,
              right: 20,
            ),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    color: const Color(0xff1D1617).withOpacity(0.11),
                    blurRadius: 40,
                    spreadRadius: 0.0)
              ],
            ),
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,

                contentPadding:
                    const EdgeInsets.all(15), //reduce the field a little
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(12),
                  child: SvgPicture.asset("assets/icons/Search.svg"),
                ),
                suffixIcon: IntrinsicHeight(
                  // to use Row we have to wrap it in intrinsic height
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const VerticalDivider(
                        color: Colors.black,
                        indent: 10,
                        endIndent: 10,
                        thickness: 0.1,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12),
                        child: SvgPicture.asset("assets/icons/Filter.svg"),
                      ),
                    ],
                  ),
                ),

                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  AppBar appBar() {
    return AppBar(
      title: const Text(
        'Breakfast',
        style: TextStyle(
          color: Colors.black,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
      backgroundColor: Colors.white,
      elevation: 0,
      centerTitle: true,
      leading: Container(
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: const Color(0xffF7F8F8),
            borderRadius: BorderRadius.circular(10)),
        child: SvgPicture.asset('assets/icons/Arrow - Left 2.svg'),
      ),
    );
  }
}
