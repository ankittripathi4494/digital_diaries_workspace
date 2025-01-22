import 'package:bowl_app/modules/dashboard/models/customer_list_response_model.dart';

class DashboardState {}

final class DashboardInitial extends DashboardState {}

class DashboardCustomerLoadingState extends DashboardState {}

class DashboardCustomerLoadedState extends DashboardState {
  late List<ConstomerListResponseData> customersData;
  DashboardCustomerLoadedState({
    required this.customersData,
  });
}

class DashboardCustomerLoadedFailedState extends DashboardState {
  late String? errorMessage;
  DashboardCustomerLoadedFailedState({
    this.errorMessage,
  });
}
