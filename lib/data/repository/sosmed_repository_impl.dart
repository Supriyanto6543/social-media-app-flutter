import 'package:dartz/dartz.dart';
import 'package:social_media/domain/entities/user_preview.dart';
import 'package:social_media/domain/repositories/sosmed_repository.dart';
import '../../domain/entities/user_full.dart';

class SosmedRepositoryImpl implements SosmedRepository {

  @override
  Future<Either<Left, UserFull>> getUserDetail(int id) {
    // TODO: implement getUserDetail
    throw UnimplementedError();
  }

  @override
  Future<Either<Left, List<UserPreview>>> getUserList() {
    // TODO: implement getUserList
    throw UnimplementedError();
  }

}