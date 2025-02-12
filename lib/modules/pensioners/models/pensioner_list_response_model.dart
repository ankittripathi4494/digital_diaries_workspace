// ignore_for_file: no_leading_underscores_for_local_identifiers

class PensionerListResponseModel {
  List<Pensioners>? pensioners;

  PensionerListResponseModel({this.pensioners});

  PensionerListResponseModel.fromJson(Map<String, dynamic> json) {
    pensioners = json["pensioners"] == null
        ? null
        : (json["pensioners"] as List)
            .map((e) => Pensioners.fromJson(e))
            .toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if (pensioners != null) {
      _data["pensioners"] = pensioners?.map((e) => e.toJson()).toList();
    }
    return _data;
  }
}

class Pensioners {
  String? id;
  String? registrationNo;
  String? name;
  String? gender;
  String? dateOfBirth;
  String? pensionType;
  String? retirementDate;
  String? aadhaarNumber;
  String? panNumber;
  Contact? contact;
  Address? address;
  BankDetails? bankDetails;
  int? pensionAmount;
  Nominee? nominee;

  Pensioners(
      {this.id,
      this.registrationNo,
      this.name,
      this.gender,
      this.dateOfBirth,
      this.pensionType,
      this.retirementDate,
      this.aadhaarNumber,
      this.panNumber,
      this.contact,
      this.address,
      this.bankDetails,
      this.pensionAmount,
      this.nominee});

  Pensioners.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    registrationNo = json["registration_no"];
    name = json["name"];
    gender = json["gender"];
    dateOfBirth = json["date_of_birth"];
    pensionType = json["pension_type"];
    retirementDate = json["retirement_date"];
    aadhaarNumber = json["aadhaar_number"];
    panNumber = json["pan_number"];
    contact =
        json["contact"] == null ? null : Contact.fromJson(json["contact"]);
    address =
        json["address"] == null ? null : Address.fromJson(json["address"]);
    bankDetails = json["bank_details"] == null
        ? null
        : BankDetails.fromJson(json["bank_details"]);
    pensionAmount = json["pension_amount"];
    nominee =
        json["nominee"] == null ? null : Nominee.fromJson(json["nominee"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["registration_no"] = registrationNo;
    _data["name"] = name;
    _data["gender"] = gender;
    _data["date_of_birth"] = dateOfBirth;
    _data["pension_type"] = pensionType;
    _data["retirement_date"] = retirementDate;
    _data["aadhaar_number"] = aadhaarNumber;
    _data["pan_number"] = panNumber;
    if (contact != null) {
      _data["contact"] = contact?.toJson();
    }
    if (address != null) {
      _data["address"] = address?.toJson();
    }
    if (bankDetails != null) {
      _data["bank_details"] = bankDetails?.toJson();
    }
    _data["pension_amount"] = pensionAmount;
    if (nominee != null) {
      _data["nominee"] = nominee?.toJson();
    }
    return _data;
  }
}

class Nominee {
  String? name;
  String? relationship;
  String? aadhaarNumber;
  String? contact;

  Nominee({this.name, this.relationship, this.aadhaarNumber, this.contact});

  Nominee.fromJson(Map<String, dynamic> json) {
    name = json["name"];
    relationship = json["relationship"];
    aadhaarNumber = json["aadhaar_number"];
    contact = json["contact"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["name"] = name;
    _data["relationship"] = relationship;
    _data["aadhaar_number"] = aadhaarNumber;
    _data["contact"] = contact;
    return _data;
  }
}

class BankDetails {
  String? bankName;
  String? accountNumber;
  String? ifscCode;

  BankDetails({this.bankName, this.accountNumber, this.ifscCode});

  BankDetails.fromJson(Map<String, dynamic> json) {
    bankName = json["bank_name"];
    accountNumber = json["account_number"];
    ifscCode = json["ifsc_code"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["bank_name"] = bankName;
    _data["account_number"] = accountNumber;
    _data["ifsc_code"] = ifscCode;
    return _data;
  }
}

class Address {
  String? street;
  String? city;
  String? state;
  String? pincode;

  Address({this.street, this.city, this.state, this.pincode});

  Address.fromJson(Map<String, dynamic> json) {
    street = json["street"];
    city = json["city"];
    state = json["state"];
    pincode = json["pincode"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["street"] = street;
    _data["city"] = city;
    _data["state"] = state;
    _data["pincode"] = pincode;
    return _data;
  }
}

class Contact {
  String? phone;
  String? email;

  Contact({this.phone, this.email});

  Contact.fromJson(Map<String, dynamic> json) {
    phone = json["phone"];
    email = json["email"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["phone"] = phone;
    _data["email"] = email;
    return _data;
  }
}
