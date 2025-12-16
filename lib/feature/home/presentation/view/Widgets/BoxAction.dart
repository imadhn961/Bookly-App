import 'package:booklyapp/feature/home/data/models/Book_model.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../../core/Widgets/CustomButton.dart';
import '../../../../../core/utils/launch_Url.dart';

class BoxAction extends StatelessWidget {
  const BoxAction({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: customButton(
            BakgroundColor: Colors.white,
            BorderR: BorderRadius.only(
              bottomLeft: Radius.circular(16),
              topLeft: Radius.circular(16),
            ),
            TextColor: Colors.black,
            text: 'Free',
          ),
        ),
        Expanded(
          child: customButton(
            onPressed: () {
            launUrl(context , bookModel.volumeInfo.previewLink);
            },

            BakgroundColor: Color(0xffEF8262),
            BorderR: BorderRadius.only(
              bottomRight: Radius.circular(16),
              topRight: Radius.circular(16),
            ),
            TextColor: Colors.white,
            text: AvailableLink(bookModel),
            sized: 18,
          ),
        ),
      ],
    );
  }

}
String AvailableLink(BookModel bookModel) {
  if(bookModel.volumeInfo.previewLink == null){
    return "Not Available" ;
  }else{
    return "Preview";
  }

}