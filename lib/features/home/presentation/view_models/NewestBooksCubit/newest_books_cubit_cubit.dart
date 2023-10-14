import 'package:bloc/bloc.dart';
import 'package:bookapp/core/errors/errors.dart';
import 'package:bookapp/features/home/data/models/book_model/book_model.dart';
import 'package:bookapp/features/home/data/repos/homeRepo.dart';
import 'package:equatable/equatable.dart';

part 'newest_books_cubit_state.dart';

class NewestBooksCubitCubit extends Cubit<NewestBooksCubitState> {
  NewestBooksCubitCubit(this.homeRepo) : super(NewestBooksCubitInitial());
  final HomeRepo homeRepo;
  Future<void> fetchNewestBooks() async {
    emit(NewestBooksCubitLoading());
    var result = await homeRepo.fetchNewsetBooks();
    result.fold(
     (failure) => emit(NewestBooksCubitFailure(failure.errMessage)),
     (books) => emit(NewestBooksCubitSuccess(books)));
  }
}
