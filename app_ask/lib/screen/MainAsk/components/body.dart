import 'package:app_ask/constants.dart';
import 'package:app_ask/models/ask.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        //no
        Container(
          color: kPrimaryColor,
          child: Row(
            children: const [
              //no
            ],
          ),
        ),
        //no

        Expanded(child: ListView.builder(
          itemCount: AskData.length,
          itemBuilder: (
            context, index) => AllArkBoard(
              ask: AskData[index], 
              press: () {  },),
          )
        )
      ],
    );
  }
}

class AllArkBoard extends StatelessWidget {
  const AllArkBoard({
    Key? key, 
    required this.ask, 
    required this.press,
  }) : super(key: key);

  final Ask ask;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return InkWell(

      //tab
      onTap: press,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: kDefaultPadding, vertical: kDefaultPadding / 4
        ),

        //
        
        //

        child: Container(

          child: Container (

            margin: const EdgeInsets.all(1),
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 3,
                ),
              ]
            ),

            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [

                //tag
                // Container(
                //   padding: EdgeInsets.all(6),
                //   decoration: BoxDecoration(
                //     color: Colors.red,
                //     borderRadius: BorderRadius.circular(30), 
                //   ),
                // ),

                //name
                Row(
                  children: [

                    //avatar
                    Padding(
                      padding: const EdgeInsets.all(2),
                      child: CircleAvatar(
                        radius: 16,
                        backgroundImage: AssetImage(
                          ask.profile
                        ),
                      ),
                    ),

                    //name
                    Padding(
                      padding: 
                        // const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                        const EdgeInsets.all(6),
                        //form Column
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            ask.name,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          const SizedBox(height: 2),
                        ],
                      ),
                    ),

                    //time
                    Padding(
                      padding: 
                        const EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
                      child: Opacity(
                        opacity: 0.8,
                        child: Text(
                          ask.time,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),

                  ],
                  
                ),

                const SizedBox(height: 8),

                //asking
                Text(
                  ask.asking,
                  style: const TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 14,
                  ),
                ),

                const SizedBox(height: 8),

                Center(
                  child: Container(
                    alignment: Alignment.bottomCenter,
                    height: 140,
                    // width: 520.0,
                    width: 300,
                    decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(10),
                      image: DecorationImage( 
                        image: AssetImage(ask.image),
                        // fit: BoxFit.fitHeight,
                        // fit: BoxFit.contain,
                        fit: BoxFit.fitWidth,
                      ),  
                    ),
                  ),
                ),

                //button
                Row(
                  children: <Widget>[
                    IconButton(
                      icon: const Icon(Icons.upload_rounded),
                      iconSize: 25,
                      onPressed: () => print('Like'),
                    ),
                    IconButton(
                      icon: const Icon(Icons.download_rounded),
                      iconSize: 25,
                      onPressed: () => print('Like'),
                    ),

                    IconButton(
                      icon: const Icon(Icons.comment),
                      iconSize: 25,
                      onPressed: () => print('Like'),
                    ),
                  ],
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}