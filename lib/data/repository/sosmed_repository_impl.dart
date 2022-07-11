import 'dart:io';
import 'dart:developer';
import 'package:dartz/dartz.dart';
import 'package:social_media/common/failure.dart';
import 'package:social_media/data/datasource/sosmed_remote_data_source.dart';
import 'package:social_media/domain/entities/user_preview.dart';
import 'package:social_media/domain/repositories/sosmed_repository.dart';
import '../../domain/entities/user_full.dart';

class SosmedRepositoryImpl implements SosmedRepository {

  final SosmedRemoteDataSourceImpl remoteDataSourceImpl;

  SosmedRepositoryImpl({required this.remoteDataSourceImpl});

  @override
  Future<Either<Left, UserFull>> getUserDetail(int id) {
    // TODO: implement getUserDetail
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<UserPreview>>> getUserList() async {
    final request = await remoteDataSourceImpl.getListUser();
    try{
      return Right(request.map((e) => e.toEntity()).toList());
    }on SocketException catch(e){
      return Left(Failure(message: e.toString()));
    }
  }

}