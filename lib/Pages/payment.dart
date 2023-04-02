import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
class Pay extends StatefulWidget {
  const Pay({Key? key}) : super(key: key);

  @override
  State<Pay> createState() => _PayState();
}

class _PayState extends State<Pay> {

  TextEditingController cardNumberController = TextEditingController();
  TextEditingController cardMonthController = TextEditingController();


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
              const Text("Card Form",
                style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),
              ),
              //Spacer(),
              const SizedBox(height: 20,),
              Form(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        controller: cardNumberController,
                        keyboardType:TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly,
                          LengthLimitingTextInputFormatter(16),
                          CardNumberInputFormatter(),
                        ],
                        decoration: const InputDecoration(hintText: "Card Number",
                        prefixIcon: Icon(Icons.credit_card)
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          hintText: "Full Name",
                          prefixIcon: Padding(
                            padding: EdgeInsets.symmetric(vertical: 10),
                            child: Icon(Icons.account_circle_rounded),
                          )

                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            keyboardType: TextInputType.number,
                            inputFormatters: [
                              FilteringTextInputFormatter.digitsOnly,
                              LengthLimitingTextInputFormatter(4),
                            ],
                            decoration: InputDecoration(
                              hintText: "CVV",
                              prefixIcon: Padding(
                                padding: const EdgeInsets.symmetric(vertical: 10),
                                child: Icon(Icons.card_membership_outlined),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 5,),
                        Expanded(
                          child: TextFormField(
                            keyboardType: TextInputType.number,
                            inputFormatters: [
                              FilteringTextInputFormatter.digitsOnly,
                              LengthLimitingTextInputFormatter(4),
                              CardMonthInputFormatter(),
                            ],
                            decoration: InputDecoration(
                              hintText: "MM/YY",
                              prefixIcon: Padding(
                                padding: const EdgeInsets.symmetric(vertical: 10),
                                child: Icon(Icons.calendar_month_outlined),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(onPressed: (){},
                    child: const Text("Pay")
                ),
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
class CardMonthInputFormatter extends TextInputFormatter{
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    var newText = newValue.text;

    if (newValue.selection.baseOffset == 0){
      return newValue;
    }

    // TODO: implement formatEditUpdate
    // throw UnimplementedError();
    var buffer = StringBuffer();
    for ( int i = 0; i < newText.length; i++){
      buffer.write(newText[i]);
      var nonZeroIndex = i + 1;
      if (nonZeroIndex % 2 == 0 && nonZeroIndex != newText.length){
        buffer.write("/");
      }
    }
    var string = buffer.toString();
    return newValue.copyWith(
      text: string,
      selection: TextSelection.collapsed(offset: string.length),
    );
  }
}

