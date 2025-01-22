class ConstomerListResponseModel {
  String? status;
  String? response;
  String? message;
  int? totalCount;
  String? itemCount;
  int? pageNo;
  List<ConstomerListResponseData>? data;

  ConstomerListResponseModel(
      {this.status,
      this.response,
      this.message,
      this.totalCount,
      this.itemCount,
      this.pageNo,
      this.data});

  ConstomerListResponseModel.fromJson(Map<String, dynamic> json) {
    status = json["status"];
    response = json["response"];
    message = json["message"];
    totalCount = json["totalCount"];
    itemCount = json["item_count"];
    pageNo = json["page_no"];
    data = json["data"] == null
        ? null
        : (json["data"] as List)
            .map((e) => ConstomerListResponseData.fromJson(e))
            .toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["status"] = status;
    _data["response"] = response;
    _data["message"] = message;
    _data["totalCount"] = totalCount;
    _data["item_count"] = itemCount;
    _data["page_no"] = pageNo;
    if (data != null) {
      _data["data"] = data?.map((e) => e.toJson()).toList();
    }
    return _data;
  }
}

class ConstomerListResponseData {
  String? id;
  String? parentId;
  String? accountId;
  String? fullname;
  String? companyName;
  String? parentCompany;
  String? parentName;
  String? todayActivation;
  String? currentMonthActivation;
  String? lastMonthActivation;
  String? samedayPreviousMonthActivation;

  ConstomerListResponseData(
      {this.id,
      this.parentId,
      this.accountId,
      this.fullname,
      this.companyName,
      this.parentCompany,
      this.parentName,
      this.todayActivation,
      this.currentMonthActivation,
      this.lastMonthActivation,
      this.samedayPreviousMonthActivation});

  ConstomerListResponseData.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    parentId = json["parent_id"];
    accountId = json["account_id"];
    fullname = json["fullname"];
    companyName = json["company_name"];
    parentCompany = json["parent_company"];
    parentName = json["parent_name"];
    todayActivation = json["todayActivation"];
    currentMonthActivation = json["currentMonthActivation"];
    lastMonthActivation = json["lastMonthActivation"];
    samedayPreviousMonthActivation = json["samedayPreviousMonthActivation"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["parent_id"] = parentId;
    _data["account_id"] = accountId;
    _data["fullname"] = fullname;
    _data["company_name"] = companyName;
    _data["parent_company"] = parentCompany;
    _data["parent_name"] = parentName;
    _data["todayActivation"] = todayActivation;
    _data["currentMonthActivation"] = currentMonthActivation;
    _data["lastMonthActivation"] = lastMonthActivation;
    _data["samedayPreviousMonthActivation"] = samedayPreviousMonthActivation;
    return _data;
  }
}
