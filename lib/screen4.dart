import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/home_screen.dart';
import 'package:get/get.dart';
class Screen4 extends StatefulWidget {
   Screen4({Key? key}) : super(key: key);

  @override
  State<Screen4> createState() => _Screen4State();
}

class _Screen4State extends State<Screen4> {
  bool isheart=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children: [
         Container(
          
          child: Stack(
            children: [          
             Container(
                color: Color.fromARGB(255, 214, 205, 125),
                height: MediaQuery.of(context).size.height,
                width: double.infinity,
                child: SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(                      
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                            ),
                            child: MaterialButton(onPressed: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context){
                                    return Home_Screen();
                                  }));
                                },child:const Icon(Icons.arrow_back_ios,size: 20,color: Color.fromARGB(255, 214, 92, 133),),
                          ),
                          ),
                        TextButton(onPressed: ()
                        
                       {
                        setState(()=>isheart=!isheart);
                       }, child: Row(
                        children: [
                          Icon(Icons.favorite,size: 30,color: isheart?Colors.pink:Colors.white,),
                        ],
                       ),),
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Container(
                              height: 180,
                              width: 360,
                              child: Image.asset('lib/assets/image/i33.png'),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
                 
                 Positioned(
                  bottom: 0,
                   child: Container(                        
                      height: MediaQuery.of(context).size.height*0.5,
                      width: 410,
                     child:  ClipRRect(
                      borderRadius:const BorderRadius.only(
                        topLeft: Radius.circular(60),
                        topRight: Radius.circular(60),
                      ),
                      child: Container(
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.all(30.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:[
                              const Text('Mandarice Cream',style: TextStyle(fontSize: 20,fontWeight:FontWeight.bold),),
                             const  SizedBox(
                                height: 10,
                              ),
                            const   Text('Peer Fiavoul Sweet',style: TextStyle(fontSize: 15,fontWeight:FontWeight.bold,color: Colors.grey),),
                           const SizedBox(
                              height: 10,
                            ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children:  [
                                     const Text('\$3.50',style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold),),
                                      Container(  
                                        height: 40,
                                        width: 100,
                                       decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(30),
                                         color: Color.fromARGB(255, 190, 100, 130),
                                       ),
                                       child: Padding(
                                         padding: const EdgeInsets.all(8.0),
                                         child: Column(
                                          children: [
                                          Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children:const [
                                            Text('-  1   +',style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),)
                                          ],
                                         ),
                                          ],
                                         ),
                                         
                                       ),
                                      ),
                                  ],
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text('Description',style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.bold),),
                                 const  SizedBox(
                                    height: 10,
                                   ),
                                   const Text(' Fill cylinder of ice cream freezer two-thirds full; freeze according to the manufacturer’s directions. (Refrigerate any remaining mixture until ready to freeze.) Transfer ice cream to freezer containers, '),
                                  const SizedBox(
                                    height: 15,
                                   ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                       CupertinoButton(child: Text('Buy Now'),color: Colors.pink,
                                   borderRadius: BorderRadius.circular(30),
                                    onPressed: (){
                                        Get.snackbar('Message', 'Buy success \$3.50 by Visa 0134********51',colorText: Colors.white,
                                      // stye
                                      snackPosition: SnackPosition.TOP,backgroundColor: Color.fromARGB(255, 236, 183, 201),
                                      // change color
                                      snackStyle: SnackStyle.GROUNDED,
                                      );
                                    }),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                     ),
                     
                    ),
                 ), 
            ],
          ),
         ),
        
        ],
      ),
    );
  }
}