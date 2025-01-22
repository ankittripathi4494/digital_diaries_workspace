class DashboardEvent {}

class DashboardCustomerFilterFetchEvent extends DashboardEvent {
  late String? searchText;
  DashboardCustomerFilterFetchEvent({
    this.searchText,
  });
}
