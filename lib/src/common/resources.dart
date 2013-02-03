part of gan_v1beta1_api_client;

class AdvertisersResource extends Resource {

  AdvertisersResource(Client client) : super(client) {
  }

  /**
   * Retrieves data about a single advertiser if that the requesting advertiser/publisher has access to it. Only publishers can lookup advertisers. Advertisers can request information about themselves by omitting the advertiserId query parameter.
   *
   * [role] - The role of the requester. Valid values: 'advertisers' or 'publishers'.
   *   Allowed values:
   *     advertisers - The requester is requesting as an advertiser.
   *     publishers - The requester is requesting as a publisher.
   *
   * [roleId] - The ID of the requesting advertiser or publisher.
   *
   * [advertiserId] - The ID of the advertiser to look up. Optional.
   *
   * [optParams] - Additional query parameters
   */
  Future<Advertiser> get(String role, String roleId, {String advertiserId, Map optParams}) {
    var completer = new Completer();
    var url = "{role}/{roleId}/advertiser";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (advertiserId != null) queryParams["advertiserId"] = advertiserId;
    if (role == null) paramErrors.add("role is required");
    if (role != null && !["advertisers", "publishers"].contains(role)) {
      paramErrors.add("Allowed values for role: advertisers, publishers");
    }
    if (role != null) urlParams["role"] = role;
    if (roleId == null) paramErrors.add("roleId is required");
    if (roleId != null) urlParams["roleId"] = roleId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Advertiser.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Retrieves data about all advertisers that the requesting advertiser/publisher has access to.
   *
   * [role] - The role of the requester. Valid values: 'advertisers' or 'publishers'.
   *   Allowed values:
   *     advertisers - The requester is requesting as an advertiser.
   *     publishers - The requester is requesting as a publisher.
   *
   * [roleId] - The ID of the requesting advertiser or publisher.
   *
   * [advertiserCategory] - Caret(^) delimted list of advertiser categories. Valid categories are defined here: http://www.google.com/support/affiliatenetwork/advertiser/bin/answer.py?hl=en&answer=107581. Filters out all advertisers not in one of the given advertiser categories. Optional.
   *
   * [maxResults] - Max number of items to return in this page. Optional. Defaults to 20.
   *   Minimum: 0
   *   Maximum: 100
   *
   * [minNinetyDayEpc] - Filters out all advertisers that have a ninety day EPC average lower than the given value (inclusive). Min value: 0.0. Optional.
   *
   * [minPayoutRank] - A value between 1 and 4, where 1 represents the quartile of advertisers with the lowest ranks and 4 represents the quartile of advertisers with the highest ranks. Filters out all advertisers with a lower rank than the given quartile. For example if a 2 was given only advertisers with a payout rank of 25 or higher would be included. Optional.
   *   Minimum: 1
   *   Maximum: 4
   *
   * [minSevenDayEpc] - Filters out all advertisers that have a seven day EPC average lower than the given value (inclusive). Min value: 0.0. Optional.
   *
   * [pageToken] - The value of 'nextPageToken' from the previous page. Optional.
   *
   * [relationshipStatus] - Filters out all advertisers for which do not have the given relationship status with the requesting publisher.
   *   Allowed values:
   *     approved - An advertiser that has approved your application.
   *     available - An advertiser program that's accepting new publishers.
   *     deactivated - Deactivated means either the advertiser has removed you from their program, or it could also mean that you chose to remove yourself from the advertiser's program.
   *     declined - An advertiser that did not approve your application.
   *     pending - An advertiser program that you've already applied to, but they haven't yet decided to approve or decline your application.
   *
   * [optParams] - Additional query parameters
   */
  Future<Advertisers> list(String role, String roleId, {String advertiserCategory, int maxResults, num minNinetyDayEpc, int minPayoutRank, num minSevenDayEpc, String pageToken, String relationshipStatus, Map optParams}) {
    var completer = new Completer();
    var url = "{role}/{roleId}/advertisers";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (advertiserCategory != null) queryParams["advertiserCategory"] = advertiserCategory;
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (minNinetyDayEpc != null) queryParams["minNinetyDayEpc"] = minNinetyDayEpc;
    if (minPayoutRank != null) queryParams["minPayoutRank"] = minPayoutRank;
    if (minSevenDayEpc != null) queryParams["minSevenDayEpc"] = minSevenDayEpc;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (relationshipStatus != null && !["approved", "available", "deactivated", "declined", "pending"].contains(relationshipStatus)) {
      paramErrors.add("Allowed values for relationshipStatus: approved, available, deactivated, declined, pending");
    }
    if (relationshipStatus != null) queryParams["relationshipStatus"] = relationshipStatus;
    if (role == null) paramErrors.add("role is required");
    if (role != null && !["advertisers", "publishers"].contains(role)) {
      paramErrors.add("Allowed values for role: advertisers, publishers");
    }
    if (role != null) urlParams["role"] = role;
    if (roleId == null) paramErrors.add("roleId is required");
    if (roleId != null) urlParams["roleId"] = roleId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Advertisers.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

class CcOffersResource extends Resource {

  CcOffersResource(Client client) : super(client) {
  }

  /**
   * Retrieves credit card offers for the given publisher.
   *
   * [publisher] - The ID of the publisher in question.
   *
   * [advertiser] - The advertiser ID of a card issuer whose offers to include. Optional, may be repeated.
   *
   * [projection] - The set of fields to return.
   *   Allowed values:
   *     full - Include all offer fields. This is the default.
   *     summary - Include only the basic fields needed to display an offer.
   *
   * [optParams] - Additional query parameters
   */
  Future<CcOffers> list(String publisher, {String advertiser, String projection, Map optParams}) {
    var completer = new Completer();
    var url = "publishers/{publisher}/ccOffers";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (advertiser != null) queryParams["advertiser"] = advertiser;
    if (projection != null && !["full", "summary"].contains(projection)) {
      paramErrors.add("Allowed values for projection: full, summary");
    }
    if (projection != null) queryParams["projection"] = projection;
    if (publisher == null) paramErrors.add("publisher is required");
    if (publisher != null) urlParams["publisher"] = publisher;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new CcOffers.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

class EventsResource extends Resource {

  EventsResource(Client client) : super(client) {
  }

  /**
   * Retrieves event data for a given advertiser/publisher.
   *
   * [role] - The role of the requester. Valid values: 'advertisers' or 'publishers'.
   *   Allowed values:
   *     advertisers - The requester is requesting as an advertiser.
   *     publishers - The requester is requesting as a publisher.
   *
   * [roleId] - The ID of the requesting advertiser or publisher.
   *
   * [advertiserId] - Caret(^) delimited list of advertiser IDs. Filters out all events that do not reference one of the given advertiser IDs. Only used when under publishers role. Optional.
   *
   * [chargeType] - Filters out all charge events that are not of the given charge type. Valid values: 'other', 'slotting_fee', 'monthly_minimum', 'tier_bonus', 'credit', 'debit'. Optional.
   *   Allowed values:
   *     credit - A credit increases the publisher's payout amount and decreases the advertiser's invoice amount.
   *     debit - A debit reduces the publisher's payout and increases the advertiser's invoice amount.
   *     monthly_minimum - A payment made to Google by an advertiser as a minimum monthly network fee.
   *     other - Catch all. Default if unset
   *     slotting_fee - A one time payment made from an advertiser to a publisher.
   *     tier_bonus - A payment from an advertiser to a publisher for the publisher maintaining a high tier level
   *
   * [eventDateMax] - Filters out all events later than given date. Optional. Defaults to 24 hours after eventMin.
   *
   * [eventDateMin] - Filters out all events earlier than given date. Optional. Defaults to 24 hours from current date/time.
   *
   * [linkId] - Caret(^) delimited list of link IDs. Filters out all events that do not reference one of the given link IDs. Optional.
   *
   * [maxResults] - Max number of offers to return in this page. Optional. Defaults to 20.
   *   Minimum: 0
   *   Maximum: 100
   *
   * [memberId] - Caret(^) delimited list of member IDs. Filters out all events that do not reference one of the given member IDs. Optional.
   *
   * [modifyDateMax] - Filters out all events modified later than given date. Optional. Defaults to 24 hours after modifyDateMin, if modifyDateMin is explicitly set.
   *
   * [modifyDateMin] - Filters out all events modified earlier than given date. Optional. Defaults to 24 hours before the current modifyDateMax, if modifyDateMax is explicitly set.
   *
   * [orderId] - Caret(^) delimited list of order IDs. Filters out all events that do not reference one of the given order IDs. Optional.
   *
   * [pageToken] - The value of 'nextPageToken' from the previous page. Optional.
   *
   * [productCategory] - Caret(^) delimited list of product categories. Filters out all events that do not reference a product in one of the given product categories. Optional.
   *
   * [publisherId] - Caret(^) delimited list of publisher IDs. Filters out all events that do not reference one of the given publishers IDs. Only used when under advertiser role. Optional.
   *
   * [sku] - Caret(^) delimited list of SKUs. Filters out all events that do not reference one of the given SKU. Optional.
   *
   * [status] - Filters out all events that do not have the given status. Valid values: 'active', 'canceled'. Optional.
   *   Allowed values:
   *     active - Event is currently active.
   *     canceled - Event is currently canceled.
   *
   * [type] - Filters out all events that are not of the given type. Valid values: 'action', 'transaction', 'charge'. Optional.
   *   Allowed values:
   *     action - The completion of an application, sign-up, or other process. For example, an action occurs if a user clicks an ad for a credit card and completes an application for that card.
   *     charge - A charge event is typically a payment between an advertiser, publisher or Google.
   *     transaction - A conversion event, typically an e-commerce transaction. Some advertisers use a transaction to record other types of events, such as magazine subscriptions.
   *
   * [optParams] - Additional query parameters
   */
  Future<Events> list(String role, String roleId, {String advertiserId, String chargeType, String eventDateMax, String eventDateMin, String linkId, int maxResults, String memberId, String modifyDateMax, String modifyDateMin, String orderId, String pageToken, String productCategory, String publisherId, String sku, String status, String type, Map optParams}) {
    var completer = new Completer();
    var url = "{role}/{roleId}/events";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (advertiserId != null) queryParams["advertiserId"] = advertiserId;
    if (chargeType != null && !["credit", "debit", "monthly_minimum", "other", "slotting_fee", "tier_bonus"].contains(chargeType)) {
      paramErrors.add("Allowed values for chargeType: credit, debit, monthly_minimum, other, slotting_fee, tier_bonus");
    }
    if (chargeType != null) queryParams["chargeType"] = chargeType;
    if (eventDateMax != null) queryParams["eventDateMax"] = eventDateMax;
    if (eventDateMin != null) queryParams["eventDateMin"] = eventDateMin;
    if (linkId != null) queryParams["linkId"] = linkId;
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (memberId != null) queryParams["memberId"] = memberId;
    if (modifyDateMax != null) queryParams["modifyDateMax"] = modifyDateMax;
    if (modifyDateMin != null) queryParams["modifyDateMin"] = modifyDateMin;
    if (orderId != null) queryParams["orderId"] = orderId;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (productCategory != null) queryParams["productCategory"] = productCategory;
    if (publisherId != null) queryParams["publisherId"] = publisherId;
    if (role == null) paramErrors.add("role is required");
    if (role != null && !["advertisers", "publishers"].contains(role)) {
      paramErrors.add("Allowed values for role: advertisers, publishers");
    }
    if (role != null) urlParams["role"] = role;
    if (roleId == null) paramErrors.add("roleId is required");
    if (roleId != null) urlParams["roleId"] = roleId;
    if (sku != null) queryParams["sku"] = sku;
    if (status != null && !["active", "canceled"].contains(status)) {
      paramErrors.add("Allowed values for status: active, canceled");
    }
    if (status != null) queryParams["status"] = status;
    if (type != null && !["action", "charge", "transaction"].contains(type)) {
      paramErrors.add("Allowed values for type: action, charge, transaction");
    }
    if (type != null) queryParams["type"] = type;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Events.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

class LinksResource extends Resource {

  LinksResource(Client client) : super(client) {
  }

  /**
   * Retrieves data about a single link if the requesting advertiser/publisher has access to it. Advertisers can look up their own links. Publishers can look up visible links or links belonging to advertisers they are in a relationship with.
   *
   * [role] - The role of the requester. Valid values: 'advertisers' or 'publishers'.
   *   Allowed values:
   *     advertisers - The requester is requesting as an advertiser.
   *     publishers - The requester is requesting as a publisher.
   *
   * [roleId] - The ID of the requesting advertiser or publisher.
   *
   * [linkId] - The ID of the link to look up.
   *
   * [optParams] - Additional query parameters
   */
  Future<Link> get(String role, String roleId, String linkId, {Map optParams}) {
    var completer = new Completer();
    var url = "{role}/{roleId}/link/{linkId}";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (linkId == null) paramErrors.add("linkId is required");
    if (linkId != null) urlParams["linkId"] = linkId;
    if (role == null) paramErrors.add("role is required");
    if (role != null && !["advertisers", "publishers"].contains(role)) {
      paramErrors.add("Allowed values for role: advertisers, publishers");
    }
    if (role != null) urlParams["role"] = role;
    if (roleId == null) paramErrors.add("roleId is required");
    if (roleId != null) urlParams["roleId"] = roleId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Link.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Inserts a new link.
   *
   * [request] - Link to send in this request
   *
   * [role] - The role of the requester. Valid values: 'advertisers' or 'publishers'.
   *   Allowed values:
   *     advertisers - The requester is requesting as an advertiser.
   *     publishers - The requester is requesting as a publisher.
   *
   * [roleId] - The ID of the requesting advertiser or publisher.
   *
   * [optParams] - Additional query parameters
   */
  Future<Link> insert(Link request, String role, String roleId, {Map optParams}) {
    var completer = new Completer();
    var url = "{role}/{roleId}/link";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (role == null) paramErrors.add("role is required");
    if (role != null && !["advertisers", "publishers"].contains(role)) {
      paramErrors.add("Allowed values for role: advertisers, publishers");
    }
    if (role != null) urlParams["role"] = role;
    if (roleId == null) paramErrors.add("roleId is required");
    if (roleId != null) urlParams["roleId"] = roleId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Link.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Retrieves all links that match the query parameters.
   *
   * [role] - The role of the requester. Valid values: 'advertisers' or 'publishers'.
   *   Allowed values:
   *     advertisers - The requester is requesting as an advertiser.
   *     publishers - The requester is requesting as a publisher.
   *
   * [roleId] - The ID of the requesting advertiser or publisher.
   *
   * [advertiserId] - Limits the resulting links to the ones belonging to the listed advertisers.
   *
   * [assetSize] - The size of the given asset.
   *
   * [authorship] - The role of the author of the link.
   *   Allowed values:
   *     advertiser - 
   *     publisher - 
   *
   * [createDateMax] - The end of the create date range.
   *
   * [createDateMin] - The beginning of the create date range.
   *
   * [linkType] - The type of the link.
   *   Allowed values:
   *     banner - 
   *     text - 
   *
   * [maxResults] - Max number of items to return in this page. Optional. Defaults to 20.
   *   Minimum: 0
   *   Maximum: 100
   *
   * [pageToken] - The value of 'nextPageToken' from the previous page. Optional.
   *
   * [promotionType] - The promotion type.
   *   Allowed values:
   *     coupon - 
   *     free_gift - 
   *     free_shipping - 
   *     percent_off - 
   *     price_cut - 
   *
   * [relationshipStatus] - The status of the relationship.
   *   Allowed values:
   *     approved - 
   *     available - 
   *
   * [searchText] - Field for full text search across title and merchandising text, supports link id search.
   *
   * [startDateMax] - The end of the start date range.
   *
   * [startDateMin] - The beginning of the start date range.
   *
   * [optParams] - Additional query parameters
   */
  Future<Links> list(String role, String roleId, {String advertiserId, String assetSize, String authorship, String createDateMax, String createDateMin, String linkType, int maxResults, String pageToken, String promotionType, String relationshipStatus, String searchText, String startDateMax, String startDateMin, Map optParams}) {
    var completer = new Completer();
    var url = "{role}/{roleId}/links";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (advertiserId != null) queryParams["advertiserId"] = advertiserId;
    if (assetSize != null) queryParams["assetSize"] = assetSize;
    if (authorship != null && !["advertiser", "publisher"].contains(authorship)) {
      paramErrors.add("Allowed values for authorship: advertiser, publisher");
    }
    if (authorship != null) queryParams["authorship"] = authorship;
    if (createDateMax != null) queryParams["createDateMax"] = createDateMax;
    if (createDateMin != null) queryParams["createDateMin"] = createDateMin;
    if (linkType != null && !["banner", "text"].contains(linkType)) {
      paramErrors.add("Allowed values for linkType: banner, text");
    }
    if (linkType != null) queryParams["linkType"] = linkType;
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (promotionType != null && !["coupon", "free_gift", "free_shipping", "percent_off", "price_cut"].contains(promotionType)) {
      paramErrors.add("Allowed values for promotionType: coupon, free_gift, free_shipping, percent_off, price_cut");
    }
    if (promotionType != null) queryParams["promotionType"] = promotionType;
    if (relationshipStatus != null && !["approved", "available"].contains(relationshipStatus)) {
      paramErrors.add("Allowed values for relationshipStatus: approved, available");
    }
    if (relationshipStatus != null) queryParams["relationshipStatus"] = relationshipStatus;
    if (role == null) paramErrors.add("role is required");
    if (role != null && !["advertisers", "publishers"].contains(role)) {
      paramErrors.add("Allowed values for role: advertisers, publishers");
    }
    if (role != null) urlParams["role"] = role;
    if (roleId == null) paramErrors.add("roleId is required");
    if (roleId != null) urlParams["roleId"] = roleId;
    if (searchText != null) queryParams["searchText"] = searchText;
    if (startDateMax != null) queryParams["startDateMax"] = startDateMax;
    if (startDateMin != null) queryParams["startDateMin"] = startDateMin;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Links.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

class PublishersResource extends Resource {

  PublishersResource(Client client) : super(client) {
  }

  /**
   * Retrieves data about a single advertiser if that the requesting advertiser/publisher has access to it. Only advertisers can look up publishers. Publishers can request information about themselves by omitting the publisherId query parameter.
   *
   * [role] - The role of the requester. Valid values: 'advertisers' or 'publishers'.
   *   Allowed values:
   *     advertisers - The requester is requesting as an advertiser.
   *     publishers - The requester is requesting as a publisher.
   *
   * [roleId] - The ID of the requesting advertiser or publisher.
   *
   * [publisherId] - The ID of the publisher to look up. Optional.
   *
   * [optParams] - Additional query parameters
   */
  Future<Publisher> get(String role, String roleId, {String publisherId, Map optParams}) {
    var completer = new Completer();
    var url = "{role}/{roleId}/publisher";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (publisherId != null) queryParams["publisherId"] = publisherId;
    if (role == null) paramErrors.add("role is required");
    if (role != null && !["advertisers", "publishers"].contains(role)) {
      paramErrors.add("Allowed values for role: advertisers, publishers");
    }
    if (role != null) urlParams["role"] = role;
    if (roleId == null) paramErrors.add("roleId is required");
    if (roleId != null) urlParams["roleId"] = roleId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Publisher.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Retrieves data about all publishers that the requesting advertiser/publisher has access to.
   *
   * [role] - The role of the requester. Valid values: 'advertisers' or 'publishers'.
   *   Allowed values:
   *     advertisers - The requester is requesting as an advertiser.
   *     publishers - The requester is requesting as a publisher.
   *
   * [roleId] - The ID of the requesting advertiser or publisher.
   *
   * [maxResults] - Max number of items to return in this page. Optional. Defaults to 20.
   *   Minimum: 0
   *   Maximum: 100
   *
   * [minNinetyDayEpc] - Filters out all publishers that have a ninety day EPC average lower than the given value (inclusive). Min value: 0.0. Optional.
   *
   * [minPayoutRank] - A value between 1 and 4, where 1 represents the quartile of publishers with the lowest ranks and 4 represents the quartile of publishers with the highest ranks. Filters out all publishers with a lower rank than the given quartile. For example if a 2 was given only publishers with a payout rank of 25 or higher would be included. Optional.
   *   Minimum: 1
   *   Maximum: 4
   *
   * [minSevenDayEpc] - Filters out all publishers that have a seven day EPC average lower than the given value (inclusive). Min value 0.0. Optional.
   *
   * [pageToken] - The value of 'nextPageToken' from the previous page. Optional.
   *
   * [publisherCategory] - Caret(^) delimted list of publisher categories. Valid categories: (unclassified|community_and_content|shopping_and_promotion|loyalty_and_rewards|network|search_specialist|comparison_shopping|email). Filters out all publishers not in one of the given advertiser categories. Optional.
   *
   * [relationshipStatus] - Filters out all publishers for which do not have the given relationship status with the requesting publisher.
   *   Allowed values:
   *     approved - Publishers you've approved to your program.
   *     available - Publishers available for you to recruit.
   *     deactivated - A publisher that you terminated from your program. Publishers also have the ability to remove themselves from your program.
   *     declined - A publisher that you did not approve to your program.
   *     pending - Publishers that have applied to your program. We recommend reviewing and deciding on pending publishers on a weekly basis.
   *
   * [optParams] - Additional query parameters
   */
  Future<Publishers> list(String role, String roleId, {int maxResults, num minNinetyDayEpc, int minPayoutRank, num minSevenDayEpc, String pageToken, String publisherCategory, String relationshipStatus, Map optParams}) {
    var completer = new Completer();
    var url = "{role}/{roleId}/publishers";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (minNinetyDayEpc != null) queryParams["minNinetyDayEpc"] = minNinetyDayEpc;
    if (minPayoutRank != null) queryParams["minPayoutRank"] = minPayoutRank;
    if (minSevenDayEpc != null) queryParams["minSevenDayEpc"] = minSevenDayEpc;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (publisherCategory != null) queryParams["publisherCategory"] = publisherCategory;
    if (relationshipStatus != null && !["approved", "available", "deactivated", "declined", "pending"].contains(relationshipStatus)) {
      paramErrors.add("Allowed values for relationshipStatus: approved, available, deactivated, declined, pending");
    }
    if (relationshipStatus != null) queryParams["relationshipStatus"] = relationshipStatus;
    if (role == null) paramErrors.add("role is required");
    if (role != null && !["advertisers", "publishers"].contains(role)) {
      paramErrors.add("Allowed values for role: advertisers, publishers");
    }
    if (role != null) urlParams["role"] = role;
    if (roleId == null) paramErrors.add("roleId is required");
    if (roleId != null) urlParams["roleId"] = roleId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Publishers.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

class ReportsResource extends Resource {

  ReportsResource(Client client) : super(client) {
  }

  /**
   * Retrieves a report of the specified type.
   *
   * [role] - The role of the requester. Valid values: 'advertisers' or 'publishers'.
   *   Allowed values:
   *     advertisers - The requester is requesting as an advertiser.
   *     publishers - The requester is requesting as a publisher.
   *
   * [roleId] - The ID of the requesting advertiser or publisher.
   *
   * [reportType] - The type of report being requested. Valid values: 'order_delta'. Required.
   *   Allowed values:
   *     order_delta - The order delta report type.
   *
   * [endDate] - The end date for the report data to be returned. Required.
   *
   * [startDate] - The start date for the report data to be returned. Required.
   *
   * [advertiserId] - The IDs of the advertisers to look up, if applicable.
   *
   * [calculateTotals] - Whether or not to calculate totals rows. Optional.
   *
   * [eventType] - Filters out all events that are not of the given type. Valid values: 'action', 'transaction', or 'charge'. Optional.
   *   Allowed values:
   *     action - Event type is action.
   *     charge - Event type is charge.
   *     transaction - Event type is transaction.
   *
   * [linkId] - Filters to capture one of given link IDs. Optional.
   *
   * [maxResults] - Max number of items to return in this page. Optional. Defaults to return all results.
   *   Minimum: 0
   *
   * [orderId] - Filters to capture one of the given order IDs. Optional.
   *
   * [publisherId] - The IDs of the publishers to look up, if applicable.
   *
   * [startIndex] - Offset on which to return results when paging. Optional.
   *   Minimum: 0
   *
   * [status] - Filters out all events that do not have the given status. Valid values: 'active', 'canceled', or 'invalid'. Optional.
   *   Allowed values:
   *     active - Event is currently active.
   *     canceled - Event is currently canceled.
   *     invalid - Event is currently invalid.
   *
   * [optParams] - Additional query parameters
   */
  Future<Report> get(String role, String roleId, String reportType, String endDate, String startDate, {String advertiserId, bool calculateTotals, String eventType, String linkId, int maxResults, String orderId, String publisherId, int startIndex, String status, Map optParams}) {
    var completer = new Completer();
    var url = "{role}/{roleId}/report/{reportType}";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (advertiserId != null) queryParams["advertiserId"] = advertiserId;
    if (calculateTotals != null) queryParams["calculateTotals"] = calculateTotals;
    if (endDate == null) paramErrors.add("endDate is required");
    if (endDate != null) queryParams["endDate"] = endDate;
    if (eventType != null && !["action", "charge", "transaction"].contains(eventType)) {
      paramErrors.add("Allowed values for eventType: action, charge, transaction");
    }
    if (eventType != null) queryParams["eventType"] = eventType;
    if (linkId != null) queryParams["linkId"] = linkId;
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (orderId != null) queryParams["orderId"] = orderId;
    if (publisherId != null) queryParams["publisherId"] = publisherId;
    if (reportType == null) paramErrors.add("reportType is required");
    if (reportType != null && !["order_delta"].contains(reportType)) {
      paramErrors.add("Allowed values for reportType: order_delta");
    }
    if (reportType != null) urlParams["reportType"] = reportType;
    if (role == null) paramErrors.add("role is required");
    if (role != null && !["advertisers", "publishers"].contains(role)) {
      paramErrors.add("Allowed values for role: advertisers, publishers");
    }
    if (role != null) urlParams["role"] = role;
    if (roleId == null) paramErrors.add("roleId is required");
    if (roleId != null) urlParams["roleId"] = roleId;
    if (startDate == null) paramErrors.add("startDate is required");
    if (startDate != null) queryParams["startDate"] = startDate;
    if (startIndex != null) queryParams["startIndex"] = startIndex;
    if (status != null && !["active", "canceled", "invalid"].contains(status)) {
      paramErrors.add("Allowed values for status: active, canceled, invalid");
    }
    if (status != null) queryParams["status"] = status;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Report.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

