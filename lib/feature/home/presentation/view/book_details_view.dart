import 'package:booklyapp/feature/home/presentation/view/Widgets/book_details_view_body.dart';
import 'package:booklyapp/feature/home/presentation/viewModel/relevnt_Box_cubit/relevant_box_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/models/Book_model.dart';

class BookDetailsView extends StatefulWidget {
  const BookDetailsView({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  State<BookDetailsView> createState() => _BookDetailsViewState();
}

class _BookDetailsViewState extends State<BookDetailsView> {
  @override
  void initState() {
    BlocProvider.of<RelevantBoxCubit>(context).RelevantBooks(
        category: widget.bookModel.volumeInfo.categories![0]);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BookDetailsViewBody(book: widget.bookModel ,),
    );
  }
}
