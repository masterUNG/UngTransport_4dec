import 'package:firebase_messaging/firebase_messaging.dart';

class AppService {
  Future<void> aboutNoti() async {
    FirebaseMessaging firebaseMessaging = FirebaseMessaging.instance;
    String? token = await firebaseMessaging.getToken();
    print('token --> $token');

    //On Standby
    FirebaseMessaging.onMessage.listen((event) {
      String? title = event.notification!.title;
      String? body = event.notification!.body;
      showNoti(title: title!, body: body!, fromNoti: 'On Standby');
    });


    //Off Standby
    FirebaseMessaging.onMessageOpenedApp.listen((event) {
      String? title = event.notification!.title;
      String? body = event.notification!.body;
      showNoti(title: title!, body: body!, fromNoti: 'Off Standby');
    });

  }

  void showNoti({required String title, required String body, String? fromNoti}){
    print('title= $title, body = $body, fromNOti = $fromNoti');
  }

}
