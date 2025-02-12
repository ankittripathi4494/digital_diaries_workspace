import 'dart:convert';

import 'package:bowl_app/modules/pensioners/blocs/bloc/pensioner_event.dart';
import 'package:bowl_app/modules/pensioners/blocs/bloc/pensioner_state.dart';
import 'package:bowl_app/modules/pensioners/models/pensioner_list_response_model.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PensionerBloc extends Bloc<PensionerEvent, PensionerState> {
  PensionerBloc() : super(PensionerInitial()) {
    on<PensionerCustomerFilterFetchEvent>(
        _fetchFilterCustomerEvent); // on Which event which task or function will be called
  }

  _fetchFilterCustomerEvent(PensionerCustomerFilterFetchEvent event,
      Emitter<PensionerState> emit) async {
    var ob = jsonDecode(await rootBundle.loadString(
        "asset/jsons/pensioner_database.json")); // String -> json // Data source
    PensionerListResponseModel cm =
        PensionerListResponseModel.fromJson(ob); // json -> Model Object
    List<Pensioners> searchData = [];

    if (kDebugMode) {
      print(event.searchText);
    }
    try {
      if (event.searchText != null) {
        for (Pensioners cmd in cm.pensioners!) {
          if ((cmd.aadhaarNumber!
                  .trim()
                  .toLowerCase()
                  .contains(event.searchText!)) ||
              (cmd.panNumber!
                  .trim()
                  .toLowerCase()
                  .contains(event.searchText!))) {
            searchData.add(cmd);
          }
        }
        if (searchData.isNotEmpty) {
          emit(PensionerCustomerLoadedState(
              customersData: searchData)); //! all data
        } else {
          emit(PensionerCustomerLoadedFailedState(
              errorMessage: "No data found"));
        }
      } else {
        // Search Text null
        emit(PensionerCustomerLoadedState(
            customersData: cm.pensioners!)); //! all data
      }
    } catch (e) {
      emit(PensionerCustomerLoadedFailedState(errorMessage: e.toString()));
    }
  }
}
