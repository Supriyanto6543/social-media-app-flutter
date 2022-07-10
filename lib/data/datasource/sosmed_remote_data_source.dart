import 'dart:convert';

import 'package:social_media/common/constant.dart';
import 'package:social_media/data/models/model_user_full.dart';
import 'package:social_media/data/models/model_user_preview.dart';
import 'package:social_media/domain/entities/user_preview.dart';
import '../../domain/entities/user_full.dart';
import 'package:http/http.dart' as http;

abstract class SosmedRemoteDataSource{
  Future<List<ModelUserPreview>> getListUser();
  Future<ModelUserFull> getUserDetail(int id);
}

class SosmedRemoteDataSourceImpl implements SosmedRemoteDataSource{

  final http.Client client;

  SosmedRemoteDataSourceImpl({required this.client});

  @override
  Future<List<ModelUserPreview>> getListUser() async{
    final request = await client.get(Uri.parse(Constant.baseUrl+Constant.listUser));
    final json = jsonDecode(request.body);

    if(request.statusCode == 200){
      List data = json['data'];
      List<ModelUserPreview> up = data.map((e) => ModelUserPreview.fromJson(e)).toList();
      return up;
    }else{
      throw Exception();
    }
  }

  @override
  Future<ModelUserFull> getUserDetail(int id) async {
    final request = await client.get(Uri.parse(Constant.baseUrl+Constant.detailUser));
    final json = jsonDecode(request.body);

    if(request.statusCode == 200){
      ModelUserFull modelUserFull = ModelUserFull.fromJson(json);
      return modelUserFull;
    }else{
      throw Exception();
    }
  }

}