import 'package:digi_cart/screens/user_details_screen.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  final List cart;
  const CartScreen({Key? key, required this.cart}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cart",style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.bold,
            fontFamily: "title"
        ),),
        leading: IconButton(
            onPressed: (){
              Navigator.pop(context);
            },
            icon:const Icon(Icons.arrow_back_ios)),
      ), body:widget.cart.isNotEmpty? Stack(
      children:[
         GridView.builder(
          itemCount: widget.cart.isNotEmpty ? widget.cart.length:0,
          itemBuilder: (context, index) {
            return Container(
              color: Colors.white,
              child: Column(
                children: [
                  Image.asset(widget.cart[index]["image"],width: 150,height: 150,),
                  const Spacer(),
                  Row(
                    children: [
                      const SizedBox(width: 10,),
                      Text(widget.cart[index]["name"],
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
                      Text("\u{20B9}${widget.cart[index]["price"]}",
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
                        widget.cart.removeAt(index);
                        print(widget.cart);
                        setState(() {
                        });
                      },
                      child:const Text("Remove item",style: TextStyle(
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
         Positioned.fill(
          child: Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
            height: 80,
              child: Row(
                children: [
                  const SizedBox(width: 20,),
                  Spacer(),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.deepOrange
                      ),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => UserDetails()));
                      },
                      child:const Text("Buy Now",style: TextStyle(
                        color: Colors.white,
                      ),)),
                  const SizedBox(width: 20,),
                ],
              )
          ),
          ),
        )
      ]
      ):const Center(
      child: Text(" No Items in Cart"),
    ),
    );
  }
}
