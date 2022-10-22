import 'package:flutter/material.dart';
import 'package:flutter_hw/model/Profile.dart';
import 'package:flutter_hw/ui/detailprofile.dart';
import 'package:flutter_hw/ui/main.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(routes: [
  GoRoute(
      path: '/detail',
      builder: (context, state) {
        final data = state.extra;
        if (data is Profile) {
          return DetailProfile(data: data);
        }
        return const Scaffold(
          body: Center(
            child: Text("Not Found :("),
          ),
        );
      }),
  GoRoute(path: '/', builder: (context, state) => HomePage())
]);
