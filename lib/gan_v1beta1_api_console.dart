library gan_v1beta1_api.console;

import "package:google_oauth2_client/google_oauth2_console.dart" as oauth2;

import 'package:google_gan_v1beta1_api/src/console_client.dart';

import "package:google_gan_v1beta1_api/gan_v1beta1_api_client.dart";

/** Lets you have programmatic access to your Google Affiliate Network data. */
class Gan extends Client with ConsoleClient {

  /** OAuth Scope2: Manage your GAN data */
  static const String GAN_SCOPE = "https://www.googleapis.com/auth/gan";

  /** OAuth Scope2: View your GAN data */
  static const String GAN_READONLY_SCOPE = "https://www.googleapis.com/auth/gan.readonly";

  final oauth2.OAuth2Console auth;

  Gan([oauth2.OAuth2Console this.auth]);
}
