library gan_v1beta1_api.browser;

import "package:google_oauth2_client/google_oauth2_browser.dart" as oauth;

import 'package:google_gan_v1beta1_api/src/cloud_api_browser.dart';
import "package:google_gan_v1beta1_api/gan_v1beta1_api_client.dart";

/** Lets you have programmatic access to your Google Affiliate Network data. */
class Gan extends Client with BrowserClient {

  /** OAuth Scope2: Manage your GAN data */
  static const String GAN_SCOPE = "https://www.googleapis.com/auth/gan";

  /** OAuth Scope2: View your GAN data */
  static const String GAN_READONLY_SCOPE = "https://www.googleapis.com/auth/gan.readonly";

  final oauth.OAuth2 auth;

  Gan([oauth.OAuth2 this.auth]);
}
