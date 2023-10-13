

import 'package:bookapp/features/home/data/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
   
  Future<Either<dynamic,List<BookModel>>> fetchNewsetBooks();
  Future<Either<dynamic,List<BookModel>>> fetchFeaturedBooks();

}

