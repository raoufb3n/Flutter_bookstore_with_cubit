import 'package:bookapp/core/errors/errors.dart';
import 'package:bookapp/features/home/data/models/book_model/book_model.dart';
import 'package:bookapp/features/home/data/repos/homeRepo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpl implements HomeRepo {
  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() {
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchNewsetBooks() {
    throw UnimplementedError();
  }

}
