import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:m_budget/models/transaction.dart';

class TransactionService {
  static var client = http.Client();

  static Future<Transaction> fetchTransactions() async {
    var res = await client.get("http://10.0.2.2:8000/api/transactions");
    if (res.statusCode == 200) {
      return transactionFromJson(res.body);
    } else {
      return null;
    }
  }
}