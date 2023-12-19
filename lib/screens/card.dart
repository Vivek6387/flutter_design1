import 'package:flutter/material.dart';

class cartpage extends StatefulWidget {
  @override
  State<cartpage> createState() => _cartpageState();
}

class _cartpageState extends State<cartpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Padding(
          padding: EdgeInsets.only(left: 25, top: 7.0),
          child: Text(
            "Your Card",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
        ),
      ),
      body: Column(
        children: [
          const Padding(
              padding: EdgeInsets.only(left: 30.0, right: 30.0, top: 30.0),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30)),
                ),
                elevation: 0,
                color: Color.fromRGBO(29, 41, 45, 1),
                child: SizedBox(
                  width: 400,
                  height: 255,
                  child: Padding(
                    padding:
                        EdgeInsets.only(left: 35.0, top: 30.0, right: 35.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            ImageIcon(
                              AssetImage("images/visa.png"),
                              color: Colors.white,
                              size: 45,
                            ),
                            Spacer(),
                            Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(30),
                                    topRight: Radius.circular(30),
                                    bottomLeft: Radius.circular(30),
                                    bottomRight: Radius.circular(30)),
                              ),
                              elevation: 0,
                              color: Color.fromRGBO(187, 186, 186, 0.503),
                              child: Padding(
                                padding: EdgeInsets.only(
                                    top: 6.0,
                                    bottom: 6.0,
                                    left: 15.0,
                                    right: 15.0),
                                child: Text(
                                  "Default",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w800,
                                      color:
                                          Color.fromARGB(255, 255, 255, 255)),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 50.0),
                          child: Text("5555 4842 4829 8294",
                              style: TextStyle(
                                  fontSize: 29,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 255, 255, 255))),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 15.0),
                          child: Text("Valid Thru 01/27",
                              style: TextStyle(
                                  fontSize: 19,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 255, 255, 255))),
                        ),
                      ],
                    ),
                  ),
                ),
              )),
          
          Padding(
            padding: const EdgeInsets.only(top: 18.0, left: 30.0, right: 30.0,bottom: 50.0),
            child: Container(
              width: 400,
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(17.0),
                border: Border.all(
                  width: 1.5, //                   <--- border width here
                ),
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black,
                   
                    offset: Offset(00.0, 4.0), // shadow direction: bottom right
                  )
                ],
              ),
              child: const Center(
                child: Text("Add to Apple Wallet",
                    style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 0, 0, 0))),
              ),
            ),
          ),

           const Padding(
              padding: EdgeInsets.only(left: 30.0, right: 30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Card Actions",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 151, 155, 178)),
                  ),
                  Spacer(),
                   Text(
                    "See All",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 151, 155, 178)),
                  ),
                ],
              ),
            ),


          Padding(
            padding: const EdgeInsets.only(left: 30.0, right: 30.0, top: 20.0),
            child: Container(
              width: 400,
              height: 95,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(17.0),
               
                color: const Color.fromARGB(255, 241, 243, 251),
              ),
              child: const Padding(
                padding: EdgeInsets.only(left: 18.0),
                child:  Row(
                  children: [
                    Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10),
                                    bottomLeft: Radius.circular(10),
                                    bottomRight: Radius.circular(10)),
                              ),
                              elevation: 0,
                              color: Color.fromRGBO(113, 136, 255, 1),
                              child: Padding(
                                padding: EdgeInsets.only(
                                    top: 9.0,
                                    bottom: 9.0,
                                    left: 9.0,
                                    right: 9.0),
                     child:ImageIcon(
                                AssetImage("images/lock.png"),
                                color: Colors.white,
                                size: 27,
                                
                              ),
                              ),
                    ),
                
                     Padding(
                       padding: EdgeInsets.only(left: 15.0),
                       child: Text("Lock Card",
                          style: TextStyle(
                              fontSize: 19,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 0, 0, 0))),
                     ),
                  ],
                ),
              ),
            ),
          ),


          //contact support

          Padding(
            padding: const EdgeInsets.only(left: 30.0, right: 30.0, top: 20.0),
            child: Container(
              width: 400,
              height: 95,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(17.0),
               
                color: const Color.fromARGB(255, 241, 243, 251),
              ),
              child: const Padding(
                padding: EdgeInsets.only(left: 18.0),
                child:  Row(
                  children: [
                    Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10),
                                    bottomLeft: Radius.circular(10),
                                    bottomRight: Radius.circular(10)),
                              ),
                              elevation: 0,
                              color: Color.fromARGB(195, 249, 64, 224),
                              child: Padding(
                                padding: EdgeInsets.only(
                                    top: 9.0,
                                    bottom: 9.0,
                                    left: 9.0,
                                    right: 9.0),
                     child:ImageIcon(
                                AssetImage("images/message.png"),
                                color: Colors.white,
                                size: 27,
                                
                              ),
                              ),
                    ),
                
                     Padding(
                       padding: EdgeInsets.only(left: 15.0),
                       child: Text("Contact Support",
                          style: TextStyle(
                              fontSize: 19,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 0, 0, 0))),
                     ),
                  ],
                ),
              ),
            ),
          ),


          // close button

          Padding(
            padding: const EdgeInsets.only(left: 30.0, right: 30.0, top: 20.0),
            child: Container(
              width: 400,
              height: 95,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(17.0),
               
                color: const Color.fromARGB(255, 241, 243, 251),
              ),
              child: const Padding(
                padding: EdgeInsets.only(left: 18.0),
                child:  Row(
                  children: [
                    Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10),
                                    bottomLeft: Radius.circular(10),
                                    bottomRight: Radius.circular(10)),
                              ),
                              elevation: 0,
                              color: Color.fromRGBO(29, 41, 45, 1),
                              child: Padding(
                                padding: EdgeInsets.only(
                                    top: 9.0,
                                    bottom: 9.0,
                                    left: 9.0,
                                    right: 9.0),
                     child:ImageIcon(
                                AssetImage("images/close.png"),
                                color: Colors.white,
                                size: 23,
                                
                              ),
                              ),
                    ),
                
                     Padding(
                       padding: EdgeInsets.only(left: 15.0),
                       child: Text("Close Card",
                          style: TextStyle(
                              fontSize: 19,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 0, 0, 0))),
                     ),
                  ],
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
