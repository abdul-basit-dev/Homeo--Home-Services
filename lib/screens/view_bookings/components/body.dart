import 'package:flutter/material.dart';
import 'package:handyman/screens/view_bookings/components/tab_completed_bookings.dart';
import 'package:handyman/screens/view_bookings/components/tab_pending_offers.dart';

import 'tab_active_bookings.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return const TabBarView(
      children: <Widget>[
        TabPendingOffers(),
        ActiveBookings(),
        CompletedBookings(),
      ],
    );
  }
}
