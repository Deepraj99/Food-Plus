import 'package:flutter/material.dart';
import 'package:food_plus/BurgerPage.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(vsync: this, length: 4);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.fromLTRB(10.0, 50.0, 10.0, 10.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.menu),
                    color: Colors.black,
                    iconSize: 30.0,
                  ),
                  Container(
                    height: 60.0,
                    width: 60.0,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.4),
                          blurRadius: 6.0,
                          spreadRadius: 4.0,
                          offset: Offset(0.0, 3.0),
                        ),
                      ],
                      color: Colors.blue[100],
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage("assets/tuxedo.png")),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 25.0),
              Container(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 185.0),
                      child: Text(
                        "Search for".toUpperCase(),
                        style: GoogleFonts.notoSans(
                            fontWeight: FontWeight.bold, fontSize: 27.0),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 240.0),
                      child: Text(
                        "Recipes".toUpperCase(),
                        style: GoogleFonts.notoSans(
                            fontWeight: FontWeight.bold, fontSize: 27.0),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30.0),
              Container(
                  padding: EdgeInsets.only(left: 5.0),
                  margin: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
                  decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(10.0)),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: 'Search',
                        hintStyle: GoogleFonts.notoSans(fontSize: 17.0),
                        border: InputBorder.none,
                        fillColor: Colors.grey.withOpacity(0.5),
                        prefixIcon: Icon(Icons.search, color: Colors.grey)),
                  )),
              SizedBox(height: 30.0),
              Container(
                margin: EdgeInsets.only(
                  right: 220.0,
                ),
                child: Text(
                  'Recommended',
                  style: GoogleFonts.notoSans(
                      fontWeight: FontWeight.w500, fontSize: 18.0),
                ),
              ),
              SizedBox(height: 20.0),
              Container(
                height: 200.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    _buildListItem('Hamburg', 'assets/burger.png', '21',
                        Color(0xFFFFE9C6), Color(0xFFDA9551)),
                    _buildListItem('Chips', 'assets/fries.png', '15',
                        Color(0xFFC2E3FE), Color(0xFF6A8CAA)),
                    _buildListItem('Donuts', 'assets/doughnut.png', '15',
                        Color(0xFFD7FADA), Color(0xFF56CC7E)),
                    _buildListItem('Donuts', 'assets/doughnut.png', '15',
                        Color(0xFFD7FADA), Color(0xFF56CC7E)),
                  ],
                ),
              ),
              SizedBox(height: 10.0),
              TabBar(
                  controller: tabController,
                  isScrollable: true,
                  indicatorColor: Colors.transparent,
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.grey.withOpacity(0.5),
                  labelStyle: GoogleFonts.notoSans(
                      fontSize: 16.0, fontWeight: FontWeight.w700),
                  unselectedLabelStyle: GoogleFonts.notoSans(
                      fontSize: 12.0, fontWeight: FontWeight.w500),
                  tabs: [
                    Tab(child: Text('FEATURED')),
                    Tab(child: Text('COMBO')),
                    Tab(child: Text('FAVORITES')),
                    Tab(child: Text('RECOMMENDED')),
                  ]),
              Container(
                  height: MediaQuery.of(context).size.height - 450.0,
                  child: TabBarView(controller: tabController, children: [
                    // FoodTab(),
                    // FoodTab(),
                    // FoodTab(),
                    // FoodTab(),
                    Text("h"),
                    Text("h"),
                    Text("h"),
                    Text("h"),
                  ]))
            ],
          ),
        ),
      ),
    );
  }

  _buildListItem(String foodName, String imgPath, String price, Color bgColor,
      Color textColor) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          height: 175.0,
          width: 150.0,
          decoration: BoxDecoration(
            color: bgColor,
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Column(
            children: [
              SizedBox(height: 20.0),
              Container(
                height: 80.0,
                width: 80.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
                child: Center(
                  child: Image.asset(imgPath, height: 50.0, width: 50.0),
                ),
              ),
              SizedBox(height: 25.0),
              Center(
                child: Text(
                  foodName,
                  style: GoogleFonts.notoSans(
                    fontSize: 17.0,
                    color: textColor,
                  ),
                ),
              ),
              SizedBox(height: 10.0),
              Center(
                child: Text(
                  "\$" + price,
                  style: GoogleFonts.notoSans(
                    fontSize: 17.0,
                    color: textColor,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
