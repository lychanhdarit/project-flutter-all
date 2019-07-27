import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: null,
        body: Container(
          child: Stack(
            children: <Widget>[
              Container(
                height: 200,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/bg.png"),
                        fit: BoxFit.cover)),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    SizedBox(height: 70),
                    Text(
                      "Good morning, Da Ric!",
                      textAlign: TextAlign.center,
                    ),
                    Text("What do you want to do today?",
                        style: TextStyle(fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center),
                    SizedBox(
                      height: 30,
                    ),
                    Material(
                      elevation: 10,
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      child: Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(),
                        child: Column(
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "Thanh toán",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("100.000 VND",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                ),
                              ],
                            ),
                            Divider(
                              height: 1,
                              indent: 1,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: <Widget>[
                                      Icon(Icons.mobile_screen_share),
                                      Text("Pay",
                                          style: TextStyle(fontSize: 10)),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: <Widget>[
                                      Icon(Icons.attach_money),
                                      Text("Request",
                                          style: TextStyle(fontSize: 10)),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: <Widget>[
                                      Icon(Icons.category),
                                      Text("TopUp",
                                          style: TextStyle(fontSize: 10)),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: <Widget>[
                                      Icon(Icons.card_membership),
                                      Text("Rewards",
                                          style: TextStyle(fontSize: 10)),
                                    ],
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 50),
                    Container(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Dịch vụ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                          textAlign: TextAlign.left,
                        )),
                    Container(
                        alignment: Alignment.topLeft,
                        child: Text("Chọn dịch vụ của bạn")),
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 120,
                      child: GridView.count(
                        crossAxisCount: 3,
                        childAspectRatio: 1.0,
                        padding: const EdgeInsets.all(5.0),
                        mainAxisSpacing: 14.0,
                        crossAxisSpacing: 14.0,
                        children: <Widget>[
                          new ServiceItem(),
                          new ServiceItem(),
                          new ServiceItem(),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 120,
                      child: Material(
                        borderRadius: BorderRadius.circular(20),
                        elevation: 10,
                        shadowColor: Colors.grey[100],
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            new PromoItem(),
                            new PromoItem(),
                            new PromoItem()
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}

class PromoItem extends StatelessWidget {
  const PromoItem({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      child: Column(
        children: <Widget>[
          Container(
            child: SizedBox(
              height: 50,
            ),
          ),
          Text("Chương trình khuyến mãi")
        ],
      ),
    );
  }
}

class ServiceItem extends StatelessWidget {
  const ServiceItem({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(15),
      child: Column(
        children: <Widget>[
          Container(
            height: 65,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/icon-car.jpg"),
                    fit: BoxFit.contain)),
          ),
          Text("Request", style: TextStyle(fontSize: 10)),
        ],
      ),
    );
  }
}
