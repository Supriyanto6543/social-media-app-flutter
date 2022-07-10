import 'package:equatable/equatable.dart';

class ModelLocation extends Equatable{
  ModelLocation({
    required this.street,
    required this.city,
    required this.state,
    required this.country,
    required this.timezone,
  });
  late final String street;
  late final String city;
  late final String state;
  late final String country;
  late final String timezone;

  ModelLocation.fromJson(Map<String, dynamic> json){
    street = json['street'];
    city = json['city'];
    state = json['state'];
    country = json['country'];
    timezone = json['timezone'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['street'] = street;
    _data['city'] = city;
    _data['state'] = state;
    _data['country'] = country;
    _data['timezone'] = timezone;
    return _data;
  }

  @override
  // TODO: implement props
  List<Object?> get props => [street, city, state, country, timezone];
}