import 'package:bloc/bloc.dart';
import 'package:booklyapp/feature/home/presentation/viewModel/relevnt_Box_cubit/relevant_box_state.dart';

import '../../../data/Repo/Home_repo.dart';


class RelevantBoxCubit extends Cubit<RelevantBoxState> {
  RelevantBoxCubit(this.homeRepo) : super(RelevantBoxInitial());
  final HomeRepo homeRepo;

  Future<void> RelevantBooks({required String category}) async {
    emit(RelevantBoxLoading());
    var result = await homeRepo.FetchReleventBook(categorie: category);
    result.fold((failure) {
      emit(RelevantBoxFailure(failure.errMessage));
    }, (books) {
      emit(RelevantBoxSuccess(books));
    });
  }
}
