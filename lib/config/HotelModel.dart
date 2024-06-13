class HotelModel {
  HotelModel({
      this.name, 
      this.type, 
      this.city, 
      this.address, 
      this.distance, 
      this.title, 
      this.desc, 
      this.cheapestPrice,});

  HotelModel.fromJson(dynamic json) {
    name = json['name'];
    type = json['type'];
    city = json['city'];
    address = json['address'];
    distance = json['distance'];
    title = json['title'];
    desc = json['desc'];
    cheapestPrice = json['cheapestPrice'];
  }
  String? name;
  String? type;
  String? city;
  String? address;
  String? distance;
  String? title;
  String? desc;
  String? cheapestPrice;
HotelModel copyWith({  String? name,
  String? type,
  String? city,
  String? address,
  String? distance,
  String? title,
  String? desc,
  String? cheapestPrice,
}) => HotelModel(  name: name ?? this.name,
  type: type ?? this.type,
  city: city ?? this.city,
  address: address ?? this.address,
  distance: distance ?? this.distance,
  title: title ?? this.title,
  desc: desc ?? this.desc,
  cheapestPrice: cheapestPrice ?? this.cheapestPrice,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['type'] = type;
    map['city'] = city;
    map['address'] = address;
    map['distance'] = distance;
    map['title'] = title;
    map['desc'] = desc;
    map['cheapestPrice'] = cheapestPrice;
    return map;
  }

}