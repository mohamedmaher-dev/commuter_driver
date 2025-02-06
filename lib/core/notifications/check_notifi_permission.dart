import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:notification_permissions/notification_permissions.dart';

class CheckNotifiPermission {
  final FirebaseMessaging firebaseMessaging;
  CheckNotifiPermission(this.firebaseMessaging);

  Future<bool> get isGranted async {
    final status =
        await NotificationPermissions.getNotificationPermissionStatus();
    return status == PermissionStatus.granted;
  }

  Future<bool> request() async {
    final isGranted =
        await NotificationPermissions.requestNotificationPermissions();
    return isGranted == PermissionStatus.granted;
  }
}
