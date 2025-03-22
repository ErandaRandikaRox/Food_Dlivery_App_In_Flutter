import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {
  final CollectionReference orders = FirebaseFirestore.instance.collection('orders');

  Future<void> saveOrderToDatabase(String receipt) async {
    try {
      await orders.add({
        'order': receipt, // Match your naming convention
        'date': DateTime.now(), // Client-side timestamp
        'timestamp': FieldValue.serverTimestamp(), // Server-side timestamp
        'userId': 'some-user-id', // Replace with actual user ID
        'status': 'in_progress',
      });
      print('Order saved successfully to Firestore');
    } catch (e) {
      print('Failed to save order: $e');
      rethrow; // Allow the caller to handle the error
    }
  }
}