import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:m_wallet_hps/cubit/app_cubit.dart';
import 'package:m_wallet_hps/cubit/app_states.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit,AppStates>( listener: ((context, state) { }),
        builder: ((context, state) => Scaffold(
          appBar: AppBar(),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[

                SizedBox(height:120,),
                Positioned(
                  child: Padding(
                    padding :const EdgeInsets.all(8.0),

                    child: Container(
                      height: 180,
                      width: 300,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: Column(
                        children: <Widget>[
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image.asset("images/mastercard.png",width:50 ,),
                                ),
                                Padding(

                                  padding: const EdgeInsets.all(8.0),
                                  child: Icon(Icons.more_vert, color: Colors.black,),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 30,),

                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: RichText(text: TextSpan(children: [
                              TextSpan(text:"REDA KHOUDRI\n"),
                              TextSpan(text:"**** **** **** 1298\n"),
                              TextSpan(text: "VALID 09/22",style: TextStyle( fontSize: 16,fontWeight: FontWeight.w100))
                            ],style: TextStyle(fontSize: 22))),
                          )
                        ],

                      ),
                    ),

                  ),
                ),
                Container(
                    padding:const EdgeInsets.only(top:65.0,left: 20.0,right: 20.0),
                    child: Column(
                      children: <Widget>[

                        const     SizedBox(height: 30.0),

                        const  SizedBox(height: 5.0,),
                        Padding(
                          padding: const EdgeInsets.only(top: 0.0,left: 0.0,right: 262.0),
                          child: Container(
                            child: Text('Operation :',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),),
                          ),
                        ),

                        SizedBox(height: 40.0,),
                        Container(
                          height: 40.0,
                          color: Colors.transparent,
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.black,
                                    style: BorderStyle.solid,
                                    width: 1.0

                                ),
                                color: Colors.transparent,
                                borderRadius: BorderRadius.circular (20.0)

                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const <Widget>[
                                Center(
                                  child: ImageIcon(AssetImage('images/paiment.png')),
                                ),
                                SizedBox(width: 10.0,),
                                Center(
                                  child: Text('Payment',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Montserrat'
                                    ),
                                  ),
                                )


                              ],
                            ),

                          ),
                        ),
                        SizedBox(height: 20.0),

                        Container(
                          height: 40.0,
                          color: Colors.transparent,
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.black,
                                    style: BorderStyle.solid,
                                    width: 1.0

                                ),
                                color: Colors.transparent,
                                borderRadius: BorderRadius.circular (20.0)

                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const <Widget>[
                                Center(
                                  child: ImageIcon(AssetImage('images/transferrrt.png')),
                                ),
                                SizedBox(width: 10.0,),
                                Center(
                                  child: Text('Transfer',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Montserrat'
                                    ),
                                  ),
                                )


                              ],
                            ),

                          ),
                        ),SizedBox(height: 20.0),
                        Container(
                          height: 40.0,
                          color: Colors.transparent,
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.black,
                                    style: BorderStyle.solid,
                                    width: 1.0

                                ),
                                color: Colors.transparent,
                                borderRadius: BorderRadius.circular (20.0)

                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const <Widget>[
                                Center(
                                  child: ImageIcon(AssetImage('images/historique.png')),
                                ),
                                SizedBox(width: 10.0,),
                                Center(
                                  child: Text('Historical',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Montserrat'
                                    ),
                                  ),
                                ),



                              ],
                            ),


                          ),
                        ),
                        SizedBox(height: 40.0,),
                        Center(
                          child: TextButton(
                            onPressed: (){
                            //  logout();
                            //  Navigator.pushAndRemoveUntil(context,
                              //    MaterialPageRoute(builder: (context)=>()), (route) => false);
                            },
                            child: Text('Log Out',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Montserrat',
                                fontSize: 20.0,
                              ),
                            ),
                          ),
                        )

                      ],
                    )),
                const  SizedBox(height: 15.0),


              ],
            ),
          ),
          bottomNavigationBar: SalomonBottomBar(items: [ SalomonBottomBarItem(
            icon: Icon(Icons.home),
            title: Text("Home"),
            selectedColor: Colors.purple,
          ),

            /// Likes
            SalomonBottomBarItem(
              icon: Icon(Icons.favorite_border),
              title: Text("Likes"),
              selectedColor: Colors.pink,
            ),

            /// Search
            SalomonBottomBarItem(
              icon: Icon(Icons.search),
              title: Text("Search"),
              selectedColor: Colors.orange,
            ),

            /// Profile
            SalomonBottomBarItem(
              icon: Icon(Icons.person),
              title: Text("Profile"),
              selectedColor: Colors.teal,
            ),],),
        )
    ));
  }
}
