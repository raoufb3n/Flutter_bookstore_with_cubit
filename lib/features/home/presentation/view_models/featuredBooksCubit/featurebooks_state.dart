part of 'featurebooks_cubit.dart';

sealed class FeaturebooksState extends Equatable {
  const FeaturebooksState();

  @override
  List<Object> get props => [];
}

class FeaturebooksInitial extends FeaturebooksState {}

class FeaturebooksLoading extends FeaturebooksState {}

class FeaturebooksFailure extends FeaturebooksState {
  final String errMessage;

  FeaturebooksFailure(this.errMessage);
}

class FeaturebooksSuccess extends FeaturebooksState {
  final List<BookModel> books;

  FeaturebooksSuccess(this.books);

}
