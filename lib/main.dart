import 'package:bowl_app/global/blocs/cubit/internet_cubit.dart';
import 'package:bowl_app/global/utils/routes_list.dart';
import 'package:bowl_app/modules/dashboard/blocs/bloc/dashboard_bloc.dart';
import 'package:bowl_app/modules/splash/screens/splash_screen.dart';
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
        BlocProvider<DashboardBloc>(
          create: (context) => DashboardBloc(),
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
