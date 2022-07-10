import 'package:equatable/equatable.dart';
import '../../data/models/model_location.dart';

class UserFull extends Equatable{
  UserFull({
    required this.id,
    required this.title,
    required this.firstName,
    required this.lastName,
    required this.picture,
    required this.gender,
    required this.email,
    required this.dateOfBirth,
    required this.phone,
    required this.location,
    required this.registerDate,
    required this.updatedDate,
  });
  late final String id;
  late final String title;
  late final String firstName;
  late final String lastName;
  late final String picture;
  late final String gender;
  late final String email;
  late final String dateOfBirth;
  late final String phone;
  late final ModelLocation location;
  late final String registerDate;
  late final String updatedDate;

  UserFull.fromJson(Map<String, dynamic> json){
    id = json['id'];
    title = json['title'];
    firstName = json['firstName'];
    lastName = json['lastName'];
    picture = json['picture'];
    gender = json['gender'];
    email = json['email'];
    dateOfBirth = json['dateOfBirth'];
    phone = json['phone'];
    location = ModelLocation.fromJson(json['location']);
    registerDate = json['registerDate'];
    updatedDate = json['updatedDate'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['title'] = title;
    _data['firstName'] = firstName;
    _data['lastName'] = lastName;
    _data['picture'] = picture;
    _data['gender'] = gender;
    _data['email'] = email;
    _data['dateOfBirth'] = dateOfBirth;
    _data['phone'] = phone;
    _data['location'] = location.toJson();
    _data['registerDate'] = registerDate;
    _data['updatedDate'] = updatedDate;
    return _data;
  }

  @override
  // TODO: implement props
  List<Object?> get props => [
    id, title, firstName, lastName,
    picture, gender, email, dateOfBirth,
    phone, location, registerDate, updatedDate];
}