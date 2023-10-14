

import 'package:bookapp/core/errors/errors.dart';
import 'package:bookapp/features/home/data/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
   
  Future<Either<Failure,List<BookModel>>> fetchNewsetBooks();
  Future<Either<Failure,List<BookModel>>> fetchFeaturedBooks();

}

