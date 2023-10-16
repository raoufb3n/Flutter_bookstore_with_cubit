import 'package:bookapp/core/errors/errors.dart';
import 'package:bookapp/core/utils/apiService.dart';
import 'package:bookapp/features/Search/Data/repo/SearchRepo.dart';
import 'package:bookapp/features/home/data/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class SearchRepoImpl implements SearchRepo {
  final ApiService apiService;

  SearchRepoImpl(this.apiService);
  @override
  Future<Either<Failure, List<BookModel>>> fetchSearchedBooks(
      {required String prompt}) async {
    try {
      var data = await apiService.get(
          endPoint: 'volumes?q=$prompt&filter=free-ebooks');
      List<BookModel> books = [];
      for (var i in data['items']) {
        books.add(BookModel.fromJson(i));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      } else {
        return left(ServerFailure(e.toString()));
      }
    }
  }
}
