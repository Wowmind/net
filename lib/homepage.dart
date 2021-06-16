import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        selectedLabelStyle: TextStyle(color: Colors.white, fontSize: 10),
        unselectedLabelStyle: TextStyle(color: Colors.grey, fontSize: 10),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search_outlined), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.live_tv), label: 'Coming Soon'),
          BottomNavigationBarItem(icon: Icon(Icons.arrow_downward_outlined), label: 'Download'),
          BottomNavigationBarItem(icon: Icon(Icons.menu), label: 'More'),
        ],
        type: BottomNavigationBarType.fixed,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black26,
        child: Icon(
          Icons.connected_tv,
        ),
        onPressed: () {},
      ),

      body: ListView(
        children: [
         Stack(
           children: [
             Container(
               height: 500,
               decoration: BoxDecoration(
                 image: DecorationImage(
                   fit: BoxFit.cover,
                   image: AssetImage('assets/ven.png')
                 )
               ),
             ),
             Align(
               alignment: Alignment.topLeft,
               child: CircleAvatar(
                 backgroundImage: AssetImage('assets/nex.png'),
                 radius: 30,
               )

             ),
             Align(
               alignment: Alignment.topCenter,
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   SizedBox(height: 50,),
                   Text('Series', style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w500),),
                   SizedBox(width: 30,),
                   Text('Films', style: TextStyle(color: Colors.white, fontSize: 14,fontWeight: FontWeight.w500,),),
                   SizedBox(width: 30,),
                   GestureDetector(
                     onTap: () {},
                     child: Row(
                       children: [
                         Text('Categories', style: TextStyle(color: Colors.white, fontSize: 14,fontWeight: FontWeight.w500)),
                         Icon(Icons.arrow_drop_down, color: Colors.white,)
                       ],
                     ),
                   ),
                 ],
               ),
             ),
             Positioned(
               bottom: 25.0,

               child: Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Container(
                     padding: EdgeInsets.only(left: 50),
                     child: Column(
                       crossAxisAlignment: CrossAxisAlignment.center,
                       children: [
                         Icon(Icons.add, color: Colors.white,),
                         Text('MyList', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)
                       ],
                     ),
                   ),
                   SizedBox(width: 40,),
                   Container(
                     height: 30,
                     width: 120,
                     decoration: BoxDecoration(
                       color: Colors.white,
                     ),
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         Icon(Icons.play_arrow, color: Colors.black,size: 28,),
                         Text('Play', style: TextStyle(color: Colors.black,fontSize: 12, fontWeight: FontWeight.bold),)
                       ],
                     ),
                   ),
                   Container(
                     padding: EdgeInsets.only(left: 50),
                     child: Column(
                       crossAxisAlignment: CrossAxisAlignment.center,
                       children: [
                         Icon(Icons.info_outline, color: Colors.white,),
                         Text('Info', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)
                       ],
                     ),
                   ),
                 ],
               ),
             )
           ],
         ),
          SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.only(left: 10,bottom: 8),
            child: Text('My List',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors. white,
            ),
            ),
          ),

          Container(
            height: 180,
            width: double.infinity,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                MyItems('assets/oct.jpg'),
                MyItems('assets/imp.jpg'),
                MyItems('assets/flash.jpg'),
                MyItems('assets/ok.jpg'),
                MyItems('assets/emp.jpg'),
                MyItems('assets/got.jpg'),
                MyItems('assets/out.jpg'),
                MyItems('assets/van.jpg'),



              ],
            ),
          ),
          SizedBox(height: 30,),

          Padding(
            padding: const EdgeInsets.only(left: 10,bottom: 8),
            child: Text('Continue Watching for Taiwo',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors. white,
              ),
            ),
          ),

          Container(
            height: 180,
            width: double.infinity,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Items('assets/shad.jpg'),
                Items('assets/h.jpg'),
                Items('assets/power.jpg'),
                Items('assets/spart.jpg'),
                Items('assets/sup.jpg'),
                Items('assets/vik.jpg'),
                Items('assets/walk2.jpg'),
                Items('assets/emp.jpg'),
              ],
            ),
          ),
          SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.only(left: 10,bottom: 8),
            child: Text('Netflix Originals',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors. white,
              ),
            ),
          ),


          Container(
            height: 260,
            width: double.infinity,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                pros('assets/heist.jpg'),
                pros('assets/flash2.jpg'),
                pros('assets/hero.jpg'),
                pros('assets/spart.jpg'),
                pros('assets/tooth.jpg'),
                pros('assets/walk.jpeg'),
                pros('assets/oct.jpg'),
                pros('assets/arrow.jpg'),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 10,bottom: 8),
            child: Text('New Releases',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors. white,
              ),
            ),
          ),

          Container(
            height: 180,
            width: double.infinity,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                MyItems('assets/luci.jpg'),
                MyItems('assets/tooth.jpg'),
                MyItems('assets/ve.jpg'),
                MyItems('assets/out.jpg'),
                MyItems('assets/ok.jpg'),
                MyItems('assets/originals.jpg'),
                MyItems('assets/shad.jpg'),
                MyItems('assets/h.jpg'),
              ],
            ),
          ),




        ],
      ),
    );
  }

  Widget MyItems(String img){
    return Container(
      margin: EdgeInsets.only(left: 10),
      height: 160,
      width: 130,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(img)
        ),
      ),

    );
  }

  Widget Items(img){
    return Container(
      margin: EdgeInsets.only(left: 10),
      height: 160,
      width: 130,
      decoration: BoxDecoration(
        image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(img)
        ),
      ),
      child: Container(
        height: 30,
        width: 30,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.black26,
        ),

        child: Icon(
          Icons.play_arrow,
          color: Colors.white,
          size: 34,
        ),
      )

    );

  }
  Widget pros(img){
    return Container(
      margin: EdgeInsets.only(left: 10),
      height: 240,
      width: 160,
      decoration: BoxDecoration(
        image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(img)
        ),
      ),

    );
    
  }
}
