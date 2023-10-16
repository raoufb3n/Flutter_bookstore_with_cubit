import 'package:bookapp/core/errors/errors.dart';
import 'package:bookapp/features/home/data/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class SearchRepo {
  Future<Either<Failure, List<BookModel>>> fetchSearchedBooks(
      {required String prompt});
}
