import 'dart:async';

import 'package:bowl_app/global/blocs/cubit/internet_cubit.dart';
import 'package:bowl_app/global/blocs/cubit/internet_state.dart';
import 'package:bowl_app/global/utils/utilities.dart';
import 'package:bowl_app/global/widgets/appbars.dart';
import 'package:bowl_app/global/widgets/form_widgets.dart';
import 'package:bowl_app/modules/dashboard/blocs/bloc/dashboard_bloc.dart';
import 'package:bowl_app/modules/dashboard/blocs/bloc/dashboard_event.dart';
import 'package:bowl_app/modules/dashboard/blocs/bloc/dashboard_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DashboardScreen extends StatefulWidget {
  Map<String, dynamic>? arguments;
  DashboardScreen({super.key, this.arguments});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  TextEditingController searchController = TextEditingController();

  @override
  void initState() {
    // context.read<DashboardBloc>().add(DashboardCustomerFilterFetchEvent(
    //     searchText: null)); // calling the event

    BlocProvider.of<DashboardBloc>(context)
        .add(DashboardCustomerFilterFetchEvent(searchText: null));
    super.initState();
  }

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
        body: Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              Form(
                  child: FormWidgets.getTextFormField(
                controller: searchController,
                formEnabled: true,
                hintText: "Enter Number here..",
                labelText: "Search Content",
                prefixIcon: const Icon(Icons.search),
                onChanged: (value) {
                  if (searchController.text.isNotEmpty) {
                    BlocProvider.of<DashboardBloc>(context).add(
                        DashboardCustomerFilterFetchEvent(
                            searchText: searchController.text));
                  } else {
                    BlocProvider.of<DashboardBloc>(context).add(
                        DashboardCustomerFilterFetchEvent(searchText: null));
                  }
                },
              )),
              BlocBuilder<DashboardBloc, DashboardState>(
                builder: (context, state) {
                  if (state is DashboardCustomerLoadedState) {
                    return Flexible(
                      child: ListView.builder(
                        itemCount: state.customersData.length,
                        itemBuilder: (context, index) => ListTile(
                          title: Text(state.customersData[index].fullname!),
                          subtitle: Text(state.customersData[index].accountId!),
                        ),
                      ),
                    );
                  }
                  if (state is DashboardCustomerLoadedFailedState) {
                    return Center(
                      child: Text("No data found"),
                    );
                  }
                  return Container();
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
