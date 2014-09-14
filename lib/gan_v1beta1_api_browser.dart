library gan_v1beta1_api.browser;

import "package:google_oauth2_client/google_oauth2_browser.dart" as oauth;

import 'package:google_gan_v1beta1_api/src/browser_client.dart';
import "package:google_gan_v1beta1_api/gan_v1beta1_api_client.dart";

/** Lets you have programmatic access to your Google Affiliate Network data. */
@deprecated
class Gan extends Client with BrowserClient {

  final oauth.OAuth2 auth;

  Gan([oauth.OAuth2 this.auth]);
}
