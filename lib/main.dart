import 'package:bowl_app/global/blocs/cubit/internet_cubit.dart';
import 'package:bowl_app/global/utils/routes_list.dart';
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
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        initialRoute: '/', // first navigator route
        onGenerateRoute: GenerateRoutePageSystem.getKnownRoutes,
      ),
    );
  }
}
