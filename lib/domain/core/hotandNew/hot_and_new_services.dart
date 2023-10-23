import 'package:dartz/dartz.dart';
import 'package:netflix_movieapp/domain/core/failures/main_failure.dart';
import 'package:netflix_movieapp/domain/core/hotandNew/model/hot_and_new_resp.dart';


abstract class HotAndNewService {
  Future<Either<MainFailure, HotAndNewResp>> getHotAndNewMovieData();
  Future<Either<MainFailure, HotAndNewResp>> getHotAndNewTvData();
}
