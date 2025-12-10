part of 'best_seller_books_cubit.dart';

abstract class BestSellerBooksState {
  const BestSellerBooksState();
}

class BestSellerBooksInitial extends BestSellerBooksState {}

class BestSellerBooksLoading extends BestSellerBooksState {}

class BestSellerBooksFailure extends BestSellerBooksState {
  final String message;

  BestSellerBooksFailure(this.message);
}

class BestSellerBooksSuccess extends BestSellerBooksState {
  final List<BookModel> books;

  BestSellerBooksSuccess(this.books);
}
