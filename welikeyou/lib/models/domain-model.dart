class DomainModel {
  CheckSubdomain checkSubdomain;

  DomainModel({this.checkSubdomain});

  DomainModel.fromJson(Map<String, dynamic> json) {
    checkSubdomain = json['checkSubdomain'] != null
        ? new CheckSubdomain.fromJson(json['checkSubdomain'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.checkSubdomain != null) {
      data['checkSubdomain'] = this.checkSubdomain.toJson();
    }
    return data;
  }
}

class CheckSubdomain {
  String subdomain;

  CheckSubdomain({this.subdomain});

  CheckSubdomain.fromJson(Map<String, dynamic> json) {
    subdomain = json['subdomain'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['subdomain'] = this.subdomain;
    return data;
  }
}
