import 'package:bowl_app/modules/pensioners/models/pensioner_list_response_model.dart';

class PensionerState {}

final class PensionerInitial extends PensionerState {}

class PensionerCustomerLoadingState extends PensionerState {}

class PensionerCustomerLoadedState extends PensionerState {
  late List<Pensioners> customersData;
  PensionerCustomerLoadedState({
    required this.customersData,
  });
}

class PensionerCustomerLoadedFailedState extends PensionerState {
  late String? errorMessage;
  PensionerCustomerLoadedFailedState({
    this.errorMessage,
  });
}
