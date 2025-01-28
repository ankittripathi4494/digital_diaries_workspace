import 'dart:async';

import 'package:bowl_app/global/blocs/cubit/internet_cubit.dart';
import 'package:bowl_app/global/blocs/cubit/internet_state.dart';
import 'package:bowl_app/global/utils/images_list.dart';

import 'package:bowl_app/global/widgets/appbars.dart';
import 'package:bowl_app/global/widgets/form_widgets.dart';
import 'package:bowl_app/global/widgets/image_widget.dart';
import 'package:bowl_app/modules/pensioners/blocs/bloc/pensioner_bloc.dart';
import 'package:bowl_app/modules/pensioners/blocs/bloc/pensioner_event.dart';
import 'package:bowl_app/modules/pensioners/blocs/bloc/pensioner_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PensionerListScreen extends StatefulWidget {
  Map<String, dynamic>? arguments;
  PensionerListScreen({super.key, this.arguments});

  @override
  State<PensionerListScreen> createState() => _PensionerListScreenState();
}

class _PensionerListScreenState extends State<PensionerListScreen> {
  TextEditingController searchController = TextEditingController();

  @override
  void initState() {
    // context.read<PensionerBloc>().add(PensionerCustomerFilterFetchEvent(
    //     searchText: null)); // calling the event

    BlocProvider.of<PensionerBloc>(context)
        .add(PensionerCustomerFilterFetchEvent(searchText: null));
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
        appBar: AppBarsWidgets.appBarVer1(
            titleText: (widget.arguments!['title']) ?? 'Pensioner Screen'),
        body: Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          child: BlocBuilder<PensionerBloc, PensionerState>(
            builder: (context, state) {
              if (state is PensionerCustomerLoadedState) {
                return Column(
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
                          BlocProvider.of<PensionerBloc>(context).add(
                              PensionerCustomerFilterFetchEvent(
                                  searchText: searchController.text));
                        } else {
                          BlocProvider.of<PensionerBloc>(context).add(
                              PensionerCustomerFilterFetchEvent(
                                  searchText: null));
                        }
                      },
                    )),
                    Flexible(
                      child: ListView.builder(
                        itemCount: state.customersData.length,
                        itemBuilder: (context, index) => ListTile(
                          title: Text(state.customersData[index].fullname!),
                          subtitle: Text(state.customersData[index].accountId!),
                        ),
                      ),
                    ),
                  ],
                );
              }
              if (state is PensionerCustomerLoadedFailedState) {
                return SingleChildScrollView(
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
                            BlocProvider.of<PensionerBloc>(context).add(
                                PensionerCustomerFilterFetchEvent(
                                    searchText: searchController.text));
                          } else {
                            BlocProvider.of<PensionerBloc>(context).add(
                                PensionerCustomerFilterFetchEvent(
                                    searchText: null));
                          }
                        },
                      )),
                      Center(
                        child: ImageWidget.assetSvgWidget(
                            urlString: ImageAssetList.noDataImage,
                            fit: BoxFit.contain),
                      ),
                    ],
                  ),
                );
              }
              return Container();
            },
          ),
        ),
      ),
    );
  }
}
