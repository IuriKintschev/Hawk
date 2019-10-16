import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hawk/pages/relatorio/relatorio.dart';

class HomeUI extends StatefulWidget {
  @override
  _HomeUIState createState() => _HomeUIState();
}

class _HomeUIState extends State<HomeUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            onPressed: () => print("data"),
            icon: Icon(
              Icons.format_align_center,
            ),
          ),
        ],
        elevation: 0.0,
        title: Row(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 10),
              child: Image(
                image: AssetImage('assets/images/icon.png'),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              padding: EdgeInsets.only(top: 5),
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: Colors.black,
                    width: 1,
                  ),
                ),
              ),
              child: Text(
                'HAWK',
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Orbitron',
                  letterSpacing: 2,
                ),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            CupertinoPageRoute(
              builder: (context) => RelatorioUI(),
            ),
          );
        },
        backgroundColor: Theme.of(context).primaryColor,
        child: Icon(Icons.filter_list),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: <Widget>[
            Column(
              children: <Widget>[
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Container(
                      child: texto(
                        'Nº - 0',
                        Colors.black,
                        'Ubuntu',
                        60,
                        FontWeight.normal,
                      ),
                    ),
                    Container(
                      child: texto(
                        'GADOS',
                        Colors.black,
                        'Ubuntu',
                        20,
                        FontWeight.normal,
                      ),
                    ),
                    // SizedBox(width: 0),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        width: 110,
                        height: 3,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [
                              Color(0xff836FFF),
                              Color(0xff6A5ACD),
                              Color(0xff1E90FF),
                              Color(0xff00BFFF),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          width: 110,
                          height: 3,
                          color: Colors.black12,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.access_time,
                      color: Colors.black,
                    ),
                    SizedBox(width: 10),
                    texto(
                      '15/10/2019',
                      Colors.black,
                      'Ubuntu',
                      20,
                      FontWeight.normal,
                    ),
                  ],
                ),
                Container(
                  width: 30,
                  height: 1,
                  color: Colors.black,
                ),
                texto(
                  '12h00',
                  Colors.black,
                  'Ubuntu',
                  20,
                  FontWeight.normal,
                ),
              ],
            ),
            SizedBox(height: 30),
            Container(
              width: double.infinity,
              height: 80,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [
                    Theme.of(context).primaryColor,
                    Color(0xff00BFFF),
                  ],
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              child: FlatButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        CircleAvatar(
                          backgroundColor: Color.fromRGBO(4, 211, 97, 1),
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(width: 10),
                        texto(
                          'Adicionar',
                          Colors.white,
                          'Ubuntu',
                          20,
                          FontWeight.bold,
                        )
                      ],
                    ),
                    Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                      size: 40,
                    ),
                  ],
                ),
              ),
            ),
            Divider(),
            Expanded(
              child: ListView(
                children: <Widget>[
                  tileGado(),
                  tileGado(),
                  tileGado(),
                  tileGado(),
                  tileGado(),
                  tileGado(),
                  tileGado(),
                  tileGado(),
                  tileGado(),
                  tileGado(),
                  tileGado(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget texto(String texto, Color cor, String familia, double size,
      FontWeight fontWeight) {
    return Text(
      texto,
      style: TextStyle(
        color: cor,
        fontFamily: familia,
        fontSize: size,
        fontWeight: fontWeight,
      ),
    );
  }

  Widget tileGado() {
    return Dismissible(
      key: Key(DateTime.now().millisecondsSinceEpoch.toString()),
      background: Container(
        color: Colors.red,
        child: Align(
          alignment: Alignment(-0.9, 0.0),
          child: Icon(
            Icons.delete_sweep,
            size: 40.0,
            color: Colors.white,
          ),
        ),
      ),
      direction: DismissDirection.startToEnd,
      child: ListTile(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            texto("Nº 15", Colors.black, "Ubuntu", 20, FontWeight.normal),
            texto("F", Colors.black, "Ubuntu", 20, FontWeight.bold),
            texto("b152", Colors.black, "Ubuntu", 20, FontWeight.normal),
          ],
        ),
        trailing: IconButton(
          onPressed: () {},
          icon: Icon(Icons.map),
        ),
      ),
    );
  }
}
