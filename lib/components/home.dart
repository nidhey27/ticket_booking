import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nidhey/components/hotels_viwe.dart';
import 'package:nidhey/components/ticket_view.dart';
import 'package:nidhey/utils/app_styles.dart';

import 'package:gap/gap.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Style.backgroundColor,
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(children: [
              const Gap(40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Good Morning", style: Style.headLineStyle3),
                      const Gap(5),
                      Text("Book Tickets", style: Style.headLineStyle),
                    ],
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            fit: BoxFit.fitHeight,
                            image: AssetImage("assets/images/img_1.png"))),
                  )
                ],
              ),
              const Gap(25),
              TextField(
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0xFFF4F6FD), width: 0.0),
                    ),
                    prefixIcon: const Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    hintText: "Search",
                    filled: true,
                    fillColor: const Color(0xFFF4F6FD)),
              ),

              // Container(
              //     decoration: BoxDecoration(
              //         borderRadius: BorderRadius.circular(10),
              //         color: const Color(0xFFF4F6FD)),
              //     padding:
              //         const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
              //     child: Row(
              //       children: [
              //         const Icon(Icons.search, color: Colors.grey),
              //         Text(
              //           "Search",
              //           style: Style.headLineStyle4,
              //         )
              //       ],
              //     )),
              const Gap(40),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Text(
                  "Upcoming Flights",
                  style: Style.headLineStyle2,
                ),
                InkWell(
                    onTap: () => {print("You Tapped in View All")},
                    child: Text(
                      "View All",
                      style:
                          Style.textStyle.copyWith(color: Style.primaryColor),
                    ))
              ])
            ]),
          ),
          const Gap(15),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: [
                TicketView(),
                TicketView(),
                TicketView(),
              ],
            ),
          ),
          const Gap(15),
          Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Hotels",
                      style: Style.headLineStyle2,
                    ),
                    InkWell(
                        onTap: () => {print("You Tapped in View All")},
                        child: Text(
                          "View All",
                          style: Style.textStyle
                              .copyWith(color: Style.primaryColor),
                        ))
                  ])),
          const Gap(15),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: [
                HotelsView(),
                HotelsView(),
              ],
            ),
          ),
          const Gap(15),
        ],
      ),
    );
  }
}
