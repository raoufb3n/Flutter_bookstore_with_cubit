import 'package:bloc/bloc.dart';
import 'package:bookapp/features/home/data/models/book_model/book_model.dart';
import 'package:equatable/equatable.dart';

part 'newest_books_cubit_state.dart';

class NewestBooksCubitCubit extends Cubit<NewestBooksCubitState> {
  NewestBooksCubitCubit() : super(NewestBooksCubitInitial());
}
