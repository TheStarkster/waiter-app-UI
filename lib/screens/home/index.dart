import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:waiter_app/main.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home>with SingleTickerProviderStateMixin {
  List<Widget> _tabScroll() => [
    Tab(
      child: Container(
        alignment: Alignment.center,
        constraints: BoxConstraints.expand(width: 100),
        child: Text(
            "Appetizer",
          style: TextStyle(
            color: Colors.black
          ),
        ),
      ),
    ),
    Tab(
      child: Container(
        alignment: Alignment.center,
        constraints: BoxConstraints.expand(width: 100),
        child: Text(
          "Drinks",
          style: TextStyle(
              color: Colors.black
          ),
        ),
      ),
    ),
    Tab(
      child: Container(
        alignment: Alignment.center,
        constraints: BoxConstraints.expand(width: 100),
        child: Text(
          "Shakes",
          style: TextStyle(
              color: Colors.black
          ),
        ),
      ),
    ),
    Tab(
      child: Container(
        alignment: Alignment.center,
        constraints: BoxConstraints.expand(width: 100),
        child: Text(
          "Main Course",
          style: TextStyle(
              color: Colors.black
          ),
        ),
      ),
    ),
    Tab(
      child: Container(
        alignment: Alignment.center,
        constraints: BoxConstraints.expand(width: 100),
        child: Text(
          "Burgers",
          style: TextStyle(
              color: Colors.black
          ),
        ),
      ),
    ),
    Tab(
      child: Container(
        alignment: Alignment.center,
        constraints: BoxConstraints.expand(width: 100),
        child: Text(
          "Pizzas",
          style: TextStyle(
              color: Colors.black
          ),
        ),
      ),
    ),
    Tab(
      child: Container(
        alignment: Alignment.center,
        constraints: BoxConstraints.expand(width: 100),
        child: Text(
          "Soups",
          style: TextStyle(
              color: Colors.black
          ),
        ),
      ),
    ),
    Tab(
      child: Container(
        alignment: Alignment.center,
        constraints: BoxConstraints.expand(width: 100),
        child: Text(
          "Dessert",
          style: TextStyle(
              color: Colors.black
          ),
        ),
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color(0xFF3366FF),
        title: Text(
          "Menu",
        ),
      ),
      body: DefaultTabController(
        length: 8,
        child: Column(
          children: <Widget>[
            Container(
              constraints: BoxConstraints.expand(height: 50),
              child: TabBar(
                  isScrollable: true, tabs: _tabScroll(),
                 indicatorColor: Color(0xFF3366FF),
              ),
            ),
            Expanded(
              child: Container(
                child: TabBarView(children: [
                  Appetizers(),
                  Container(
                    child: Text("Articles Body"),
                  ),
                  Container(
                    child: Text("User Body"),
                  ),
                  Container(
                    child: Text("User Body"),
                  ),
                  Container(
                    child: Text("User Body"),
                  ),
                  Container(
                    child: Text("User Body"),
                  ),
                  Container(
                    child: Text("User Body"),
                  ),
                  Container(
                    child: Text("User Body"),
                  ),

                ]),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class VegAppetizer extends StatefulWidget {
  @override
  _VegAppetizerState createState() => _VegAppetizerState();
}
class _VegAppetizerState extends State<VegAppetizer> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Color(0xFFd9e2ff),
          margin: EdgeInsets.all(8),
          padding: EdgeInsets.only(top: 12, bottom: 12),
          child: ListTile(
            onTap: () => ExtendedNavigator.of(context).push("/AddToOrder"),
            leading: Icon(Icons.done, color: Colors.green,),
            title: Text("Paneer Tikka", style: TextStyle(fontSize: 18),),
            subtitle: Text("Paneer cubes, onions and peppers are marinated in a creamy yogurt"),
            trailing: Text("Rs. 120", style: TextStyle(fontWeight: FontWeight.bold),),
          ),
        ),
        Container(
          color: Color(0xFFd9e2ff),
          margin: EdgeInsets.all(8),
          padding: EdgeInsets.only(top: 12, bottom: 12),
          child: ListTile(
            leading: Icon(Icons.done, color: Colors.green,),
            title: Text("Sweet Potato Tikki", style: TextStyle(fontSize: 18),),
            subtitle: Text("Boiled, mashed sweet potatoes are spiced with few Indian spices and shaped into tikki "),
            trailing: Text("Rs. 165", style: TextStyle(fontWeight: FontWeight.bold),),
          ),
        ),
        Opacity(
          opacity: 0.4,
          child: Container(
            color: Color(0xFFd9e2ff),
            margin: EdgeInsets.all(8),
            padding: EdgeInsets.only(top: 12, bottom: 12),
            child: ListTile(
              leading: Icon(Icons.close, color: Colors.red,),
              title: Text("Sabudana Tikki", style: TextStyle(fontSize: 18),),
              subtitle: Text("Crispy from the outside and soft, melt-in-your-mouth kind from the inside."),
              trailing: Text("Rs. 90", style: TextStyle(fontWeight: FontWeight.bold),),
            ),
          ),
        ),
        Container(
          color: Color(0xFFd9e2ff),
          margin: EdgeInsets.all(8),
          padding: EdgeInsets.only(top: 12, bottom: 12),
          child: ListTile(
            leading: Icon(Icons.done, color: Colors.green,),
            title: Text("Bread Roll", style: TextStyle(fontSize: 18),),
            subtitle: Text("The bread is stuffed with spiced potato-peas mixture and shaped into roll."),
            trailing: Text("Rs. 120", style: TextStyle(fontWeight: FontWeight.bold),),
          ),
        ),
        Opacity(
          opacity: 0.4,
          child: Container(
            color: Color(0xFFd9e2ff),
            margin: EdgeInsets.all(8),
            padding: EdgeInsets.only(top: 12, bottom: 12),
            child: ListTile(
              leading: Icon(Icons.close, color: Colors.red,),
              title: Text("Daal Vadda", style: TextStyle(fontSize: 18),),
              subtitle: Text("These are golden crispy from outside and soft, spongy, fluffy from inside."),
              trailing: Text("Rs. 70", style: TextStyle(fontWeight: FontWeight.bold),),
            ),
          ),
        )
      ],
    );

  }
}

class NonVegAppetizer extends StatefulWidget {
  @override
  _NonVegAppetizerState createState() => _NonVegAppetizerState();
}
class _NonVegAppetizerState extends State<NonVegAppetizer> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Opacity(
          opacity: 0.4,
          child: Container(
            color: Color(0xFFd9e2ff),
            margin: EdgeInsets.all(8),
            padding: EdgeInsets.only(top: 12, bottom: 12),
            child: ListTile(
              leading: Icon(Icons.close, color: Colors.red,),
              title: Text("Chicken Keema Sliders", style: TextStyle(fontSize: 18),),
              subtitle: Text("Chicked Keema cubes, onions and peppers are marinated in a creamy yogurt"),
              trailing: Text("Rs. 120", style: TextStyle(fontWeight: FontWeight.bold),),
            ),
          ),
        ),
        Container(
          color: Color(0xFFd9e2ff),
          margin: EdgeInsets.all(8),
          padding: EdgeInsets.only(top: 12, bottom: 12),
          child: ListTile(
            leading: Icon(Icons.done, color: Colors.green,),
            title: Text("Mutton Boti Kebab", style: TextStyle(fontSize: 18),),
            subtitle: Text("Soft Tender MEat Kebab are spiced with few Indian spices and shaped into tikki "),
            trailing: Text("Rs. 165", style: TextStyle(fontWeight: FontWeight.bold),),
          ),
        ),
        Opacity(
          opacity: 0.4,
          child: Container(
            color: Color(0xFFd9e2ff),
            margin: EdgeInsets.all(8),
            padding: EdgeInsets.only(top: 12, bottom: 12),
            child: ListTile(
              leading: Icon(Icons.close, color: Colors.red,),
              title: Text("Murg Malai Boti", style: TextStyle(fontSize: 18),),
              subtitle: Text("Crispy from the outside and soft, melt-in-your-mouth kind from the inside."),
              trailing: Text("Rs. 90", style: TextStyle(fontWeight: FontWeight.bold),),
            ),
          ),
        ),
        Container(
          color: Color(0xFFd9e2ff),
          margin: EdgeInsets.all(8),
          padding: EdgeInsets.only(top: 12, bottom: 12),
          child: ListTile(
            leading: Icon(Icons.done, color: Colors.green,),
            title: Text("Reshami Kebab", style: TextStyle(fontSize: 18),),
            subtitle: Text("Mouth Melting Malai Kebab are golden crispy from outside and soft"),
            trailing: Text("Rs. 120", style: TextStyle(fontWeight: FontWeight.bold),),
          ),
        ),
      ],
    );

  }
}

