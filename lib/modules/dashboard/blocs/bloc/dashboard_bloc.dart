import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:bowl_app/modules/dashboard/blocs/bloc/dashboard_event.dart';
import 'package:bowl_app/modules/dashboard/blocs/bloc/dashboard_state.dart';
import 'package:bowl_app/modules/dashboard/models/customer_list_response_model.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DashboardBloc extends Bloc<DashboardEvent, DashboardState> {
  DashboardBloc() : super(DashboardInitial()) {
    on<DashboardCustomerFilterFetchEvent>(
        _fetchFilterCustomerEvent); // on Which event which task or function will be called
  }

  _fetchFilterCustomerEvent(DashboardCustomerFilterFetchEvent event,
      Emitter<DashboardState> emit) async {
    var ob = jsonDecode(await rootBundle.loadString(
        "asset/jsons/jsonData.json")); // String -> json // Data source
    ConstomerListResponseModel cm =
        ConstomerListResponseModel.fromJson(ob); // json -> Model Object
    List<ConstomerListResponseData> searchData = [];

    print(event.searchText);
    try {
      if (event.searchText != null) {
        for (ConstomerListResponseData cmd in cm.data!) {
          if ((cmd.accountId!
                  .trim()
                  .toLowerCase()
                  .contains(event.searchText!)) ||
              (cmd.fullname!
                  .trim()
                  .toLowerCase()
                  .contains(event.searchText!))) {
            searchData.add(cmd);
          }
        }
        if (searchData.isNotEmpty) {
          emit(DashboardCustomerLoadedState(
              customersData: searchData)); //! all data
        } else {
          emit(DashboardCustomerLoadedFailedState(
              errorMessage: "No data found"));
        }
      } else {
        // Search Text null
        emit(
            DashboardCustomerLoadedState(customersData: cm.data!)); //! all data
      }
    } catch (e) {
      emit(DashboardCustomerLoadedFailedState(errorMessage: e.toString()));
    }
  }
}
