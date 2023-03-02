class AllBranchs {
  bool? status;
  String? errNum;
  String? msg;
  List<Branches>? branches;

  AllBranchs({this.status, this.errNum, this.msg, this.branches});

  AllBranchs.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    errNum = json['errNum'];
    msg = json['msg'];
    if (json['branches'] != null) {
      branches = <Branches>[];
      json['branches'].forEach((v) {
        branches!.add(new Branches.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['errNum'] = this.errNum;
    data['msg'] = this.msg;
    if (this.branches != null) {
      data['branches'] = this.branches!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Branches {
  int? id;
  int? countryId;
  int? assetId;
  String? name;
  String? phone;
  String? address;
  String? longitude;
  String? latitude;
  int? cost;
  int? rent;
  String? classification;
  int? isActive;
  String? createdAt;
  String? updatedAt;

  Branches(
      {this.id,
        this.countryId,
        this.assetId,
        this.name,
        this.phone,
        this.address,
        this.longitude,
        this.latitude,
        this.cost,
        this.rent,
        this.classification,
        this.isActive,
        this.createdAt,
        this.updatedAt});

  Branches.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    countryId = json['country_id'];
    assetId = json['asset_id'];
    name = json['name'];
    phone = json['phone'];
    address = json['address'];
    longitude = json['longitude'];
    latitude = json['latitude'];
    cost = json['cost'];
    rent = json['rent'];
    classification = json['classification'];
    isActive = json['is_active'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['country_id'] = this.countryId;
    data['asset_id'] = this.assetId;
    data['name'] = this.name;
    data['phone'] = this.phone;
    data['address'] = this.address;
    data['longitude'] = this.longitude;
    data['latitude'] = this.latitude;
    data['cost'] = this.cost;
    data['rent'] = this.rent;
    data['classification'] = this.classification;
    data['is_active'] = this.isActive;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}
