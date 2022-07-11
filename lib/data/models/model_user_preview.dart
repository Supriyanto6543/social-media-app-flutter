import 'package:equatable/equatable.dart';
import 'package:social_media/domain/entities/user_preview.dart';

class ModelUserPreview extends Equatable{
  ModelUserPreview({
    required this.id,
    required this.title,
    required this.firstName,
    required this.lastName,
    required this.picture,
  });
  late final String id;
  late final String title;
  late final String firstName;
  late final String lastName;
  late final String picture;

  ModelUserPreview.fromJson(Map<String, dynamic> json){
    id = json['id'];
    title = json['title'];
    firstName = json['firstName'];
    lastName = json['lastName'];
    picture = json['picture'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['title'] = title;
    _data['firstName'] = firstName;
    _data['lastName'] = lastName;
    _data['picture'] = picture;
    return _data;
  }

  UserPreview toEntity() => UserPreview(
      id: id,
      title: title,
      firstName: firstName,
      lastName: lastName,
      picture: picture);

  @override
  // TODO: implement props
  List<Object?> get props => [id, title, firstName, lastName, picture];
}