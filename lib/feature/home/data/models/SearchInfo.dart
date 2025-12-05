/// textSnippet : "... <b>PROGRAMMING</b> CUTTING COSTS WITH LINEAR <b>PROGRAMMING</b> COMPUTER DESIGN TO FACILITATE LINEAR <b>PROGRAMMING</b> GESTALT <b>PROGRAMMING</b> , A NEW CONCEPT IN AUTOMATIC <b>PROGRAMMING</b> THE PROCEDURE TRANSLATOR , A SYSTEM OF AUTOMATIC <b>PROGRAMMING</b> AUTOMATIC&nbsp;..."

class SearchInfo {
  SearchInfo({
      this.textSnippet,});

  SearchInfo.fromJson(dynamic json) {
    textSnippet = json['textSnippet'];
  }
  String? textSnippet;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['textSnippet'] = textSnippet;
    return map;
  }

}