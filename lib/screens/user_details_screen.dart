import 'package:digi_cart/screens/home_screen.dart';
import 'package:flutter/material.dart';

class UserDetails extends StatefulWidget {
  const UserDetails({Key? key}) : super(key: key);

  @override
  State<UserDetails> createState() => _UserDetailsState();
}

class _UserDetailsState extends State<UserDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("User Details",style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.bold,
            fontFamily: "title"
        ),),
      ),
      body: Center(
        child: SizedBox(
          width: MediaQuery.of(context).size.width/1.5,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
          Container(
          decoration: BoxDecoration(
          color: Colors.white70,
            borderRadius:  BorderRadius.circular(10.0),
          ),
            child: Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 5),
                child: TextFormField(
                  keyboardType: TextInputType.name,
                    decoration:const InputDecoration(
                      border: InputBorder.none,
                      labelText: 'Name',
                    )))),
              const SizedBox(height: 10,),
              Container(
                  decoration: BoxDecoration(
                    color: Colors.white70,
                    borderRadius:  BorderRadius.circular(10.0),
                  ),
                  child: Padding(
                      padding: const EdgeInsets.only(left: 15, right: 15, top: 5),
                      child: TextFormField(
                        keyboardType: TextInputType.phone,
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            labelText: 'Phone',
                          )))),
              const SizedBox(height: 10,),
              Container(
                  decoration: BoxDecoration(
                    color: Colors.white70,
                    borderRadius:  BorderRadius.circular(10.0),
                  ),
                  child: Padding(
                      padding:const EdgeInsets.only(left: 15, right: 15, top: 5),
                      child: TextFormField(
                        keyboardType: TextInputType.emailAddress,
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            labelText: 'Email',
                          )))),
              const SizedBox(height: 10,),
              ElevatedButton(onPressed: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const HomeScreen()));
              }, child: Text("OK"))
            ],
          ),
        ),
      ),
    );
  }
}
