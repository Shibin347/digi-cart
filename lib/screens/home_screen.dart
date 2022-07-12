import 'package:digi_cart/screens/cart_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  List items = [
    {
      "image":"images/12.jpg",
      "name":"I Phone 12",
      "price":58000,
    },
    {
      "image":"images/13.jpg",
      "name":"I Phone 13",
      "price":76000,
    },
    {
      "image":"images/13mini.jpg",
      "name":"I Phone 13 mini",
      "price":62000,
    },
    {
      "image":"images/xr.jpg",
      "name":"I Phone XR",
      "price":48000,
    },
    {
      "image":"images/rog.jpg",
      "name":"Asus Rog Phone 6",
      "price":75000,
    },
    {
      "image":"images/nothing.jpg",
      "name":"Nothing Phone",
      "price":36000,
    },
    {
      "image":"images/motog42.jpg",
      "name":"Moto G 42",
      "price":25000,
    },
  ];
  List cart = [];

  @override
  void initState() {
    // TODO: implement initState
    setState(() {

    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Digi Cart",style: TextStyle(
          color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.bold,
            fontFamily: "title"
        ),),
        actions: [
         Stack(

           children: <Widget>[
             IconButton(icon:const Icon(Icons.shopping_cart,
               color: Colors.white,),
               onPressed: (){
               Navigator.push(context, MaterialPageRoute(builder: (context) => CartScreen(cart: cart,)));
               },
             ),
             cart.isEmpty ? Container() :
             Positioned(

                 child: Stack(
                   children: <Widget>[
                     const Icon(
                         Icons.brightness_1,
                         size: 20.0, color: Colors.deepOrange),
                     Positioned(
                         top: 3.0,
                         right: 4.0,
                         child: Center(
                           child: Text(
                             cart.length.toString(),
                             style: const TextStyle(
                                 color: Colors.white,
                                 fontSize: 11.0,
                                 fontWeight: FontWeight.w500
                             ),
                           ),
                         )),


                   ],
                 )),

           ],
         )
        ],
      ),
      body: GridView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Container(
            color: Colors.white,
            child: Column(
              children: [
                Image.asset(items[index]["image"],width: 150,height: 150,),
                const Spacer(),
                Row(
                  children: [
                    const SizedBox(width: 10,),
                    Text(items[index]["name"],
                      style:const TextStyle(
                      fontWeight: FontWeight.bold,
                        fontSize: 15
                    ),),
                    const Spacer()
                  ],
                ),
                const Spacer(),
                Row(
                  children: [
                    const SizedBox(width: 10,),
                    Text("\u{20B9}${items[index]["price"]}",
                      style:const TextStyle(
                        color: Colors.deepOrange,
                          fontWeight: FontWeight.bold,
                          fontSize: 15
                      ),),
                    const Spacer()
                  ],
                ),
                const Spacer(),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.deepOrange
                  ),
                    onPressed: (){
                    setState(() {

                    });
                    cart.add(items[index]);
                    print(cart);
                    },
                    child:const Text("Add to cart",style: TextStyle(
                        color: Colors.white,
                    ),)),
                const Spacer()
              ],
            ),
          );
        },
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 5,
          mainAxisSpacing: 5,
          mainAxisExtent: 300
      ),),
    );
  }
}
