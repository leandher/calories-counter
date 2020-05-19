class FoodModel {
  String _displayName;
  String _portionDefault;
  String _portionAmount;
  String _portionDisplayName;
  String _calories;

  FoodModel(
      {String displayName,
      String portionDefault,
      String portionAmount,
      String portionDisplayName,
      String calories}) {
    this._displayName = displayName;
    this._portionDefault = portionDefault;
    this._portionAmount = portionAmount;
    this._portionDisplayName = portionDisplayName;
    this._calories = calories;
  }

  String get displayName => _displayName;
  set displayName(String displayName) => _displayName = displayName;
  String get portionDefault => _portionDefault;
  set portionDefault(String portionDefault) => _portionDefault = portionDefault;
  String get portionAmount => _portionAmount;
  set portionAmount(String portionAmount) => _portionAmount = portionAmount;
  String get portionDisplayName => _portionDisplayName;
  set portionDisplayName(String portionDisplayName) =>
      _portionDisplayName = portionDisplayName;
  String get calories => _calories;
  set calories(String calories) => _calories = calories;

  FoodModel.fromJson(Map<String, dynamic> json) {
    _displayName = json['displayName'];
    _portionDefault = json['portionDefault'];
    _portionAmount = json['portionAmount'];
    _portionDisplayName = json['portionDisplayName'];
    _calories = json['calories'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['displayName'] = this._displayName;
    data['portionDefault'] = this._portionDefault;
    data['portionAmount'] = this._portionAmount;
    data['portionDisplayName'] = this._portionDisplayName;
    data['calories'] = this._calories;
    return data;
  }
}

class ResponseFood {
  int page;
  int total;
  List<FoodModel> data;

  ResponseFood({this.page, this.total, this.data});

  ResponseFood.fromJson(Map<String, dynamic> json) {
    page = json['page'];
    total = json['total'];
    if (json['data'] != null) {
      data = new List<FoodModel>();
      json['data'].forEach((v) {
        data.add(new FoodModel.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['page'] = this.page;
    data['total'] = this.total;
    if (this.data != null) {
      data['data'] = this.data.map((v) => v.toJson()).toList();
    }
    return data;
  }
}