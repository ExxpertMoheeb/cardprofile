/* 
// Example Usage
Map<String, dynamic> map = jsonDecode(<myJSONString>);
var myRootNode = Root.fromJson(map);
*/ 
// class AddressRecord {
//     String? city;
//     String? country;
//     String? streetaddress;
//     String? zip;

//     AddressRecord({this.city, this.country, this.streetaddress, this.zip}); 

//     AddressRecord.fromJson(Map<String, dynamic> json) {
//         city = json['city'];
//         country = json['country'];
//         streetaddress = json['street_address'];
//         zip = json['zip'];
//     }

//     Map<String, dynamic> toJson() {
//         final Map<String, dynamic> data = Map<String, dynamic>();
//         data['city'] = city;
//         data['country'] = country;
//         data['street_address'] = streetaddress;
//         data['zip'] = zip;
//         return data;
//     }
// }

// class Root {
//     String? age;
//     String? height;
//     String? matchesFound;
//     String? missingFrom;
//     String? sex;
//     AddressRecord? addressrecord;
//     String? description;
//     String? imgPath;
//     String? name;

//     Root({this.age, this.height, this.matchesFound, this.missingFrom, this.sex, this.addressrecord, this.description, this.imgPath, this.name}); 

//     Root.fromJson(Map<String, dynamic> json) {
//         age = json['Age'];
//         height = json['Height'];
//         matchesFound = json['MatchesFound'];
//         missingFrom = json['Missing_From'];
//         sex = json['Sex'];
//         addressrecord = json['address_record'] != null ? AddressRecord?.fromJson(json['address_record']) : null;
//         description = json['description'];
//         imgPath = json['imgPath'];
//         name = json['name'];
//     }

//     Map<String, dynamic> toJson() {
//         final Map<String, dynamic> data = Map<String, dynamic>();
//         data['Age'] = age;
//         data['Height'] = height;
//         data['MatchesFound'] = matchesFound;
//         data['Missing_From'] = missingFrom;
//         data['Sex'] = sex;
//         data['address_record'] = addressrecord!.toJson();
//         data['description'] = description;
//         data['imgPath'] = imgPath;
//         data['name'] = name;
//         return data;
//     }
// }

class Details {
  String? age;
  String? height;
  String? matchesFound;
  String? missingFrom;
  String? sex;
  AddressRecord? addressRecord;
  String? description;
  String? id;
  String? imgPath;
  String? name;

  Details(
      {this.age,
      this.height,
      this.matchesFound,
      this.missingFrom,
      this.sex,
      this.addressRecord,
      this.description,
      this.id,
      this.imgPath,
      this.name});

  Details.fromJson(Map<String, dynamic> json) {
    age = json['Age'];
    height = json['Height'];
    matchesFound = json['MatchesFound'];
    missingFrom = json['Missing_From'];
    sex = json['Sex'];
    addressRecord = json['address_record'] != null
        ? new AddressRecord.fromJson(json['address_record'])
        : null;
    description = json['description'];
    id = json['id'];
    imgPath = json['imgPath'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Age'] = this.age;
    data['Height'] = this.height;
    data['MatchesFound'] = this.matchesFound;
    data['Missing_From'] = this.missingFrom;
    data['Sex'] = this.sex;
    if (this.addressRecord != null) {
      data['address_record'] = this.addressRecord!.toJson();
    }
    data['description'] = this.description;
    data['id'] = this.id;
    data['imgPath'] = this.imgPath;
    data['name'] = this.name;
    return data;
  }
}

class AddressRecord {
  String? city;
  String? country;
  String? streetAddress;
  String? zip;

  AddressRecord({this.city, this.country, this.streetAddress, this.zip});

  AddressRecord.fromJson(Map<String, dynamic> json) {
    city = json['city'];
    country = json['country'];
    streetAddress = json['street_address'];
    zip = json['zip'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['city'] = this.city;
    data['country'] = this.country;
    data['street_address'] = this.streetAddress;
    data['zip'] = this.zip;
    return data;
  }
}