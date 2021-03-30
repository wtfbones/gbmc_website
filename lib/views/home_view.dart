import 'dart:html';
import 'package:google_fonts/google_fonts.dart';

import 'package:flutter/material.dart';
import 'package:gbmc_website/colors.dart';
import 'package:gbmc_website/textstyles.dart';

class HomeView extends StatelessWidget {
  final ScrollController _scrollController = ScrollController();
  final contactKey = new GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorPalette.headerBlack,
        title: Padding(
          padding: const EdgeInsets.fromLTRB(400, 0, 400, 0),
          child: Row(
            children: [
              Text("LOGOLOGO"),
              Spacer(
                flex: 1,
              ),
              Text("LOGOLOGO"),
              Text("LOGOLOGO"),
              Text("LOGOLOGO"),
            ],
          ),
        ),
      ),
      body: Container(
        constraints: BoxConstraints(
          maxHeight: 3914,
        ),
        child: SingleChildScrollView(
          controller: _scrollController,
          child: Column(
            children: [
              Container(
                child: Stack(
                  children: [
                    Image(
                      image: AssetImage('images/hero.png'),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(400, 500, 0, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                              "We design and develop\nstunning mobile\nexperiences.",
                              style: Theme.of(context).textTheme.headline1),
                          SizedBox(
                            height: 80,
                          ),
                          RaisedButton(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                            onPressed: () => Scrollable.ensureVisible(
                                contactKey.currentContext),
                            child: Text(
                              "Contact Us",
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Stack(
                  children: [
                    Image(
                      image: AssetImage('images/secondary.png'),
                    ),
                    Column(
                      children: [
                        Container(
                          child: Text(
                            "TESTTESTETSETEST",
                            key: contactKey,
                          ),
                        ),
                      ],
                    )
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
