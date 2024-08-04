part of 'app_router.dart';

@TypedGoRoute<LandingPageRoute>(path: LandingPageRoute.path)
class LandingPageRoute extends GoRouteData {
  const LandingPageRoute();

  static const path = '/';

  @override
  Widget build(BuildContext context, GoRouterState state) => const LandingPage(
        currentItem: LandingPageItems.home,
      );
}

@TypedGoRoute<MyServicesRoute>(path: MyServicesRoute.path)
class MyServicesRoute extends GoRouteData {
  const MyServicesRoute();

  static const path = '/my-services';

  @override
  Widget build(BuildContext context, GoRouterState state) => const LandingPage(
        currentItem: LandingPageItems.myServices,
      );
}

@TypedGoRoute<PortfolioRoute>(path: PortfolioRoute.path)
class PortfolioRoute extends GoRouteData {
  const PortfolioRoute();

  static const path = '/portfolio';

  @override
  Widget build(BuildContext context, GoRouterState state) => const LandingPage(
        currentItem: LandingPageItems.portfolio,
      );
}

@TypedGoRoute<ContactMeRoute>(path: ContactMeRoute.path)
class ContactMeRoute extends GoRouteData {
  const ContactMeRoute();

  static const path = '/contact-me';

  @override
  Widget build(BuildContext context, GoRouterState state) => const LandingPage(
        currentItem: LandingPageItems.contactMe,
      );
}
