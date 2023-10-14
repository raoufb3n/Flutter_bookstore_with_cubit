import 'package:bloc/bloc.dart';
import 'package:bookapp/features/home/data/models/book_model/book_model.dart';
import 'package:bookapp/features/home/data/repos/homeRepo.dart';
import 'package:equatable/equatable.dart';

part 'featurebooks_state.dart';

class FeaturebooksCubit extends Cubit<FeaturebooksState> {
  FeaturebooksCubit(this.homeRepo) : super(FeaturebooksInitial());
  final HomeRepo homeRepo;
  Future<void> fetchFeaturedBooks() async {
    emit(FeaturebooksLoading());
    var result = await homeRepo.fetchFeaturedBooks();
    result.fold((failure) => emit(FeaturebooksFailure(failure.errMessage)),
        (books) => emit(FeaturebooksSuccess(books)));
  }
}
