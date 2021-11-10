import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class AddNewCardPage extends StatefulWidget {
  const AddNewCardPage({Key? key}) : super(key: key);

  @override
  State<AddNewCardPage> createState() => _AddNewCardPageState();
}

class _AddNewCardPageState extends State<AddNewCardPage> {
  final TextEditingController _nameOnCardTextController =
      TextEditingController();
  final TextEditingController _cardNumberTextController =
      TextEditingController();
  final TextEditingController _expireDayETextController =
      TextEditingController();

  final TextEditingController _expireMonthTextController =
      TextEditingController();

  final TextEditingController _expireYearTextController =
      TextEditingController();

  final TextEditingController _cvvTextController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _nameOnCardTextController.dispose();
    _cardNumberTextController.dispose();
    _expireDayETextController.dispose();
    _expireMonthTextController.dispose();
    _expireYearTextController.dispose();
    _cvvTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const _textFieldDecoration = InputDecoration(
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.grey),
      ),
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: Colors.grey,
          width: 0.5,
        ),
      ),
    );

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  Get.back();
                },
                child: const Icon(
                  Icons.keyboard_arrow_left_outlined,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              const Text(
                'Add new Cart',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              Form(
                key: _formKey,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'NAME ON CARD',
                        style: TextStyle(color: Colors.grey),
                      ),
                      TextFormField(
                        controller: _nameOnCardTextController,
                        style: const TextStyle(
                          color: Colors.white70,
                        ),
                        decoration: _textFieldDecoration,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Заполните имя";
                          }

                          return null;
                        },
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        'CARD NUMBER',
                        style: TextStyle(color: Colors.grey),
                      ),
                      TextFormField(
                        keyboardType: TextInputType.number,
                        controller: _cardNumberTextController,
                        style: const TextStyle(color: Colors.white70),
                        decoration: _textFieldDecoration,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Заполните номер карты";
                          }
                          return null;
                        },
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        // crossAxisAlignment: ,
                        children: const [
                          Text(
                            'EXPIRE DAY (DD/MM/YYY)',
                            style: TextStyle(color: Colors.grey),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 25),
                            child: Text(
                              'CVV',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            flex: 2,
                            child: TextFormField(
                              maxLength: 2,
                              keyboardType: TextInputType.number,
                              controller: _expireDayETextController,
                              style: const TextStyle(color: Colors.white70),
                              decoration: _textFieldDecoration,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "Заполните день";
                                }
                                return null;
                              },
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Expanded(
                            flex: 2,
                            child: TextFormField(
                              maxLength: 2,
                              keyboardType: TextInputType.number,
                              controller: _expireMonthTextController,
                              style: const TextStyle(color: Colors.white70),
                              decoration: _textFieldDecoration,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "Заполните месяц";
                                }
                                return null;
                              },
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Expanded(
                            flex: 2,
                            child: TextFormField(
                              maxLength: 4,
                              keyboardType: TextInputType.number,
                              controller: _expireYearTextController,
                              style: const TextStyle(color: Colors.white70),
                              decoration: _textFieldDecoration,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "Заполните год";
                                }
                                return null;
                              },
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Expanded(
                            flex: 1,
                            child: TextFormField(
                              onFieldSubmitted: (value) {
                                print('onFieldSubmitted');
                                print(value);
                              },
                              onEditingComplete: () {
                                print('onEditingComplete');
                              },
                              maxLength: 3,
                              keyboardType: TextInputType.number,
                              controller: _cvvTextController,
                              style: const TextStyle(color: Colors.white70),
                              decoration: _textFieldDecoration,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "Заполните CVV";
                                }
                                return null;
                              },
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            padding: MaterialStateProperty.all(
                              const EdgeInsets.symmetric(vertical: 17),
                            ),
                            backgroundColor:
                                MaterialStateProperty.all(Colors.red[50]),
                          ),
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              print(' Все ок');
                            }
                          },
                          child: const Text(
                            'Add Card',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                            ),
                          ),
                        ),
                      ),
                    ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
