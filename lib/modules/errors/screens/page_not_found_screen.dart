import 'package:bowl_app/global/widgets/appbars.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class PageNotFoundScreen extends StatefulWidget {
  Map<String, dynamic>? arguments;
  PageNotFoundScreen({super.key, required this.arguments});

  @override
  State<PageNotFoundScreen> createState() => _PageNotFoundScreenState();
}

class _PageNotFoundScreenState extends State<PageNotFoundScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: widget.arguments!.containsKey('title')
          ? AppBarsWidgets.appBarVer2(
              title: Text(widget.arguments!['title']),
            )
          : null,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              widget.arguments!.containsKey('title') ? Icons.face : Icons.error,
              size: 100,
            ),
            Text(widget.arguments!.containsKey('title')
                ? widget.arguments!['title']
                : ''),
          ],
        ),
      ),
      floatingActionButton: const SizedBox.shrink(),
      bottomNavigationBar: const SizedBox.shrink(),
      bottomSheet: SizedBox.fromSize(),
    );
  }
}
