import 'dart:async';

import 'package:bowl_app/global/blocs/cubit/internet_cubit.dart';
import 'package:bowl_app/global/blocs/cubit/internet_state.dart';
import 'package:bowl_app/global/utils/utilities.dart';
import 'package:bowl_app/global/widgets/appbars.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DashboardScreen extends StatefulWidget {
  Map<String, dynamic>? arguments;
  DashboardScreen({super.key, this.arguments});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocListener<InternetCubit, InternetState>(
      bloc: InternetCubit(),
      listener: (context, state) {
        if (state == InternetState.disconnected) {
          Timer(Durations.medium4, () {
            Navigator.pushReplacementNamed(context, '/no-internet');
          });
        }
      },
      child: Scaffold(
        appBar: AppBarsWidgets.appBarVer1(titleText: "Dashboard Screen"),
        body: const Center(
          child: CircleAvatar(
            radius: 50,
            child: FlutterLogo(
              textColor: Colors.red,
            ),
          ),
        ),
      ),
    );
  }
}
