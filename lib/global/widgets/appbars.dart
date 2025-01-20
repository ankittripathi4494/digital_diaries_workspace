import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppBarsWidgets {
  static AppBar appBarVer1(
      {bool implyLeading = true,
      String? titleText,
      bool centeredTitle = false,
      bool? darkTheme = false}) {
    return AppBar(
      // backgroundColor: Colors.deepOrange,
      elevation: 0,
      systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.deepOrange,
          statusBarIconBrightness:
              (darkTheme == true) ? Brightness.dark : Brightness.light),
      foregroundColor: (darkTheme == true) ? Colors.white : Colors.black,
      iconTheme: IconThemeData(
        color: (darkTheme == true) ? Colors.white : Colors.black,
      ),
      actionsIconTheme: IconThemeData(
        color: (darkTheme == true) ? Colors.white : Colors.black,
      ),
      flexibleSpace: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: (darkTheme == true)
                    ? [Colors.deepPurple, Colors.blue]
                    : [Colors.grey, Colors.white],
                begin: Alignment.bottomLeft,
                end: Alignment.topRight)),
      ),
      automaticallyImplyLeading: implyLeading,
      title: Text(
        titleText ?? '',
        style: const TextStyle(
            decoration: TextDecoration.underline,
            decorationColor: Colors.deepOrange,
            decorationStyle: TextDecorationStyle.double,
            letterSpacing: 5,
            wordSpacing: 50,
            fontSize: 20,
            backgroundColor: Colors.transparent,
            fontWeight: FontWeight.w100,
            fontStyle: FontStyle.italic),
      ),

      centerTitle: centeredTitle,
    );
  }

  static AppBar appBarVer2(
      {bool implyLeading = true, Widget? title, bool centeredTitle = false}) {
    return AppBar(
      foregroundColor: Colors.white,
      iconTheme: const IconThemeData(color: Colors.white),
      actionsIconTheme: const IconThemeData(color: Colors.white),
      flexibleSpace: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.deepPurple, Colors.blue, Colors.black38],
                begin: Alignment.bottomLeft,
                end: Alignment.topRight)),
      ),
      automaticallyImplyLeading: implyLeading,
      title: title,
      centerTitle: centeredTitle,
    );
  }

  static AppBar appBarVer3(
      {bool implyLeading = true,
      String? titleText,
      List<Widget>? actions,
      bool centeredTitle = false}) {
    return AppBar(
      foregroundColor: Colors.white,
      iconTheme: const IconThemeData(color: Colors.white),
      actionsIconTheme: const IconThemeData(color: Colors.white),
      flexibleSpace: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.deepPurple, Colors.blue, Colors.black38],
                begin: Alignment.bottomLeft,
                end: Alignment.topRight)),
      ),
      automaticallyImplyLeading: implyLeading,
      title: Text(titleText ?? ''),
      centerTitle: centeredTitle,
      actions: actions,
    );
  }

  static AppBar appBarVer4(
      {bool implyLeading = true,
      Widget? title,
      List<Widget>? actions,
      bool centeredTitle = false}) {
    return AppBar(
      foregroundColor: Colors.white,
      iconTheme: const IconThemeData(color: Colors.white),
      actionsIconTheme: const IconThemeData(color: Colors.white),
      flexibleSpace: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.deepPurple, Colors.blue, Colors.black38],
                begin: Alignment.bottomLeft,
                end: Alignment.topRight)),
      ),
      automaticallyImplyLeading: implyLeading,
      title: title,
      centerTitle: centeredTitle,
      actions: actions,
    );
  }
}
