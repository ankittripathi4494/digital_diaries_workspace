class PensionerEvent {}

class PensionerCustomerFilterFetchEvent extends PensionerEvent {
  late String? searchText;
  PensionerCustomerFilterFetchEvent({
    this.searchText,
  });
}
