import 'package:flutter/material.dart';
import 'package:flutter_application_1/home_controller.dart';
import 'package:flutter_application_1/screen3.dart';
import 'package:flutter_application_1/screen4.dart';
import 'package:get/get.dart';
class Home_Screen extends StatelessWidget {
   Home_Screen({Key? key}) : super(key: key);
   final controller = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 25,left: 19),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                 const   CircleAvatar(
                     backgroundImage:AssetImage('lib/assets/image/i1.jpg'),
                     radius: 22,
                    ),
                 const   SizedBox(
                      width: 220,
                    ),
                  const   Icon(Icons.local_mall,color: Colors.pink,size: 30,),
                    IconButton(onPressed: (){
                      controller.changelauguge();
                    }, icon: Icon(Icons.language,color: Colors.pink,))
                  ],
                ),            
              ),
            const  SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(14),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Hello So Lin!'.tr,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),  
                    const    SizedBox(
                          height: 8,
                        ),
                        Text('What flavour do you want today?'.tr,style: TextStyle(color: Colors.grey),)       
                      ],
                    ),
                  ),       
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20,right: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Popular'.tr,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                    TextButton(onPressed: (){
                    Get.changeTheme(Get.isDarkMode? ThemeData.light(): ThemeData.dark());
                    }, child: Icon(Icons.dark_mode,color: Colors.pink,size: 30,),),
                  ],
                ),
              ),
            const SizedBox(
              height: 9,
             ),
             Container(
              height: 330,
              width: 350,
              
              child:PageView(
                children: [
             Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Color.fromARGB(255, 221, 127, 197),
              ),
              //color: Color.fromARGB(255, 214, 109, 144),
               child: Column(
                children: [
                   Padding(
                     padding: const EdgeInsets.all(14.0),
                     child: Container(
                height: 150,                    
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                ),
                  child: Image.asset('lib/assets/image/i11png.png',),      
                        ),
                   ),
                   Row(
                    children: [
                     Padding(
                       padding: const EdgeInsets.all(14.0),
                       child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                           Text('Fraise Cream'.tr,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                           Text('Strawberry Fiavoul Sweet'.tr,style: TextStyle(color:Colors.black,fontSize: 15),),
                           Text('Ice Cream'.tr,style: TextStyle(color:Colors.black,fontSize: 15),),
                           const   SizedBox(
                                height: 10,
                              ),
                            Row(
                              children:[
                               const Text('\$ 2.50',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                               const SizedBox(
                                  width: 170,
                                ),
                               
                              MaterialButton(onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context){
                                  return Screen3();
                                }));
                              },child:
                              Container(
                                height: 40,
                                width: 40,
                                
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Icon(Icons.add,color: Color.fromARGB(255, 219, 129, 159),),
                               ),),
                              ],
                            ),
                        ],
                       ),
                     ),
                    ],
                   ),
                ],
               ),
             ),    // pic 2==========================================================

         Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Color.fromARGB(255, 214, 205, 125),
              ),
              //color: Color.fromARGB(255, 214, 109, 144),
               child: Column(
                children: [
                   Padding(
                     padding: const EdgeInsets.all(14.0),
                     child: Container(
                height: 150,                    
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                ),
                  child: Image.asset('lib/assets/image/i33.png'),      
                        ),
                   ),
                   Row(
                    children: [
                     Padding(
                       padding: const EdgeInsets.all(14.0),
                       child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                           Text('Mandarice Cream'.tr,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                           Text('pink Fiavoul Sweet'.tr,style: TextStyle(color:Colors.black,fontSize: 15),),
                           Text('Ice Cream'.tr,style: TextStyle(color:Colors.black,fontSize: 15),),
                           const   SizedBox(
                                height: 10,
                              ),
                            Row(
                              children: [
                               const Text('\$ 3.50',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                               const SizedBox(
                                  width: 170,
                                ),
                                MaterialButton(onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context){
                                  return Screen4();
                                }));
                              },child:
                              Container(
                                height: 40,
                                width: 40,
                                
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Icon(Icons.add,color: Color.fromARGB(255, 219, 129, 159),),
                               ),),
                              ],
                            ),
                        ],
                       ),
                     ),
                    ],
                   ),
                ],
               ),
             ),            
                ],
              ),
             ),
               Padding(
                 padding: const EdgeInsets.only(left: 30,right: 18),
                 child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                  Text('New in'.tr,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                      MaterialButton(onPressed: (){
                        
                      },child: MaterialButton(
        child: const Text('See all!',style: TextStyle(color: Color.fromARGB(255, 199, 43, 95)),),
        onPressed: () {
          showModalBottomSheet<void>(
            context: context,
            builder: (BuildContext context) {
              return Container(
                  height: 500,
                  color: Colors.white,    
               child: ListView(
                children: [
                  Column(
                children: [
                  Row(
                    children: [
                        Container(
                    height: 90,
                    
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Container(
                            height: 100,
                            width: 70,
                            child: Image.asset('lib/assets/image/i4.jpg'),
                          ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                                Text('Framboise Flavor'.tr,style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                                Text('Dessert'.tr,style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                                Text('\$ 3.50',style: TextStyle(fontSize: 17,color: Color.fromARGB(255, 240, 151, 180)),),
                            ],
                          ),
                          
                        ),
                       const SizedBox(
                          width: 115,
                        ),
                       const Icon(Icons.favorite,color: Color.fromARGB(255, 214, 112, 146),),
                        ],
                        
                      ),
                    ),
                  ),
                    ],
                  ),
                    Container(
                    height: 90,
                    
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Container(
                            height: 100,
                            width: 70,
                            child: Image.asset('lib/assets/image/i5.jpg'),
                          ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                                Text('Caramel Flavor'.tr,style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                                Text('Dessert'.tr,style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                                Text('\$ 4.50',style: TextStyle(fontSize: 17,color: Color.fromARGB(255, 240, 151, 180)),),
                            ],
                          ),
                          
                        ),
                       const SizedBox(
                          width: 130,
                        ),
                       const Icon(Icons.favorite,color: Color.fromARGB(255, 214, 112, 146),)
                        ],
                      ),
                    ),
                  ),
                Container(
                    height: 90,
                    
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Container(
                            height: 100,
                            width: 70,
                            child: Image.asset('lib/assets/image/i6.jpg'),
                          ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                                Text('IceCool Flavor'.tr,style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                                Text('Dessert'.tr,style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                                Text('\$ 4.50',style: TextStyle(fontSize: 17,color: Color.fromARGB(255, 240, 151, 180)),),
                            ],
                          ),
                          
                        ),
                       const SizedBox(
                          width: 140,
                        ),
                       const Icon(Icons.favorite,color: Color.fromARGB(255, 214, 112, 146),)
                        ],
                      ),
                    ),
                  ),
                Container(
                    height: 90,
                    
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Container(
                            height: 100,
                            width: 70,
                            child: Image.asset('lib/assets/image/i6.jpg'),
                          ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                                Text('IceCool Flavor'.tr,style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                                Text('Dessert'.tr,style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                                Text('\$ 4.50',style: TextStyle(fontSize: 17,color: Color.fromARGB(255, 240, 151, 180)),),
                            ],
                          ),
                          
                        ),
                       const SizedBox(
                          width: 130,
                        ),
                       const Icon(Icons.favorite,color: Color.fromARGB(255, 214, 112, 146),)
                        ],
                      ),
                    ),
                  ),
                                   Container(
                    height: 90,
                    
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Container(
                            height: 100,
                            width: 70,
                            child: Image.asset('lib/assets/image/i5.jpg'),
                          ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                                Text('Caramel Flavor'.tr,style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                                Text('Dessert'.tr,style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                                Text('\$ 4.50',style: TextStyle(fontSize: 17,color: Color.fromARGB(255, 240, 151, 180)),),
                            ],
                          ),
                          
                        ),
                       const SizedBox(
                          width: 130,
                        ),
                       const Icon(Icons.favorite,color: Color.fromARGB(255, 214, 112, 146),)
                        ],
                      ),
                    ),
                  ),
                ],
                
               ),
                ],
               ),
              );
            },
          );
        },
      ),
                      ),
                    ],
                  ),
               ),
           Expanded(
             child: Container(
              height: 150,
              width: 400,
              child:  ListView(
                children: [
                  Container(
                    height: 90,
                    
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Container(
                            height: 100,
                            width: 70,
                            child: Image.asset('lib/assets/image/i5.jpg'),
                          ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                                Text('Caramel Flavor'.tr,style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                                Text('Dessert'.tr,style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                                Text('\$ 4.50',style: TextStyle(fontSize: 17,color: Color.fromARGB(255, 240, 151, 180)),),
                            ],
                          ),
                          
                        ),
                       const SizedBox(
                          width: 130,
                        ),
                       const Icon(Icons.favorite,color: Color.fromARGB(255, 214, 112, 146),)
                        ],
                      ),
                    ),
                  ),
                Container(
                    height: 90,
                    
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Container(
                            height: 100,
                            width: 70,
                            child: Image.asset('lib/assets/image/i4.jpg'),
                          ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                                Text('Framboise Flavor'.tr,style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                                Text('Dessert'.tr,style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                                Text('\$ 3.50',style: TextStyle(fontSize: 17,color: Color.fromARGB(255, 240, 151, 180)),),
                            ],
                          ),
                          
                        ),
                       const SizedBox(
                          width: 115,
                        ),
                       const Icon(Icons.favorite,color: Color.fromARGB(255, 214, 112, 146),)
                        ],
                      ),
                    ),
                  ),
                 Container(
                    height: 90,
                    
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Container(
                            height: 100,
                            width: 70,
                            child: Image.asset('lib/assets/image/i6.jpg'),
                          ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                                Text('IceCool Flavor'.tr,style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                                Text('Dessert'.tr,style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                                Text('\$ 4.50',style: TextStyle(fontSize: 17,color: Color.fromARGB(255, 240, 151, 180)),),
                            ],
                          ),
                          
                        ),
                       const SizedBox(
                          width: 130,
                        ),
                       const Icon(Icons.favorite,color: Color.fromARGB(255, 214, 112, 146),)
                        ],
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