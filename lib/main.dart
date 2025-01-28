import 'package:bowl_app/global/blocs/cubit/internet_cubit.dart';
import 'package:bowl_app/global/utils/routes_list.dart';
import 'package:bowl_app/modules/pensioners/blocs/bloc/pensioner_bloc.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<InternetCubit>(
          create: (context) => InternetCubit(),
        ),
        BlocProvider<PensionerBloc>(
          create: (context) => PensionerBloc(),
        ),
      ],
      child: const MaterialApp(
        title: 'Flutter Demo',
        initialRoute: '/', // first navigator route
        onGenerateRoute: GenerateRoutePageSystem.getKnownRoutes,
      ),
    );
  }
}
