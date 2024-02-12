
// ignore_for_file: constant_identifier_names

class Environments {
  static const String PRODUCTION = '';
  static const String DEV = 'http://188.166.210.146:4009/jdi/api/v1';
  static const String LOCAL = 'http://192.168.1.16:4000/api/v1';

  static String currentEnvironments = Environments.DEV;

  static setEnvironment(String value) => currentEnvironments = value;

  static String getEnvironments() => currentEnvironments;

  static String getEnvironmentsLocal() => Environments.LOCAL;
}

class BaseUrlLocal {
  static String baseUrlLocal = Environments.getEnvironmentsLocal();

  // User
  static String user = "$baseUrlLocal/users";
  static String userByUID({String? uid}) => "$baseUrlLocal/users/uid/$uid";
  static String userByID({int? userId}) => "$baseUrlLocal/users/$userId";

  // Roles
  static String role = "$baseUrlLocal/roles";
  static String roleByID({int? roleId}) => "$baseUrlLocal/roles/$roleId";

  // Product
  static String product = "$baseUrlLocal/products";

  // Sale
  static String sale = "$baseUrlLocal/sales";
  static String saleDetail({int? saleID}) => "$baseUrlLocal/sales/detail/$saleID";
}

class BaseUrl {
  static String baseUrl = Environments.getEnvironments();
  
  // User
  static String user = "$baseUrl/users";
  static String userByID({int? userId}) => "$baseUrl/users/$userId";

  // Roles
  static String role = "$baseUrl/roles";
  static String roleByID({int? roleId}) => "$baseUrl/roles/$roleId";

  // Product
  static String product = "$baseUrl/products";

  // Sale
  static String sale = "$baseUrl/sales";
  static String saleDetail({int? saleID}) => "$baseUrl/sales/detail/$saleID";
}