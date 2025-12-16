import 'package:booklyapp/feature/home/data/models/Book_model.dart';

abstract class RelevantBoxState {}

class RelevantBoxInitial extends RelevantBoxState {}

class RelevantBoxFailure extends RelevantBoxState {
  final String errMessage;

  RelevantBoxFailure(this.errMessage);
}

class RelevantBoxSuccess extends RelevantBoxState {
  final List<BookModel> books;

  RelevantBoxSuccess(this.books);
}

class RelevantBoxLoading extends RelevantBoxState {}
