import 'package:buitify_coffee/core/error/failure.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/usecase/usecase.dart';
import '../entities/album/album.dart';
import '../repositories/album_detail_repository.dart';

class GetAlbumInfoParams {
  final String albumId;

  GetAlbumInfoParams({required this.albumId});
}

class GetAlbumInfo implements UseCase<Album, GetAlbumInfoParams> {
  final AlbumDetailRepository repository;

  GetAlbumInfo(this.repository);

  @override
  Future<Either<Failure, Album>> call(GetAlbumInfoParams params) async {
    return await repository.getAlbumInfo(params.albumId);
  }
}
