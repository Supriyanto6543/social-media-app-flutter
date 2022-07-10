import 'package:dartz/dartz.dart';
import 'package:social_media/domain/entities/user_preview.dart';
import 'package:social_media/domain/repositories/sosmed_repository.dart';

class GetUserList{
  final SosmedRepository repository;

  GetUserList({required this.repository});

  Future<Either<Left, List<UserPreview>>> execute(){
    return repository.getUserList();
  }
}