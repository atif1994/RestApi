import 'dart:convert';

import 'package:restapi/Controller/ComplexModel.dart';
import 'package:restapi/model/Post_model.dart';
import 'package:http/http.dart' as http;
import 'package:restapi/model/api_rest_api.dart';

class GetApi {
  // List<PostModel> listdata = [];
  //
  // Future<List<PostModel>> getapidata() async {
  //   final response =
  //       await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
  //   final data = jsonDecode(response.body.toString());
  //   listdata.clear();
  //   if (response.statusCode == 200) {
  //     for (Map i in data) {
  //       listdata.add(PostModel.fromJson(i));
  //     }
  //     return listdata;
  //   } else {
  //     return listdata;
  //   }
  // }

  List<PostModelList> listList = [];

  Future<List<PostModelList>> apicall() async {
    final response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/photos'));
    final data = jsonDecode(response.body.toString());

    if (response.statusCode == 200) {
      for (Map i in data) {
        print(i.toString());
        PostModelList postModelList =
            PostModelList(title: i['title'], url: i['url'], id: i['id']);
        listList.add(postModelList);
        print(listList);
      }
      return listList;
    } else {
      return listList;
    }
  }

  List<ComplexModel> complexData = [];

  Future<List<ComplexModel>> getListComplex() async {
    final response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));
    final data = jsonDecode(response.body.toString());
    print(data.toString());
    if (response.statusCode == 200) {
      for (Map i in data) {
        print(i['name']);
        complexData.add(ComplexModel.fromJson(i));
      }
      return complexData;
    } else {
      return complexData;
    }
  }
}
