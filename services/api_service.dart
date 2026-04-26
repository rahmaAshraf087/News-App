/*https:// => protocol
newsapi.org => domain
/v2/everything? => path
q=apple => query parameters search
&
from=2026-04-24
&
to=2026-04-24
&
sortBy=popularity
&
apiKey=7a6bf12e87164f35b432f0c4779ece31
*/

import 'dart:convert';


import 'package:http/http.dart' as http;

import '../models/model.dart';


class ApiService{
  Future<ArticlesList>getArticles()async{
    Uri url = Uri.https(
      "newsapi.org",//authority
      "/v2/everything",
      {
        "q":"apple",
        "from":"2026-04-24",
        "to":"2026-04-24",
        "sortBy":"popularity",
        "apiKey":"7a6bf12e87164f35b432f0c4779ece31",
      }
    );
    var response = await http.get(url);
    String  responseBody =response.body;
    var json = jsonDecode(responseBody);
    return ArticlesList.fromJson(json);


  }

}















