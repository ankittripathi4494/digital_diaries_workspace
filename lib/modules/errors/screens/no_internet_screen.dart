import 'dart:async';

import 'package:bowl_app/global/blocs/cubit/internet_cubit.dart';
import 'package:bowl_app/global/blocs/cubit/internet_state.dart';
import 'package:bowl_app/global/utils/images_list.dart';
import 'package:bowl_app/global/utils/utilities.dart';
import 'package:bowl_app/global/widgets/appbars.dart';
import 'package:bowl_app/global/widgets/image_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

//! calls when internet is not found
// ignore: must_be_immutable
class NoInternetScreen extends StatefulWidget {
  Map<String, dynamic>? arguments;
  NoInternetScreen({super.key, required this.arguments});

  @override
  State<NoInternetScreen> createState() => _NoInternetScreenState();
}

class _NoInternetScreenState extends State<NoInternetScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocListener<InternetCubit, InternetState>(
      bloc: InternetCubit(),
      listener: (context, state) {
        if (state == InternetState.connected) {
          Timer(Durations.long3, () {
            Navigator.pushReplacementNamed(context, '/');
          });
        }
      },
      child: Scaffold(
        body: Center(
          child: ImageWidget.assetImageWidget(
              urlString: ImageAssetList.splashAssetLogo,
              widthSize: 80,
              heightSize: 80,
              backgroundColor: Colors.red),
        ),
        floatingActionButton: const SizedBox.shrink(),
        bottomNavigationBar: const SizedBox.shrink(),
        bottomSheet: SizedBox.fromSize(),
      ),
    );
  }
}
