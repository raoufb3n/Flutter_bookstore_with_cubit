import 'package:bloc/bloc.dart';
import 'package:bookapp/features/Search/Data/repo/SearchRepo.dart';
import 'package:bookapp/features/home/data/models/book_model/book_model.dart';
import 'package:equatable/equatable.dart';

part 'search_books_state.dart';

class SearchBooksCubit extends Cubit<SearchBooksState> {
  SearchBooksCubit(this.searchRepo) : super(SearchBooksInitial());
  final SearchRepo searchRepo;
    Future<void> fetchFeaturedBooks(String prompt) async {
    emit(SearchBooksLoading());
    var result = await searchRepo.fetchSearchedBooks(prompt: prompt);
    result.fold((failure) => emit(SearchBooksFailure(failure.errMessage)),
        (books) => emit(SearchBooksSuccess(books)));
  }
}
