import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:restapi/Controller/ComplexModel.dart';
import 'package:restapi/Controller/api_model.dart';

class ApiComplex extends StatefulWidget {
  const ApiComplex({Key? key}) : super(key: key);

  @override
  State<ApiComplex> createState() => _ApiComplexState();
}

class _ApiComplexState extends State<ApiComplex> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    GetApi getApi = GetApi();
    return Scaffold(
      appBar: AppBar(
        title: Text("Complex Api"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            FutureBuilder(
                future: getApi.getListComplex(),
                builder: (context, AsyncSnapshot<List<ComplexModel>> snapshot) {
                  return ListView.builder(
                      shrinkWrap: true,
                      physics: PageScrollPhysics(),
                      itemCount: getApi.complexData.length,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                      snapshot.data![index].name.toString()),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("Company name " +
                                      snapshot.data![index].company!.catchPhrase
                                          .toString()),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "Company address: " +
                                        snapshot.data![index].address!.city
                                            .toString(),
                                    style: TextStyle(color: Colors.cyan),
                                  ),
                                ),



                              ],
                            )
                          ],
                        );
                      });
                })
          ],
        ),
      ),
    );
  }
}
