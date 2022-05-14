import 'package:crypto_analysis_ep1121/crypto_analysis_p2/cryptopage1.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class CryptoAnalysisp1 extends StatelessWidget {
  const CryptoAnalysisp1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Crypto Analysis"),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    "My wallet",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 40,
                        color: Colors.black),
                  ),
                  Container(
                    padding:
                        EdgeInsets.only(left: 10, right: 10, bottom: 5, top: 5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: const Radius.circular(10.0),
                        topRight: const Radius.circular(10.0),
                        bottomRight: const Radius.circular(10.0),
                        bottomLeft: const Radius.circular(10.0),
                      ),
                      border: Border.all(color: Colors.black),
                    ),
                    child: Row(
                      children: [
                        Text(
                          "USD",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(
                          Icons.arrow_drop_down,
                          color: Colors.black,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Center(
              child: Column(
                children: [
                  Text(
                    "Total balamce",
                    style: TextStyle(color: Colors.grey, fontSize: 15),
                  ),
                  Text(
                    "\$40.569",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w900,
                        fontSize: 35),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(45.0)),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Icon(
                          Icons.arrow_downward_outlined,
                          color: Colors.green,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Send",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(45.0)),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Icon(
                          Icons.add,
                          color: Colors.green,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Purchase",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(45.0)),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Icon(
                          Icons.repeat,
                          color: Colors.green,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Receive",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Divider(
              height: 1.5,
              color: Colors.grey,
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Row(
                      children: [
                        Text(
                          "Revenue",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 20),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "This month",
                          style: TextStyle(color: Colors.grey, fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      new LinearPercentIndicator(
                        width: MediaQuery.of(context).size.width - 100,

                        lineHeight: 24.0,
                        percent: 0.8,
/*                center: Text(
                          "50.0%",
                          style: new TextStyle(fontSize: 12.0),
                        ),*/
                        // trailing: Icon(Icons.mood),
                        // trailing: Text("\$21.3k"),
                        linearStrokeCap: LinearStrokeCap.roundAll,
                        backgroundColor: Colors.green,
                        progressColor: Colors.black,
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                      Text(
                        '\$21.3k',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w900),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.arrow_drop_up,
                          color: Colors.black,
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        Text(
                          "17.75%",
                          style: TextStyle(
                              color: Colors.black54,
                              fontSize: 15,
                              fontWeight: FontWeight.w900),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "ProtFolio",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  Icon(Icons.keyboard_arrow_right),
                ],
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    InkWell(
                      child: Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Center(
                          child: Container(
                            height: 140,
                            decoration: BoxDecoration(
                                color: Color(0xff1F1F21),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Column(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Colors.green,
                                        shape: BoxShape.circle),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text('\β'),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "Bitcoin",
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.white),
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Text(
                                    "\$43.241",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w900,
                                        color: Colors.white),
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.arrow_drop_up,
                                        color: Colors.white70,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        '12.95%',
                                        style:
                                            TextStyle(color: Colors.grey[200]),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CryptoAnalysis(),
                          ),
                        );
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Center(
                        child: Container(
                          height: 140,
                          decoration: BoxDecoration(
                              color: Color(0xffF6F6F6),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      shape: BoxShape.circle),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      '\β',
                                      style: TextStyle(color: Colors.green),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Ethereum",
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.black),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  "\$43.241",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w900,
                                      color: Colors.black),
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.arrow_drop_up,
                                      color: Colors.black,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      '12.95%',
                                      style: TextStyle(color: Colors.black),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Center(
                        child: Container(
                          height: 140,
                          decoration: BoxDecoration(
                              color: Color(0xffF6F6F6),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      shape: BoxShape.circle),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      '\β',
                                      style: TextStyle(color: Colors.green),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Ethereum",
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.black),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  "\$43.241",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w900,
                                      color: Colors.black),
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.arrow_drop_up,
                                      color: Colors.black,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      '12.95%',
                                      style: TextStyle(color: Colors.black),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      child: Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Center(
                          child: Container(
                            height: 140,
                            decoration: BoxDecoration(
                                color: Color(0xff1F1F21),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Column(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Colors.green,
                                        shape: BoxShape.circle),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text('\β'),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "Bitcoin",
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.white),
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Text(
                                    "\$43.241",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w900,
                                        color: Colors.white),
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.arrow_drop_up,
                                        color: Colors.white70,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        '12.95%',
                                        style:
                                            TextStyle(color: Colors.grey[200]),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CryptoAnalysis(),
                          ),
                        );
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Center(
                        child: Container(
                          height: 140,
                          decoration: BoxDecoration(
                              color: Color(0xffF6F6F6),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      shape: BoxShape.circle),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      '\β',
                                      style: TextStyle(color: Colors.green),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Ethereum",
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.black),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  "\$43.241",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w900,
                                      color: Colors.black),
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.arrow_drop_up,
                                      color: Colors.black,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      '12.95%',
                                      style: TextStyle(color: Colors.black),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Center(
                        child: Container(
                          height: 140,
                          decoration: BoxDecoration(
                              color: Color(0xffF6F6F6),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      shape: BoxShape.circle),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      '\β',
                                      style: TextStyle(color: Colors.green),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Ethereum",
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.black),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  "\$43.241",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w900,
                                      color: Colors.black),
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.arrow_drop_up,
                                      color: Colors.black,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      '12.95%',
                                      style: TextStyle(color: Colors.black),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
