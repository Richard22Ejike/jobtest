import 'package:flutter/material.dart';
import 'package:helptheguy/common/appbar.dart';

import '../utils/utils.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {

  String dropdownvalue = 'All businesses';
  final items = [
    'All businesses',
    'businesses',
    'businesses1',
    'businesses2',
  ];

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
        appBar: DefaultAppBar(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20.0,right: 20,left: 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: const [
                        Text('BUSINESS',
                          style: TextStyle(
                              color: Colors.black45,
                              fontSize: 14,
                              fontWeight: FontWeight.w500
                          ),),
                        SizedBox(
                          height: 10,
                        ),
                        Text('All businesses',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w700
                        ),),
                      ],
                    ),
                    Container(
                      width: 150,
                      decoration: BoxDecoration(
                        color:GlobalVariables.BarColor,
                        borderRadius: BorderRadius.circular(8)
                      ),
                      child: Center(
                        child: DropdownButton(
                          focusColor: Colors.grey,
                          items:
                        items.map((String items) {
                          return DropdownMenuItem<String>(
                            value: items,
                            child: Text(items),
                          );
                        }).toList(),      onChanged: (String? newValue) {
                          setState(() {

                          });
                        }, value :  dropdownvalue,

                        icon: const Icon(Icons.keyboard_arrow_down),),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Material(
                  elevation: 2,
                  shadowColor: Colors.black,
                  child: SizedBox(
                    height: 40,
                    child: TextField(
                      decoration: InputDecoration(

                          prefixIcon: Icon(
                            Icons.search,
                            size: 18,
                            color: GlobalVariables.primaryColor,
                          ),
                          hintText: 'Search business places',
                          hintStyle: TextStyle(
                              color: Colors.black26,
                            fontSize: 12,
                          ),

                          enabledBorder: const OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.black38,
                              ))),

                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Material(
                  elevation: 2,
                  shadowColor: Colors.black,
                  child: Container(
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: GlobalVariables.BarColor,
                      borderRadius: const BorderRadius.only(topLeft:Radius.circular(5) ,topRight: Radius.circular(5))
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 15.0,left: 15),
                      child: Text('NAME'),
                    ),
                  ),
                ),
                Material(
                  elevation: 2,
                  shadowColor: Colors.black,
                  child: Container(
                    height: height * 0.582,


                    child: ListView.separated(
                        itemCount: 10,
                        shrinkWrap: true,
                        itemBuilder: (BuildContext context, int index) {
                          return ListTile(tileColor: Colors.white,
                              trailing: const Icon(Icons.arrow_forward_ios),
                              title: Text("Paragraph Ltd"),);
                        }, separatorBuilder: (BuildContext context, int index) {
                          return SizedBox(height: 4,); },),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 40,
            color: GlobalVariables.primaryColor,
            child: const Center(child: Text('+ Business place',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w500
              ),)),
          )
        ],
      ),
    );
  }
}
