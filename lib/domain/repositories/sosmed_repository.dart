import 'package:dartz/dartz.dart';
import 'package:social_media/domain/entities/user_preview.dart';
import '../entities/user_full.dart';

abstract class SosmedRepository{
  Future<Either<Left, List<UserPreview>>> getUserList();
  Future<Either<Left, UserFull>> getUserDetail(int id);
}