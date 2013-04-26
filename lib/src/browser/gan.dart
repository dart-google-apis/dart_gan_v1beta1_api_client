part of gan_v1beta1_api_browser;

/** Client to access the gan v1beta1 API */
/** Lets you have programmatic access to your Google Affiliate Network data. */
class Gan extends BrowserClient {

  AdvertisersResource_ _advertisers;
  AdvertisersResource_ get advertisers => _advertisers;
  CcOffersResource_ _ccOffers;
  CcOffersResource_ get ccOffers => _ccOffers;
  EventsResource_ _events;
  EventsResource_ get events => _events;
  LinksResource_ _links;
  LinksResource_ get links => _links;
  PublishersResource_ _publishers;
  PublishersResource_ get publishers => _publishers;
  ReportsResource_ _reports;
  ReportsResource_ get reports => _reports;

  /** OAuth Scope2: Manage your GAN data */
  static const core.String GAN_SCOPE = "https://www.googleapis.com/auth/gan";

  /** OAuth Scope2: View your GAN data */
  static const core.String GAN_READONLY_SCOPE = "https://www.googleapis.com/auth/gan.readonly";

  /**
   * Data format for the response.
   * Added as queryParameter for each request.
   */
  core.String get alt => params["alt"];
  set alt(core.String value) => params["alt"] = value;

  /**
   * Selector specifying which fields to include in a partial response.
   * Added as queryParameter for each request.
   */
  core.String get fields => params["fields"];
  set fields(core.String value) => params["fields"] = value;

  /**
   * API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
   * Added as queryParameter for each request.
   */
  core.String get key => params["key"];
  set key(core.String value) => params["key"] = value;

  /**
   * OAuth 2.0 token for the current user.
   * Added as queryParameter for each request.
   */
  core.String get oauth_token => params["oauth_token"];
  set oauth_token(core.String value) => params["oauth_token"] = value;

  /**
   * Returns response with indentations and line breaks.
   * Added as queryParameter for each request.
   */
  core.bool get prettyPrint => params["prettyPrint"];
  set prettyPrint(core.bool value) => params["prettyPrint"] = value;

  /**
   * Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
   * Added as queryParameter for each request.
   */
  core.String get quotaUser => params["quotaUser"];
  set quotaUser(core.String value) => params["quotaUser"] = value;

  /**
   * IP address of the site where the request originates. Use this if you want to enforce per-user limits.
   * Added as queryParameter for each request.
   */
  core.String get userIp => params["userIp"];
  set userIp(core.String value) => params["userIp"] = value;

  Gan([oauth.OAuth2 auth]) : super(auth) {
    basePath = "/gan/v1beta1/";
    rootUrl = "https://www.googleapis.com:443/";
    _advertisers = new AdvertisersResource_(this);
    _ccOffers = new CcOffersResource_(this);
    _events = new EventsResource_(this);
    _links = new LinksResource_(this);
    _publishers = new PublishersResource_(this);
    _reports = new ReportsResource_(this);
  }
}
