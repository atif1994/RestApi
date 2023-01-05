import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:restapi/Controller/api_model.dart';
import 'package:restapi/model/api_rest_api.dart';
import 'package:shimmer/shimmer.dart';

class DataList extends StatefulWidget {
  const DataList({Key? key}) : super(key: key);

  @override
  State<DataList> createState() => _DataListState();
}

class _DataListState extends State<DataList> {


  @override
  Widget build(BuildContext context) {
    GetApi getApi = GetApi();
    final s=MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("api with new Model"),
      ),
      body: Container(
      width: s.width,
      height: s.height * 1.16,


      child: Shimmer.fromColors(
        baseColor: Colors.grey,
        highlightColor: Colors.white30,
        child: Container(
          child: Row(
            crossAxisAlignment:
            CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Row(
                  children: [
                    Row(
                      crossAxisAlignment:
                      CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          color: Colors.red,
                          height: s.height*0.16,
                          width: s.width*0.3,
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets
                                  .fromLTRB(
                                  8, 0, 5, 5),
                              child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment
                                    .spaceBetween,
                                children: [
                                  Container(
                                    width: s.width*0.6,
                                    height: 8.0,
                                    color: Colors.white,
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets
                                  .fromLTRB(
                                  8, 10, 5, 10),
                              child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment
                                    .spaceBetween,
                                children: [
                                  Container(
                                    width: s.width*0.6,
                                    height: 8.0,
                                    color: Colors.white,
                                  ),
                                ],
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets
                                  .fromLTRB(
                                  8, 20, 5, 5),
                              child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment
                                    .spaceBetween,
                                children: [
                                  Container(
                                    width: s.width*0.6,
                                    height: 8.0,
                                    color: Colors.white,
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets
                                  .fromLTRB(
                                  8, 10, 5, 10),
                              child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment
                                    .spaceBetween,
                                children: [
                                  Container(
                                    width: s.width*0.6,
                                    height: 8.0,
                                    color: Colors.white,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),

                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      ),
    );
  }
}
