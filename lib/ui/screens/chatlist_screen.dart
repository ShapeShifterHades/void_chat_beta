import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:void_chat_beta/ui/drawer/portrait_mobile_drawer/portrait_drawer_wrapper.dart';
import 'package:void_chat_beta/ui/ui_base_elements/animated_frame/portrait/custom_full_frame_animated.dart';

class ChatlistScreen extends StatefulWidget {
  @override
  _ChatlistScreenState createState() => _ChatlistScreenState();
}

class _ChatlistScreenState extends State<ChatlistScreen> {
  Future<User> getName() async {
    return FirebaseAuth.instance.currentUser;
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return PortraitDrawerWrapper(
      child: Scaffold(
        body: Stack(
          children: [
            Positioned(
              top: size.width * 0.05 + 30,
              bottom: size.width * 0.05,
              left: size.width * 0.05,
              right: size.width * 0.05,
              child: CustomFullFrameAnimated(
                size: size,
              ),
            ),

            // Container(
            //   child: FutureBuilder(
            //     future: getName(),
            //     builder: (context, futureSnapshot) {
            //       if (futureSnapshot.connectionState == ConnectionState.waiting) {
            //         return Center(
            //           child: CircularProgressIndicator(),
            //         );
            //       }
            //       return StreamBuilder(
            //           stream: FirebaseFirestore.instance
            //               .collection('users')
            //               .doc(futureSnapshot.data.uid)
            //               .collection('chatsList')
            //               .snapshots(),
            //           builder: (context, chatBriefSnapshot) {
            //             if (chatBriefSnapshot.connectionState ==
            //                 ConnectionState.waiting) {
            //               return Center(
            //                 child: CircularProgressIndicator(),
            //               );
            //             }
            //             final listItem = chatBriefSnapshot.data.documents;
            //             return ListView.builder(
            //               itemCount: listItem.length,
            //               itemBuilder: (context, index) => Container(
            //                 child: Padding(
            //                   padding: const EdgeInsets.all(8.0),
            //                   child: Container(
            //                     color: Colors.blueGrey,
            //                     child: ListTile(
            //                       key: Key(listItem[index].documentID),
            //                       leading: Icon(Icons.person),
            //                       title: Text(
            //                         listItem[index].documentID.toString(),
            //                       ),
            //                       subtitle: Text(
            //                         '${listItem[index]['lastMessageBy']}: ' +
            //                             listItem[index]['lastMessage'].toString(),
            //                       ),
            //                       onTap: () => Navigator.push(
            //                         context,
            //                         MaterialPageRoute(
            //                           builder: (context) => ConversationScreen(
            //                               userId: listItem[index].documentID),
            //                         ),
            //                       ),
            //                     ),
            //                   ),
            //                 ),
            //               ),
            //             );
            //           });
            //     },
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
