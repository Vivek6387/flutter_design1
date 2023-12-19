import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:myapp/screens/card.dart';

class homepage extends StatefulWidget {
  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  // This widget is the root of your application.

  

  List dataList=[];

  Future<void> readData() async {
  try {
    final String response = await rootBundle.loadString('assets/sample.json');
    final data = json.decode(response);
    setState(() {
      dataList = data["items"];
    });
  } catch (e) {
    print("Error: $e");
  }
}

 @override
  void initState() {
    super.initState();
    readData(); //call function to restart the app to display the list
  }

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Padding(
            padding: EdgeInsets.only(left: 25, top: 7.0),
            child: Text(
              "Hi, Jessica!",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
          ),
          actions: const <Widget>[
            Padding(
                padding: EdgeInsets.only(top: 4.0),
                child: CircleAvatar(
                  radius: 60,
                  backgroundColor: Color.fromARGB(255, 203, 237, 253),
                  child: ImageIcon(
                    AssetImage("images/hacker.png"),
                    size: 28,
                  ),
                ))
          ]),
      body: SingleChildScrollView( 
       child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
              padding:
                  const EdgeInsets.only(left: 30.0, right: 30.0, top: 30.0),
              child: InkWell(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => cartpage()),
                ),
                child: const Card(
                  elevation: 0,
                  color: Color.fromARGB(255, 238, 240, 250),
                  child: SizedBox(
                    width: 400,
                    height: 105,
                    child: Padding(
                      padding: EdgeInsets.only(left: 15.0, top: 7.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Balance",
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 151, 155, 178)),
                          ),
                          Text(
                            "\$45,204.00",
                            style: TextStyle(
                              fontSize: 45,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              )),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 25.0),
                    child: SizedBox(
                      width: 110,
                      height: 190,
                      child: Stack(
                        children: <Widget>[
                          Container(
                            width: 110,
                            height: 180,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(17.0),
                              color: Color.fromARGB(195, 113, 137, 255),
                            ),
                          ),
                          Container(
                            width: 110,
                            height: 172,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12.0),
                              color: Color.fromARGB(195, 113, 137, 255),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.only(bottom: 6.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    "\$5,424.85",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color:
                                            Color.fromARGB(255, 255, 255, 255)),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  const Text(
                    "Revenue",
                    style: TextStyle(
                        fontSize: 18,
                        color: Color.fromARGB(255, 151, 155, 178)),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 52.0),
                      child: SizedBox(
                        width: 115,
                        height: 160,
                        child: Stack(
                          children: <Widget>[
                            Container(
                              width: 115,
                              height: 150,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(17.0),
                                color: Color.fromARGB(195, 7, 7, 7),
                              ),
                            ),
                            Container(
                              width: 115,
                              height: 142,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12.0),
                                color: Color.fromARGB(195, 6, 6, 6),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.only(bottom: 6.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      "\$453.55",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          color: Color.fromARGB(
                                              255, 255, 255, 255)),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    const Text(
                      "Expenses",
                      style: TextStyle(
                          fontSize: 18,
                          color: Color.fromARGB(255, 151, 155, 178)),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 114.0),
                      child: SizedBox(
                        width: 115,
                        height: 100,
                        child: Stack(
                          children: <Widget>[
                            Container(
                              width: 115,
                              height: 90,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(17.0),
                                color: Color.fromARGB(195, 249, 64, 224),
                              ),
                            ),
                            Container(
                              width: 115,
                              height: 82,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12.0),
                                color: Color.fromARGB(195, 249, 64, 224),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.only(bottom: 6.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      "\$250.45",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          color: Color.fromARGB(
                                              255, 255, 255, 255)),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    const Text(
                      "Savings",
                      style: TextStyle(
                          fontSize: 18,
                          color: Color.fromARGB(255, 151, 155, 178)),
                    ),
                  ],
                ),
              ),
            ]),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 30.0, right: 30.0, top: 30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Recent Activity",
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 151, 155, 178)),
                ),
              ],
            ),
          ),

          Container(
            height: MediaQuery.of(context).size.height,
            child: ListView.builder(
            shrinkWrap: true, 
            physics: const NeverScrollableScrollPhysics(),
            itemCount: dataList.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding:
                    const EdgeInsets.only(left: 10.0, right: 20.0, top: 10.0),
                child: ListTile(
                  leading: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50.0),
                      color: const Color.fromARGB(255, 241, 243, 251),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ImageIcon(
                        AssetImage(dataList[index]['image'].toString()),
                        color: Color.fromARGB(195, 113, 137, 255),
                        size: 40,
                      ),
                    ),
                  ),
                  title: Text(
                    dataList[index]['title'].toString(),
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  subtitle: Text(
                    dataList[index]['subtitle'].toString(),
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 151, 155, 178),
                      fontSize: 14,
                    ),
                  ),
                  trailing: Text(
                    dataList[index]['price'].toString(),
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontSize: 21,
                    ),
                  ),
                ),
              );
            },
          ),
          ),
        ],
      ),
      )
    );
  }
}
