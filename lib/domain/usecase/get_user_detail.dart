import 'package:dartz/dartz.dart';
import 'package:social_media/data/models/model_user_full.dart';
import 'package:social_media/domain/repositories/sosmed_repository.dart';

import '../entities/user_full.dart';

class GetUserDetail{
  final SosmedRepository repository;

  GetUserDetail({required this.repository});

  Future<Either<Left, UserFull>> execute(int id){
    return repository.getUserDetail(id);
  }
}