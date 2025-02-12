// ignore_for_file: must_be_immutable

import 'dart:async';

import 'package:bowl_app/global/blocs/cubit/internet_cubit.dart';
import 'package:bowl_app/global/blocs/cubit/internet_state.dart';
import 'package:bowl_app/global/utils/images_list.dart';
import 'package:bowl_app/global/widgets/image_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashScreen extends StatefulWidget {
  Map<String, dynamic>? arguments;
  SplashScreen({super.key, this.arguments});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocListener<InternetCubit, InternetState>(
      bloc: InternetCubit(),
      listener: (context, state) {
        if (state == InternetState.connected) {
          Timer(Durations.long3, () {
            Navigator.pushReplacementNamed(context, '/dashboard',
                arguments: {});
          });
        } else if (state == InternetState.disconnected) {
          Timer(Durations.medium4, () {
            Navigator.pushReplacementNamed(context, '/no-internet');
          });
        }
      },
      child: Scaffold(
        body: Stack(
          children: [
            ImageWidget.assetSvgWidget(
                urlString: ImageAssetList.splashBackground, fit: BoxFit.cover),
            Center(
              child: ImageWidget.assetImageWidget(
                  urlString: ImageAssetList.splashAssetLogo),
            ),
          ],
        ),
        floatingActionButton: Container(),
      ),
    );
  }
}
