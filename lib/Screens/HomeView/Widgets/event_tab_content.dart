import 'package:ethiocart/Screens/HomeView/event_search.dart';
import 'package:flutter/material.dart';
import 'home_page_widgets.dart';

class EventTab extends StatefulWidget {
  const EventTab({Key? key}) : super(key: key);

  @override
  State<EventTab> createState() => _EventTabState();
}

class _EventTabState extends State<EventTab> {
  @override
  Widget build(BuildContext context) {
    return eventTabContent();
  }

  Container eventTabContent() {
    return Container(
      color: Colors.white,
      child: Stack(
        children: [
          ListView(
            scrollDirection: Axis.vertical,
            children: [
              Column(
                children: [
                  eventSearchBar(),
                ],
                crossAxisAlignment: CrossAxisAlignment.start,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    for (var i = 0; i < 6; i++) const cardListScreen(),
                  ],
                ),
              ),
              //category viewer
              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      for (var i = 0; i < 6; i++) PopularEvents(),
                    ],
                  )),
              const eventTypesScreen(),
              Container(
                margin: const EdgeInsets.only(left: 10),
                child: Column(
                  children: [
                    for (var i = 0; i < 4; i++)
                      Row(
                        children: const[
                           SizedBox(
                            width: 195,
                            child: FittedBox(
                              child: gridCard(),
                            ),
                          ),
                           SizedBox(
                            width: 195,
                            child: FittedBox(
                              child: gridCard(),
                            ),
                          ),
                        ],
                      ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}