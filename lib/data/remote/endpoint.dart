
// ignore_for_file: constant_identifier_names

class Environments {
  static const String PRODUCTION = '';
  static const String DEV = 'http://188.166.210.146:4009/jdi/api/v1';
  static const String LOCAL = 'http://192.168.1.2:1234/api/v1';

  static String currentEnvironments = Environments.DEV;

  static setEnvironment(String value) => currentEnvironments = value;

  static String getEnvironments() => currentEnvironments;

  static String getEnvironmentsLocal() => Environments.LOCAL;
}

class BaseUrlLocal {
  static String baseUrlLocal = Environments.getEnvironmentsLocal();

  static String barangTest = "$baseUrlLocal/barang";

  // static String partnersPKS({int? partnerID}) 
  //   => "$baseUrl/partners/${partnerID.toString()}/pks";
}

class BaseUrl {
  static String baseUrl = Environments.getEnvironments();
  
  // Auth
  static String login = "$baseUrl/auth/login";
  static String refreshToken = "$baseUrl/auth/refresh";
}