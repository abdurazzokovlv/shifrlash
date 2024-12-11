import 'package:flutter/material.dart';
import 'package:nm/service_crypto/crypto_dervice.dart';

class HomePage extends StatefulWidget {
 const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String result1 = "";

  String result2 = "";

  TextEditingController encryptyController = TextEditingController();
  TextEditingController decryptyController = TextEditingController();
  TextEditingController decryptyRController = TextEditingController();
  TextEditingController encryptyRController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Encrypter"),
      ),
      body: Column(
        children: [
          Expanded(
              child: Column(
            children: [
              TextFormField(
                controller: encryptyController,
                decoration:
                    const InputDecoration(hintText: "Enter encrypted data"),
              ),
              TextFormField(
              controller: encryptyRController,
              ),
              ElevatedButton(onPressed: () {
                setState(() {
                  encryptyRController.text = CryptoService.encrypt(encryptyController.text);
                });
              }, child: Text("Encrypt"))
            ],
          )),
         Expanded(
              child: Column(
            children: [
              TextFormField(
                controller: decryptyController,
                decoration:
                    const InputDecoration(hintText: "Enter sensetive data"),
              ),
              TextFormField(
              controller: decryptyRController,
              ),
              ElevatedButton(onPressed: () {
                setState(() {
                  decryptyRController.text = CryptoService.decrypt(decryptyController.text);
                });
              }, child: Text("Decrypt"))
            ],
          )),
        ],
      ),
    );
  }
}