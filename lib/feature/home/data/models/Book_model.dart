import 'VolumeInfo.dart';
import 'SaleInfo.dart';
import 'AccessInfo.dart';
import 'SearchInfo.dart';

/// kind : "books#volume"
/// id : "otw9AQAAIAAJ"
/// etag : "SgS2JlidBzI"
/// selfLink : "https://www.googleapis.com/books/v1/volumes/otw9AQAAIAAJ"
/// volumeInfo : {"title":"Computer Literature Bibliography: 1946-1963","authors":["W. W. Youden"],"publishedDate":"1965","industryIdentifiers":[{"type":"OTHER","identifier":"UCSC:32106012011760"}],"readingModes":{"text":false,"image":true},"pageCount":478,"printType":"BOOK","categories":["Computer science"],"maturityRating":"NOT_MATURE","allowAnonLogging":false,"contentVersion":"0.6.6.0.full.1","panelizationSummary":{"containsEpubBubbles":false,"containsImageBubbles":false},"imageLinks":{"smallThumbnail":"http://books.google.com/books/content?id=otw9AQAAIAAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api","thumbnail":"http://books.google.com/books/content?id=otw9AQAAIAAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api"},"language":"en","previewLink":"http://books.google.com.lb/books?id=otw9AQAAIAAJ&pg=PA293&dq=Proframming&hl=&cd=1&source=gbs_api","infoLink":"https://play.google.com/store/books/details?id=otw9AQAAIAAJ&source=gbs_api","canonicalVolumeLink":"https://play.google.com/store/books/details?id=otw9AQAAIAAJ"}
/// saleInfo : {"country":"LB","saleability":"FREE","isEbook":true,"buyLink":"https://play.google.com/store/books/details?id=otw9AQAAIAAJ&rdid=book-otw9AQAAIAAJ&rdot=1&source=gbs_api"}
/// accessInfo : {"country":"LB","viewability":"ALL_PAGES","embeddable":true,"publicDomain":true,"textToSpeechPermission":"ALLOWED","epub":{"isAvailable":false,"downloadLink":"http://books.google.com.lb/books/download/Computer_Literature_Bibliography_1946_19.epub?id=otw9AQAAIAAJ&hl=&output=epub&source=gbs_api"},"pdf":{"isAvailable":false},"webReaderLink":"http://play.google.com/books/reader?id=otw9AQAAIAAJ&hl=&source=gbs_api","accessViewStatus":"FULL_PUBLIC_DOMAIN","quoteSharingAllowed":false}
/// searchInfo : {"textSnippet":"... <b>PROGRAMMING</b> CUTTING COSTS WITH LINEAR <b>PROGRAMMING</b> COMPUTER DESIGN TO FACILITATE LINEAR <b>PROGRAMMING</b> GESTALT <b>PROGRAMMING</b> , A NEW CONCEPT IN AUTOMATIC <b>PROGRAMMING</b> THE PROCEDURE TRANSLATOR , A SYSTEM OF AUTOMATIC <b>PROGRAMMING</b> AUTOMATIC&nbsp;..."}

class BookModel {
  BookModel({
      this.kind, 
      this.id, 
      this.etag, 
      this.selfLink, 
      this.volumeInfo, 
      this.saleInfo, 
      this.accessInfo, 
      this.searchInfo,});

  BookModel.fromJson(dynamic json) {
    kind = json['kind'];
    id = json['id'];
    etag = json['etag'];
    selfLink = json['selfLink'];
    volumeInfo = json['volumeInfo'] != null ? VolumeInfo.fromJson(json['volumeInfo']) : null;
    saleInfo = json['saleInfo'] != null ? SaleInfo.fromJson(json['saleInfo']) : null;
    accessInfo = json['accessInfo'] != null ? AccessInfo.fromJson(json['accessInfo']) : null;
    searchInfo = json['searchInfo'] != null ? SearchInfo.fromJson(json['searchInfo']) : null;
  }
  String? kind;
  String? id;
  String? etag;
  String? selfLink;
  VolumeInfo? volumeInfo;
  SaleInfo? saleInfo;
  AccessInfo? accessInfo;
  SearchInfo? searchInfo;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['kind'] = kind;
    map['id'] = id;
    map['etag'] = etag;
    map['selfLink'] = selfLink;
    if (volumeInfo != null) {
      map['volumeInfo'] = volumeInfo?.toJson();
    }
    if (saleInfo != null) {
      map['saleInfo'] = saleInfo?.toJson();
    }
    if (accessInfo != null) {
      map['accessInfo'] = accessInfo?.toJson();
    }
    if (searchInfo != null) {
      map['searchInfo'] = searchInfo?.toJson();
    }
    return map;
  }

}