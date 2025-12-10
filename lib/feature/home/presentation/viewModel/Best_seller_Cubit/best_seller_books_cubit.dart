import 'package:bloc/bloc.dart';

import '../../../data/Repo/Home_repo.dart';
import '../../../data/models/Book_model.dart';

part 'best_seller_books_state.dart';

class BestSellerBooksCubit extends Cubit<BestSellerBooksState> {
  BestSellerBooksCubit(this.homeRepo) : super(BestSellerBooksInitial());
  final HomeRepo homeRepo;
  Future<void> fetchBestSellerBooks() async {
    emit(BestSellerBooksLoading());
    var result = await homeRepo.fetchBestSellerBooks();
    result.fold(
          (failure) => emit(BestSellerBooksFailure(failure.errMessage)),
          (books) => emit(BestSellerBooksSuccess(books)),
    );
  }
}
