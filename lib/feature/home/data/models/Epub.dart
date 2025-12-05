/// isAvailable : false
/// downloadLink : "http://books.google.com.lb/books/download/Computer_Literature_Bibliography_1946_19.epub?id=otw9AQAAIAAJ&hl=&output=epub&source=gbs_api"

class Epub {
  Epub({
      this.isAvailable, 
      this.downloadLink,});

  Epub.fromJson(dynamic json) {
    isAvailable = json['isAvailable'];
    downloadLink = json['downloadLink'];
  }
  bool? isAvailable;
  String? downloadLink;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['isAvailable'] = isAvailable;
    map['downloadLink'] = downloadLink;
    return map;
  }

}