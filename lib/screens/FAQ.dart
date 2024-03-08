import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ssen_user/widget/faq_element_widget.dart';

class Faq extends StatelessWidget {
  const Faq({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(
              Icons.arrow_back_ios_new_outlined,
              color: Colors.blue,
              size: 20,
            )),
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'FAQ ',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            decoration: TextDecoration.none,
            color: Colors.blue,
            // fontSize: 27,
            // fontWeight: FontWeight.bold
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Frequently Asked Questions",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
              SizedBox(
                height: 18,
              ),
              Container(
                child: Text(
                  "General",
                  style: TextStyle(color: Colors.grey, fontSize: 20),
                ),
              ),
              SizedBox(
                height: 18,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const FaqElementWidget(
                        questions:
                            "what are the main functions of stock market?"),
                    FaqElementWidget(
                        questions: "How does the stock market work?"),
                    const FaqElementWidget(
                        questions: "What factors can affect stock prices?"),
                    FaqElementWidget(
                        questions:
                            "What is the difference between stocks, bonds, and mutual funds?What is the difference between stocks, b"),
                    FaqElementWidget(
                        questions: "How do you buy and sell stocks?"),
                    FaqElementWidget(
                        questions:
                            "what are the main functions of stock market?"),
                    FaqElementWidget(
                        questions: "How does the stock market work?"),
                    FaqElementWidget(
                        questions: "What factors can affect stock prices?"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
