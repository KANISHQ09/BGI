import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'index.dart';

void main() {
  runApp(const CivicPulseApp());
}

class CivicPulseApp extends StatelessWidget {
  const CivicPulseApp({super.key});

  static final GoRouter _router = GoRouter(
    initialLocation: LandingPageWidget.routePath,
    routes: [
      GoRoute(
        name: LandingPageWidget.routeName,
        path: LandingPageWidget.routePath,
        builder: (context, state) => const LandingPageWidget(),
      ),
      GoRoute(
        name: LoginSignupWidget.routeName,
        path: LoginSignupWidget.routePath,
        builder: (context, state) => const LoginSignupWidget(),
      ),
      GoRoute(
        name: CitizenDashboardWidget.routeName,
        path: CitizenDashboardWidget.routePath,
        builder: (context, state) => const CitizenDashboardWidget(),
      ),
      GoRoute(
        name: DepartmentAdminDashboardWidget.routeName,
        path: DepartmentAdminDashboardWidget.routePath,
        builder: (context, state) => const DepartmentAdminDashboardWidget(),
      ),
      GoRoute(
        name: PublicCivicFeedWidget.routeName,
        path: PublicCivicFeedWidget.routePath,
        builder: (context, state) => const PublicCivicFeedWidget(),
      ),
      GoRoute(
        name: LiveCivicMapWidget.routeName,
        path: LiveCivicMapWidget.routePath,
        builder: (context, state) => const LiveCivicMapWidget(),
      ),
      GoRoute(
        name: NearbyIssuesWidget.routeName,
        path: NearbyIssuesWidget.routePath,
        builder: (context, state) => const NearbyIssuesWidget(),
      ),
      GoRoute(
        name: ReportComplaintWidget.routeName,
        path: ReportComplaintWidget.routePath,
        builder: (context, state) => const ReportComplaintWidget(),
      ),
      GoRoute(
        name: ComplaintDetailWidget.routeName,
        path: ComplaintDetailWidget.routePath,
        builder: (context, state) => const ComplaintDetailWidget(),
      ),
      GoRoute(
        name: UserProfileSettingsWidget.routeName,
        path: UserProfileSettingsWidget.routePath,
        builder: (context, state) => const UserProfileSettingsWidget(),
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Civic Pulse',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF2563EB)),
        scaffoldBackgroundColor: const Color(0xFFF8FAFC),
      ),
      routerConfig: _router,
    );
  }
}
