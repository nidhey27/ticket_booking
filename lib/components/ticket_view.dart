import 'package:flutter/material.dart';
import 'package:nidhey/utils/app_layout.dart';
import 'package:nidhey/utils/app_styles.dart';
import 'package:nidhey/widgets/thick_container.dart';
import 'package:gap/gap.dart';

class TicketView extends StatelessWidget {
  const TicketView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width * 0.85,
      height: 200,
      child: Container(
        margin: const EdgeInsets.only(right: 16),
        child: Column(children: [
          Container(
              decoration: const BoxDecoration(
                  color: Color(0xFF526799),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(21),
                      topRight: Radius.circular(21))),
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "NYC",
                        style:
                            Style.headLineStyle3.copyWith(color: Colors.white),
                      ),
                      Expanded(child: Container()),
                      const ThickContainer(),
                      Expanded(
                          child: Stack(
                        children: [
                          Center(
                            child: Transform.rotate(
                              angle: 1.5,
                              child: const Icon(Icons.airplanemode_active,
                                  color: Colors.white),
                            ),
                          ),
                          SizedBox(
                              height: 24,
                              child: LayoutBuilder(
                                builder: (BuildContext context,
                                    BoxConstraints constraints) {
                                  return Flex(
                                    direction: Axis.horizontal,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    mainAxisSize: MainAxisSize.max,
                                    children: List.generate(
                                        (constraints.constrainWidth() / 6)
                                            .floor(),
                                        (index) => SizedBox(
                                              width: 3,
                                              height: 1,
                                              child: DecoratedBox(
                                                  decoration: BoxDecoration(
                                                      color: Colors.white)),
                                            )),
                                  );
                                },
                              ))
                        ],
                      )),
                      const ThickContainer(),
                      Expanded(child: Container()),
                      Text(
                        "LDN",
                        style:
                            Style.headLineStyle3.copyWith(color: Colors.white),
                      )
                    ],
                  ),
                  const Gap(4),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                            width: 100,
                            child: Text(
                              "New-York",
                              style: Style.headLineStyle4
                                  .copyWith(color: Colors.white),
                            )),
                        Text(
                          "8H 30M",
                          style: Style.headLineStyle4
                              .copyWith(color: Colors.white),
                        ),
                        SizedBox(
                            width: 100,
                            child: Text(
                              "London",
                              textAlign: TextAlign.end,
                              style: Style.headLineStyle4
                                  .copyWith(color: Colors.white),
                            )),
                      ])
                ],
              )),
          Container(
            color: Style.orangeColor,
            child: Row(children: [
              SizedBox(
                  height: 20,
                  width: 10,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                        color: Style.backgroundColor,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(15),
                            bottomRight: Radius.circular(15))),
                  )),
              Expanded(
                  child: Padding(
                padding: EdgeInsets.all(12),
                child: LayoutBuilder(
                  builder: (BuildContext context, BoxConstraints constraints) {
                    return Flex(
                      direction: Axis.horizontal,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
                      children: List.generate(
                          (constraints.constrainWidth() / 15).floor(),
                          (index) => SizedBox(
                                width: 3,
                                height: 1,
                                child: DecoratedBox(
                                    decoration:
                                        BoxDecoration(color: Colors.white)),
                              )),
                    );
                  },
                ),
              )),
              SizedBox(
                  height: 20,
                  width: 10,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                        color: Style.backgroundColor,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15),
                            bottomLeft: Radius.circular(15))),
                  ))
            ]),
          ),
          Container(
            decoration: const BoxDecoration(
                color: Style.orangeColor,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(21),
                    bottomRight: Radius.circular(21))),
            padding:
                const EdgeInsets.only(left: 16, top: 10, right: 16, bottom: 16),
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "1 MAY",
                          style: Style.headLineStyle3
                              .copyWith(color: Colors.white),
                        ),
                        Text(
                          "DATE",
                          style: Style.headLineStyle4
                              .copyWith(color: Colors.white),
                        )
                      ]),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "8:00 AM",
                          style: Style.headLineStyle3
                              .copyWith(color: Colors.white),
                        ),
                        Text(
                          "Departure Time",
                          style: Style.headLineStyle4
                              .copyWith(color: Colors.white),
                        )
                      ]),
                  Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
                    Text(
                      "23",
                      style: Style.headLineStyle3.copyWith(color: Colors.white),
                    ),
                    Text(
                      "Number",
                      style: Style.headLineStyle4.copyWith(color: Colors.white),
                    )
                  ]),
                ],
              )
            ]),
          )
        ]),
      ),
    );
  }
}
