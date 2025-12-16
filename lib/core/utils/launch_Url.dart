import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> launUrl(context , String? Url) async {
  if(Url != null){
    Uri url = Uri.parse(Url);
    if (!await canLaunchUrl(url)) {
      throw Exception('Could not launch $url');
    }else{
      await launchUrl(url);
    }
  }else{
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('The Link Not Available')));
  }

}