class Appetizers extends StatefulWidget {
  @override
  _AppetizersState createState() => _AppetizersState();
}
class _AppetizersState extends State<Appetizers> with SingleTickerProviderStateMixin {
  final List<Widget> myTabs = [
    Tab(child: Text("Vegetarian", style: TextStyle(color: Colors.green),),),
    Tab(child: Text("Non-Vegetarian", style: TextStyle(color: Colors.red),),),
  ];

  TabController _tabController;

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    _tabController.addListener(_handleTabSelection);
    super.initState();
  }

  _handleTabSelection() {
    if (_tabController.indexIsChanging) {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        physics: BouncingScrollPhysics(),
        children: <Widget>[
          TabBar(
            controller: _tabController,
            tabs: myTabs,
            indicator: CircleTabIndicator(color: _tabController.index == 0 ? Colors.green : Colors.red, radius: 4),
          ),
          Center(
            child: [
              VegAppetizer(),
              NonVegAppetizer()
            ][_tabController.index],
          ),
        ],
      ),
    );
  }
}

class CircleTabIndicator extends Decoration {
  final BoxPainter _painter;

  CircleTabIndicator({@required Color color, @required double radius}) : _painter = _CirclePainter(color, radius);

  @override
  BoxPainter createBoxPainter([onChanged]) => _painter;
}
class _CirclePainter extends BoxPainter {
  final Paint _paint;
  final double radius;

  _CirclePainter(Color color, this.radius)
      : _paint = Paint()
    ..color = color
    ..isAntiAlias = true;

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration cfg) {
    final Offset circleOffset = offset + Offset(cfg.size.width / 2, cfg.size.height - radius);
    canvas.drawCircle(circleOffset, radius, _paint);
  }
}