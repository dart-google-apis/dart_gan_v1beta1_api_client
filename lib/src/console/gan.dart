part of gan_v1beta1_api_console;

/** Client to access the gan v1beta1 API */
/** Lets you have programmatic access to your Google Affiliate Network data. */
class Gan extends ConsoleClient {

  AdvertisersResource _advertisers;
  AdvertisersResource get advertisers => _advertisers;
  CcOffersResource _ccOffers;
  CcOffersResource get ccOffers => _ccOffers;
  EventsResource _events;
  EventsResource get events => _events;
  LinksResource _links;
  LinksResource get links => _links;
  PublishersResource _publishers;
  PublishersResource get publishers => _publishers;
  ReportsResource _reports;
  ReportsResource get reports => _reports;

  /** OAuth Scope2: Manage your GAN data */
  static const String GAN_SCOPE = "https://www.googleapis.com/auth/gan";

  /** OAuth Scope2: View your GAN data */
  static const String GAN_READONLY_SCOPE = "https://www.googleapis.com/auth/gan.readonly";

  /**
   * Data format for the response.
   * Added as queryParameter for each request.
   */
  String get alt => params["alt"];
  set alt(String value) => params["alt"] = value;

  /**
   * Selector specifying which fields to include in a partial response.
   * Added as queryParameter for each request.
   */
  String get fields => params["fields"];
  set fields(String value) => params["fields"] = value;

  /**
   * API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
   * Added as queryParameter for each request.
   */
  String get key => params["key"];
  set key(String value) => params["key"] = value;

  /**
   * OAuth 2.0 token for the current user.
   * Added as queryParameter for each request.
   */
  String get oauth_token => params["oauth_token"];
  set oauth_token(String value) => params["oauth_token"] = value;

  /**
   * Returns response with indentations and line breaks.
   * Added as queryParameter for each request.
   */
  bool get prettyPrint => params["prettyPrint"];
  set prettyPrint(bool value) => params["prettyPrint"] = value;

  /**
   * Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
   * Added as queryParameter for each request.
   */
  String get quotaUser => params["quotaUser"];
  set quotaUser(String value) => params["quotaUser"] = value;

  /**
   * IP address of the site where the request originates. Use this if you want to enforce per-user limits.
   * Added as queryParameter for each request.
   */
  String get userIp => params["userIp"];
  set userIp(String value) => params["userIp"] = value;

  Gan([Object auth]) : super(auth) {
    basePath = "/gan/v1beta1/";
    rootUrl = "https://www.googleapis.com:443/";
    _advertisers = new AdvertisersResource(this);
    _ccOffers = new CcOffersResource(this);
    _events = new EventsResource(this);
    _links = new LinksResource(this);
    _publishers = new PublishersResource(this);
    _reports = new ReportsResource(this);
  }
}
