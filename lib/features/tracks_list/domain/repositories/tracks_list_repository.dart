import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../entities/track/track_item.dart';

abstract class TracksListRepository {
  Future<Either<Failure, List<TrackItem>>> getTracks(
      {required String listTrackId, int offset = 0, int limit = 50});
}
