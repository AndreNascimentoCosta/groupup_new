import 'package:flutter/material.dart';

/// `GURoutes` is a class that contains a static map of all the named routes in the app
class GURoute {
  const GURoute._();

  /// `GURoute` is a factory constructor that returns a singleton instance of `GURoute`
  factory GURoute() => const GURoute._();

  /// `generateRoute` is a function that takes a `RouteSettings` object as an argument and returns a
  /// `Route` object
  ///
  /// Args:
  ///   settings (RouteSettings): This is the RouteSettings object that contains the name of the route and
  /// any arguments that were passed to it.

  static Route<dynamic>? generateRoute(RouteSettings settings) {
    /// Getting the route name that were passed to the route.
    final routeName = settings.name;

    switch (routeName) {}
    return null;
  }
}
