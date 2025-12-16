part of 'search_cubit.dart';

abstract class SearchState{
  const SearchState();
}

final class SearchInitial extends SearchState {
  @override
  List<Object> get props => [];
}

class SearchLoading extends SearchState {}

class SearchFailure extends SearchState {
  final String message;

  SearchFailure(this.message);
}

class SearchSuccess extends SearchState {
  final List<BookModel> books;

  SearchSuccess(this.books);
}
