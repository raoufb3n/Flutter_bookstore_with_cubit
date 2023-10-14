part of 'newest_books_cubit_cubit.dart';

sealed class NewestBooksCubitState extends Equatable {
  const NewestBooksCubitState();

  @override
  List<Object> get props => [];
}

class NewestBooksCubitInitial extends NewestBooksCubitState {}

class NewestBooksCubitLoading extends NewestBooksCubitState {}

class NewestBooksCubitFailure extends NewestBooksCubitState {
  final String errorMessage;

  NewestBooksCubitFailure(this.errorMessage);
}

class NewestBooksCubitSuccess extends NewestBooksCubitState {
  final List<BookModel> books;

  NewestBooksCubitSuccess(this.books);

}
