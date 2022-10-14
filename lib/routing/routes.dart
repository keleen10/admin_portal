// ignore_for_file: constant_identifier_names

const rootRoute = '/';
const OverviewPageDisplayName = 'Overview';
const OverViewPageRoute = '/overview';

const ClientPageDisplayName = 'Clients';
const ClientPageRoute = '/clients';
const AuthenticationPageDisplayName = 'Log out';
const AuthenticationPageRoute = '/auth';

class MenuItem {
  final String name;
  final String route;

  MenuItem(this.name, this.route);
}

List<MenuItem> sideMenuItemRoutes = [
  MenuItem(OverviewPageDisplayName, OverViewPageRoute),
  MenuItem(ClientPageDisplayName, ClientPageRoute),
  MenuItem(AuthenticationPageDisplayName, AuthenticationPageRoute),
];
