import 'package:encrypt/encrypt.dart';
import 'package:flutter/material.dart' hide Key;

class CryptoService {
  static final key = Key.fromUtf8("12345678901234561234567890123456");
static  final iv = IV.fromUtf8("abcdefghijklmnop");

   static encrypt(String data) {
    final encrypter = Encrypter(AES(key, mode: AESMode.cbc));
    return encrypter.encrypt(data, iv: iv).base64;
  }

 static String decrypt(String data) {
    final decrypter = Encrypter(AES(key, mode: AESMode.cbc));
    return decrypter.decrypt64(data, iv: iv);
  }
}
