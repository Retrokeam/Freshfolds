import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
class Pay extends StatefulWidget {
  const Pay({Key? key}) : super(key: key);

  @override
  State<Pay> createState() => _PayState();
}

class _PayState extends State<Pay> {

  TextEditingController cardNumberController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const  EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text("Card Form",
                style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),
              ),
              SizedBox(height: 20,),
              Form(
                child: Column(
                  children: [
                    TextFormField(
                      controller: cardNumberController,
                      keyboardType:TextInputType.number,
                      inputFormatters: [
                        FilteringTextInputFormatter.digitsOnly,
                        LengthLimitingTextInputFormatter(16),
                        CardNumberInputFormatter(),
                      ],
                      decoration: InputDecoration(hintText: "Card Number",
                      prefixIcon: Icon(Icons.credit_card)
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: "Full Name",
                          prefixIcon: Icon(Icons.account_circle_rounded)
                        ),
                      ),
                    ),
                  ],
                ),),

              ElevatedButton(onPressed: (){},
                  child: Text("Pay")
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CardNumberInputFormatter extends TextInputFormatter{
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    if (newValue.selection.baseOffset == 0){
      return newValue;
    }
    // TODO: implement formatEditUpdate
    // throw UnimplementedError();
    String inputData = newValue.text;
    StringBuffer buffer = StringBuffer();
    for ( var i = 0; i < inputData.length; i++){
      buffer.write(inputData[i]);
      int index =i + 1;
      if (index % 4 == 0 && inputData.length != index){
        buffer.write("  ");
      }
    }
    return TextEditingValue(
      text: buffer.toString(),
      selection: TextSelection.collapsed(offset: buffer.toString().length),
    );
  }
}