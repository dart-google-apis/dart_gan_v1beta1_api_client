part of gan_v1beta1_api_client;

/** An AdvertiserResource. */
class Advertiser {

  /** True if the advertiser allows publisher created links, otherwise false. */
  core.bool allowPublisherCreatedLinks;

  /** Category that this advertiser belongs to. A valid list of categories can be found here: http://www.google.com/support/affiliatenetwork/advertiser/bin/answer.py?hl=en&answer=107581 */
  core.String category;

  /** The longest possible length of a commission (how long the cookies on the customer's browser last before they expire). */
  core.int commissionDuration;

  /** Email that this advertiser would like publishers to contact them with. */
  core.String contactEmail;

  /** Phone that this advertiser would like publishers to contact them with. */
  core.String contactPhone;

  /** The default link id for this advertiser. */
  core.int defaultLinkId;

  /** Description of the website the advertiser advertises from. */
  core.String description;

  /** The sum of fees paid to publishers divided by the total number of clicks over the past three months. This value should be multiplied by 100 at the time of display. */
  Money epcNinetyDayAverage;

  /** The sum of fees paid to publishers divided by the total number of clicks over the past seven days. This value should be multiplied by 100 at the time of display. */
  Money epcSevenDayAverage;

  /** The ID of this advertiser. */
  core.int id;

  /** The requested advertiser. */
  Advertiser item;

  /** Date that this advertiser was approved as a Google Affiliate Network advertiser. */
  core.String joinDate;

  /** The kind for an advertiser. */
  core.String kind;

  /** URL to the logo this advertiser uses on the Google Affiliate Network. */
  core.String logoUrl;

  /** List of merchant center ids for this advertiser */
  core.List<core.int> merchantCenterIds;

  /** The name of this advertiser. */
  core.String name;

  /** A rank based on commissions paid to publishers over the past 90 days. A number between 1 and 4 where 4 means the top quartile (most money paid) and 1 means the bottom quartile (least money paid). */
  core.String payoutRank;

  /** Allows advertisers to submit product listings to Google Product Search. */
  core.bool productFeedsEnabled;

  /** List of redirect URLs for this advertiser */
  core.List<core.String> redirectDomains;

  /** URL of the website this advertiser advertises from. */
  core.String siteUrl;

  /** The status of the requesting publisher's relationship this advertiser. */
  core.String status;

  /** Create new Advertiser from JSON data */
  Advertiser.fromJson(core.Map json) {
    if (json.containsKey("allowPublisherCreatedLinks")) {
      allowPublisherCreatedLinks = json["allowPublisherCreatedLinks"];
    }
    if (json.containsKey("category")) {
      category = json["category"];
    }
    if (json.containsKey("commissionDuration")) {
      commissionDuration = json["commissionDuration"];
    }
    if (json.containsKey("contactEmail")) {
      contactEmail = json["contactEmail"];
    }
    if (json.containsKey("contactPhone")) {
      contactPhone = json["contactPhone"];
    }
    if (json.containsKey("defaultLinkId")) {
      defaultLinkId = json["defaultLinkId"];
    }
    if (json.containsKey("description")) {
      description = json["description"];
    }
    if (json.containsKey("epcNinetyDayAverage")) {
      epcNinetyDayAverage = new Money.fromJson(json["epcNinetyDayAverage"]);
    }
    if (json.containsKey("epcSevenDayAverage")) {
      epcSevenDayAverage = new Money.fromJson(json["epcSevenDayAverage"]);
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("item")) {
      item = new Advertiser.fromJson(json["item"]);
    }
    if (json.containsKey("joinDate")) {
      joinDate = json["joinDate"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("logoUrl")) {
      logoUrl = json["logoUrl"];
    }
    if (json.containsKey("merchantCenterIds")) {
      merchantCenterIds = [];
      json["merchantCenterIds"].forEach((item) {
        merchantCenterIds.add(item);
      });
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("payoutRank")) {
      payoutRank = json["payoutRank"];
    }
    if (json.containsKey("productFeedsEnabled")) {
      productFeedsEnabled = json["productFeedsEnabled"];
    }
    if (json.containsKey("redirectDomains")) {
      redirectDomains = [];
      json["redirectDomains"].forEach((item) {
        redirectDomains.add(item);
      });
    }
    if (json.containsKey("siteUrl")) {
      siteUrl = json["siteUrl"];
    }
    if (json.containsKey("status")) {
      status = json["status"];
    }
  }

  /** Create JSON Object for Advertiser */
  core.Map toJson() {
    var output = new core.Map();

    if (allowPublisherCreatedLinks != null) {
      output["allowPublisherCreatedLinks"] = allowPublisherCreatedLinks;
    }
    if (category != null) {
      output["category"] = category;
    }
    if (commissionDuration != null) {
      output["commissionDuration"] = commissionDuration;
    }
    if (contactEmail != null) {
      output["contactEmail"] = contactEmail;
    }
    if (contactPhone != null) {
      output["contactPhone"] = contactPhone;
    }
    if (defaultLinkId != null) {
      output["defaultLinkId"] = defaultLinkId;
    }
    if (description != null) {
      output["description"] = description;
    }
    if (epcNinetyDayAverage != null) {
      output["epcNinetyDayAverage"] = epcNinetyDayAverage.toJson();
    }
    if (epcSevenDayAverage != null) {
      output["epcSevenDayAverage"] = epcSevenDayAverage.toJson();
    }
    if (id != null) {
      output["id"] = id;
    }
    if (item != null) {
      output["item"] = item.toJson();
    }
    if (joinDate != null) {
      output["joinDate"] = joinDate;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (logoUrl != null) {
      output["logoUrl"] = logoUrl;
    }
    if (merchantCenterIds != null) {
      output["merchantCenterIds"] = new core.List();
      merchantCenterIds.forEach((item) {
        output["merchantCenterIds"].add(item);
      });
    }
    if (name != null) {
      output["name"] = name;
    }
    if (payoutRank != null) {
      output["payoutRank"] = payoutRank;
    }
    if (productFeedsEnabled != null) {
      output["productFeedsEnabled"] = productFeedsEnabled;
    }
    if (redirectDomains != null) {
      output["redirectDomains"] = new core.List();
      redirectDomains.forEach((item) {
        output["redirectDomains"].add(item);
      });
    }
    if (siteUrl != null) {
      output["siteUrl"] = siteUrl;
    }
    if (status != null) {
      output["status"] = status;
    }

    return output;
  }

  /** Return String representation of Advertiser */
  core.String toString() => JSON.stringify(this.toJson());

}

class Advertisers {

  /** The advertiser list. */
  core.List<Advertiser> items;

  /** The kind for a page of advertisers. */
  core.String kind;

  /** The 'pageToken' to pass to the next request to get the next page, if there are more to retrieve. */
  core.String nextPageToken;

  /** Create new Advertisers from JSON data */
  Advertisers.fromJson(core.Map json) {
    if (json.containsKey("items")) {
      items = [];
      json["items"].forEach((item) {
        items.add(new Advertiser.fromJson(item));
      });
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
  }

  /** Create JSON Object for Advertisers */
  core.Map toJson() {
    var output = new core.Map();

    if (items != null) {
      output["items"] = new core.List();
      items.forEach((item) {
        output["items"].add(item.toJson());
      });
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }

    return output;
  }

  /** Return String representation of Advertisers */
  core.String toString() => JSON.stringify(this.toJson());

}

/** A credit card offer. There are many possible result fields. We provide two different views of the data, or "projections." The "full" projection includes every result field. And the "summary" projection, which is the default, includes a smaller subset of the fields. The fields included in the summary projection are marked as such in their descriptions. */
class CcOffer {

  /** More marketing copy about the card's benefits. A summary field. */
  core.List<core.String> additionalCardBenefits;

  /** Any extra fees levied on card holders. */
  core.String additionalCardHolderFee;

  /** The youngest a recipient of this card may be. */
  core.num ageMinimum;

  /** Text describing the details of the age minimum restriction. */
  core.String ageMinimumDetails;

  /** The ongoing annual fee, in dollars. */
  core.num annualFee;

  /** Text describing the annual fee, including any difference for the first year. A summary field. */
  core.String annualFeeDisplay;

  /** The largest number of units you may accumulate in a year. */
  core.num annualRewardMaximum;

  /** Possible categories for this card, eg "Low Interest" or "Good." A summary field. */
  core.List<core.String> approvedCategories;

  /** Text describing the purchase APR. A summary field. */
  core.String aprDisplay;

  /** Text describing how the balance is computed. A summary field. */
  core.String balanceComputationMethod;

  /** Text describing the terms for balance transfers. A summary field. */
  core.String balanceTransferTerms;

  /** For cards with rewards programs, extra circumstances whereby additional rewards may be granted. */
  core.List<CcOfferBonusRewards> bonusRewards;

  /** If you get coverage when you use the card for the given activity, this field describes it. */
  core.String carRentalInsurance;

  /** A list of what the issuer thinks are the most important benefits of the card. Usually summarizes the rewards program, if there is one. A summary field. */
  core.List<core.String> cardBenefits;

  /** The issuer's name for the card, including any trademark or service mark designators. A summary field. */
  core.String cardName;

  /** What kind of credit card this is, for example secured or unsecured. */
  core.String cardType;

  /** Text describing the terms for cash advances. A summary field. */
  core.String cashAdvanceTerms;

  /** The high end for credit limits the issuer imposes on recipients of this card. */
  core.num creditLimitMax;

  /** The low end for credit limits the issuer imposes on recipients of this card. */
  core.num creditLimitMin;

  /** Text describing the credit ratings required for recipients of this card, for example "Excellent/Good." A summary field. */
  core.String creditRatingDisplay;

  /** Fees for defaulting on your payments. */
  core.List<CcOfferDefaultFees> defaultFees;

  /** A notice that, if present, is referenced via an asterisk by many of the other summary fields. If this field is present, it will always start with an asterisk ("*"), and must be prominently displayed with the offer. A summary field. */
  core.String disclaimer;

  /** If you get coverage when you use the card for the given activity, this field describes it. */
  core.String emergencyInsurance;

  /** Whether this card is only available to existing customers of the issuer. */
  core.bool existingCustomerOnly;

  /** If you get coverage when you use the card for the given activity, this field describes it. */
  core.String extendedWarranty;

  /** The annual fee for the first year, if different from the ongoing fee. Optional. */
  core.num firstYearAnnualFee;

  /** If you get coverage when you use the card for the given activity, this field describes it. */
  core.String flightAccidentInsurance;

  /** Fee for each transaction involving a foreign currency. */
  core.String foreignCurrencyTransactionFee;

  /** If you get coverage when you use the card for the given activity, this field describes it. */
  core.String fraudLiability;

  /** Text describing the grace period before finance charges apply. A summary field. */
  core.String gracePeriodDisplay;

  /** The link to the image of the card that is shown on Connect Commerce. A summary field. */
  core.String imageUrl;

  /** Fee for setting up the card. */
  core.String initialSetupAndProcessingFee;

  /** Text describing the terms for introductory period balance transfers. A summary field. */
  core.String introBalanceTransferTerms;

  /** Text describing the terms for introductory period cash advances. A summary field. */
  core.String introCashAdvanceTerms;

  /** Text describing the terms for introductory period purchases. A summary field. */
  core.String introPurchaseTerms;

  /** Name of card issuer. A summary field. */
  core.String issuer;

  /** The Google Affiliate Network ID of the advertiser making this offer. */
  core.String issuerId;

  /** The generic link to the issuer's site. */
  core.String issuerWebsite;

  /** The kind for one credit card offer. A summary field. */
  core.String kind;

  /** The link to the issuer's page for this card. A summary field. */
  core.String landingPageUrl;

  /** Text describing how much a late payment will cost, eg "up to $35." A summary field. */
  core.String latePaymentFee;

  /** If you get coverage when you use the card for the given activity, this field describes it. */
  core.String luggageInsurance;

  /** The highest interest rate the issuer charges on this card. Expressed as an absolute number, not as a percentage. */
  core.num maxPurchaseRate;

  /** The lowest interest rate the issuer charges on this card. Expressed as an absolute number, not as a percentage. */
  core.num minPurchaseRate;

  /** Text describing how much missing the grace period will cost. */
  core.String minimumFinanceCharge;

  /** Which network (eg Visa) the card belongs to. A summary field. */
  core.String network;

  /** This offer's ID. A summary field. */
  core.String offerId;

  /** Whether a cash reward program lets you get cash back sooner than end of year or other longish period. */
  core.bool offersImmediateCashReward;

  /** Fee for exceeding the card's charge limit. */
  core.String overLimitFee;

  /** Categories in which the issuer does not wish the card to be displayed. A summary field. */
  core.List<core.String> prohibitedCategories;

  /** Text describing any additional details for the purchase rate. A summary field. */
  core.String purchaseRateAdditionalDetails;

  /** Fixed or variable. */
  core.String purchaseRateType;

  /** Text describing the fee for a payment that doesn't clear. A summary field. */
  core.String returnedPaymentFee;

  /** The company that redeems the rewards, if different from the issuer. */
  core.String rewardPartner;

  /** For cards with rewards programs, the unit of reward. For example, miles, cash back, points. */
  core.String rewardUnit;

  /** For cards with rewards programs, detailed rules about how the program works. */
  core.List<CcOfferRewards> rewards;

  /** Whether accumulated rewards ever expire. */
  core.bool rewardsExpire;

  /** For airline miles rewards, tells whether blackout dates apply to the miles. */
  core.bool rewardsHaveBlackoutDates;

  /** Fee for requesting a copy of your statement. */
  core.String statementCopyFee;

  /** The link to ping to register a click on this offer. A summary field. */
  core.String trackingUrl;

  /** If you get coverage when you use the card for the given activity, this field describes it. */
  core.String travelInsurance;

  /** When variable rates were last updated. */
  core.String variableRatesLastUpdated;

  /** How often variable rates are updated. */
  core.String variableRatesUpdateFrequency;

  /** Create new CcOffer from JSON data */
  CcOffer.fromJson(core.Map json) {
    if (json.containsKey("additionalCardBenefits")) {
      additionalCardBenefits = [];
      json["additionalCardBenefits"].forEach((item) {
        additionalCardBenefits.add(item);
      });
    }
    if (json.containsKey("additionalCardHolderFee")) {
      additionalCardHolderFee = json["additionalCardHolderFee"];
    }
    if (json.containsKey("ageMinimum")) {
      ageMinimum = json["ageMinimum"];
    }
    if (json.containsKey("ageMinimumDetails")) {
      ageMinimumDetails = json["ageMinimumDetails"];
    }
    if (json.containsKey("annualFee")) {
      annualFee = json["annualFee"];
    }
    if (json.containsKey("annualFeeDisplay")) {
      annualFeeDisplay = json["annualFeeDisplay"];
    }
    if (json.containsKey("annualRewardMaximum")) {
      annualRewardMaximum = json["annualRewardMaximum"];
    }
    if (json.containsKey("approvedCategories")) {
      approvedCategories = [];
      json["approvedCategories"].forEach((item) {
        approvedCategories.add(item);
      });
    }
    if (json.containsKey("aprDisplay")) {
      aprDisplay = json["aprDisplay"];
    }
    if (json.containsKey("balanceComputationMethod")) {
      balanceComputationMethod = json["balanceComputationMethod"];
    }
    if (json.containsKey("balanceTransferTerms")) {
      balanceTransferTerms = json["balanceTransferTerms"];
    }
    if (json.containsKey("bonusRewards")) {
      bonusRewards = [];
      json["bonusRewards"].forEach((item) {
        bonusRewards.add(new CcOfferBonusRewards.fromJson(item));
      });
    }
    if (json.containsKey("carRentalInsurance")) {
      carRentalInsurance = json["carRentalInsurance"];
    }
    if (json.containsKey("cardBenefits")) {
      cardBenefits = [];
      json["cardBenefits"].forEach((item) {
        cardBenefits.add(item);
      });
    }
    if (json.containsKey("cardName")) {
      cardName = json["cardName"];
    }
    if (json.containsKey("cardType")) {
      cardType = json["cardType"];
    }
    if (json.containsKey("cashAdvanceTerms")) {
      cashAdvanceTerms = json["cashAdvanceTerms"];
    }
    if (json.containsKey("creditLimitMax")) {
      creditLimitMax = json["creditLimitMax"];
    }
    if (json.containsKey("creditLimitMin")) {
      creditLimitMin = json["creditLimitMin"];
    }
    if (json.containsKey("creditRatingDisplay")) {
      creditRatingDisplay = json["creditRatingDisplay"];
    }
    if (json.containsKey("defaultFees")) {
      defaultFees = [];
      json["defaultFees"].forEach((item) {
        defaultFees.add(new CcOfferDefaultFees.fromJson(item));
      });
    }
    if (json.containsKey("disclaimer")) {
      disclaimer = json["disclaimer"];
    }
    if (json.containsKey("emergencyInsurance")) {
      emergencyInsurance = json["emergencyInsurance"];
    }
    if (json.containsKey("existingCustomerOnly")) {
      existingCustomerOnly = json["existingCustomerOnly"];
    }
    if (json.containsKey("extendedWarranty")) {
      extendedWarranty = json["extendedWarranty"];
    }
    if (json.containsKey("firstYearAnnualFee")) {
      firstYearAnnualFee = json["firstYearAnnualFee"];
    }
    if (json.containsKey("flightAccidentInsurance")) {
      flightAccidentInsurance = json["flightAccidentInsurance"];
    }
    if (json.containsKey("foreignCurrencyTransactionFee")) {
      foreignCurrencyTransactionFee = json["foreignCurrencyTransactionFee"];
    }
    if (json.containsKey("fraudLiability")) {
      fraudLiability = json["fraudLiability"];
    }
    if (json.containsKey("gracePeriodDisplay")) {
      gracePeriodDisplay = json["gracePeriodDisplay"];
    }
    if (json.containsKey("imageUrl")) {
      imageUrl = json["imageUrl"];
    }
    if (json.containsKey("initialSetupAndProcessingFee")) {
      initialSetupAndProcessingFee = json["initialSetupAndProcessingFee"];
    }
    if (json.containsKey("introBalanceTransferTerms")) {
      introBalanceTransferTerms = json["introBalanceTransferTerms"];
    }
    if (json.containsKey("introCashAdvanceTerms")) {
      introCashAdvanceTerms = json["introCashAdvanceTerms"];
    }
    if (json.containsKey("introPurchaseTerms")) {
      introPurchaseTerms = json["introPurchaseTerms"];
    }
    if (json.containsKey("issuer")) {
      issuer = json["issuer"];
    }
    if (json.containsKey("issuerId")) {
      issuerId = json["issuerId"];
    }
    if (json.containsKey("issuerWebsite")) {
      issuerWebsite = json["issuerWebsite"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("landingPageUrl")) {
      landingPageUrl = json["landingPageUrl"];
    }
    if (json.containsKey("latePaymentFee")) {
      latePaymentFee = json["latePaymentFee"];
    }
    if (json.containsKey("luggageInsurance")) {
      luggageInsurance = json["luggageInsurance"];
    }
    if (json.containsKey("maxPurchaseRate")) {
      maxPurchaseRate = json["maxPurchaseRate"];
    }
    if (json.containsKey("minPurchaseRate")) {
      minPurchaseRate = json["minPurchaseRate"];
    }
    if (json.containsKey("minimumFinanceCharge")) {
      minimumFinanceCharge = json["minimumFinanceCharge"];
    }
    if (json.containsKey("network")) {
      network = json["network"];
    }
    if (json.containsKey("offerId")) {
      offerId = json["offerId"];
    }
    if (json.containsKey("offersImmediateCashReward")) {
      offersImmediateCashReward = json["offersImmediateCashReward"];
    }
    if (json.containsKey("overLimitFee")) {
      overLimitFee = json["overLimitFee"];
    }
    if (json.containsKey("prohibitedCategories")) {
      prohibitedCategories = [];
      json["prohibitedCategories"].forEach((item) {
        prohibitedCategories.add(item);
      });
    }
    if (json.containsKey("purchaseRateAdditionalDetails")) {
      purchaseRateAdditionalDetails = json["purchaseRateAdditionalDetails"];
    }
    if (json.containsKey("purchaseRateType")) {
      purchaseRateType = json["purchaseRateType"];
    }
    if (json.containsKey("returnedPaymentFee")) {
      returnedPaymentFee = json["returnedPaymentFee"];
    }
    if (json.containsKey("rewardPartner")) {
      rewardPartner = json["rewardPartner"];
    }
    if (json.containsKey("rewardUnit")) {
      rewardUnit = json["rewardUnit"];
    }
    if (json.containsKey("rewards")) {
      rewards = [];
      json["rewards"].forEach((item) {
        rewards.add(new CcOfferRewards.fromJson(item));
      });
    }
    if (json.containsKey("rewardsExpire")) {
      rewardsExpire = json["rewardsExpire"];
    }
    if (json.containsKey("rewardsHaveBlackoutDates")) {
      rewardsHaveBlackoutDates = json["rewardsHaveBlackoutDates"];
    }
    if (json.containsKey("statementCopyFee")) {
      statementCopyFee = json["statementCopyFee"];
    }
    if (json.containsKey("trackingUrl")) {
      trackingUrl = json["trackingUrl"];
    }
    if (json.containsKey("travelInsurance")) {
      travelInsurance = json["travelInsurance"];
    }
    if (json.containsKey("variableRatesLastUpdated")) {
      variableRatesLastUpdated = json["variableRatesLastUpdated"];
    }
    if (json.containsKey("variableRatesUpdateFrequency")) {
      variableRatesUpdateFrequency = json["variableRatesUpdateFrequency"];
    }
  }

  /** Create JSON Object for CcOffer */
  core.Map toJson() {
    var output = new core.Map();

    if (additionalCardBenefits != null) {
      output["additionalCardBenefits"] = new core.List();
      additionalCardBenefits.forEach((item) {
        output["additionalCardBenefits"].add(item);
      });
    }
    if (additionalCardHolderFee != null) {
      output["additionalCardHolderFee"] = additionalCardHolderFee;
    }
    if (ageMinimum != null) {
      output["ageMinimum"] = ageMinimum;
    }
    if (ageMinimumDetails != null) {
      output["ageMinimumDetails"] = ageMinimumDetails;
    }
    if (annualFee != null) {
      output["annualFee"] = annualFee;
    }
    if (annualFeeDisplay != null) {
      output["annualFeeDisplay"] = annualFeeDisplay;
    }
    if (annualRewardMaximum != null) {
      output["annualRewardMaximum"] = annualRewardMaximum;
    }
    if (approvedCategories != null) {
      output["approvedCategories"] = new core.List();
      approvedCategories.forEach((item) {
        output["approvedCategories"].add(item);
      });
    }
    if (aprDisplay != null) {
      output["aprDisplay"] = aprDisplay;
    }
    if (balanceComputationMethod != null) {
      output["balanceComputationMethod"] = balanceComputationMethod;
    }
    if (balanceTransferTerms != null) {
      output["balanceTransferTerms"] = balanceTransferTerms;
    }
    if (bonusRewards != null) {
      output["bonusRewards"] = new core.List();
      bonusRewards.forEach((item) {
        output["bonusRewards"].add(item.toJson());
      });
    }
    if (carRentalInsurance != null) {
      output["carRentalInsurance"] = carRentalInsurance;
    }
    if (cardBenefits != null) {
      output["cardBenefits"] = new core.List();
      cardBenefits.forEach((item) {
        output["cardBenefits"].add(item);
      });
    }
    if (cardName != null) {
      output["cardName"] = cardName;
    }
    if (cardType != null) {
      output["cardType"] = cardType;
    }
    if (cashAdvanceTerms != null) {
      output["cashAdvanceTerms"] = cashAdvanceTerms;
    }
    if (creditLimitMax != null) {
      output["creditLimitMax"] = creditLimitMax;
    }
    if (creditLimitMin != null) {
      output["creditLimitMin"] = creditLimitMin;
    }
    if (creditRatingDisplay != null) {
      output["creditRatingDisplay"] = creditRatingDisplay;
    }
    if (defaultFees != null) {
      output["defaultFees"] = new core.List();
      defaultFees.forEach((item) {
        output["defaultFees"].add(item.toJson());
      });
    }
    if (disclaimer != null) {
      output["disclaimer"] = disclaimer;
    }
    if (emergencyInsurance != null) {
      output["emergencyInsurance"] = emergencyInsurance;
    }
    if (existingCustomerOnly != null) {
      output["existingCustomerOnly"] = existingCustomerOnly;
    }
    if (extendedWarranty != null) {
      output["extendedWarranty"] = extendedWarranty;
    }
    if (firstYearAnnualFee != null) {
      output["firstYearAnnualFee"] = firstYearAnnualFee;
    }
    if (flightAccidentInsurance != null) {
      output["flightAccidentInsurance"] = flightAccidentInsurance;
    }
    if (foreignCurrencyTransactionFee != null) {
      output["foreignCurrencyTransactionFee"] = foreignCurrencyTransactionFee;
    }
    if (fraudLiability != null) {
      output["fraudLiability"] = fraudLiability;
    }
    if (gracePeriodDisplay != null) {
      output["gracePeriodDisplay"] = gracePeriodDisplay;
    }
    if (imageUrl != null) {
      output["imageUrl"] = imageUrl;
    }
    if (initialSetupAndProcessingFee != null) {
      output["initialSetupAndProcessingFee"] = initialSetupAndProcessingFee;
    }
    if (introBalanceTransferTerms != null) {
      output["introBalanceTransferTerms"] = introBalanceTransferTerms;
    }
    if (introCashAdvanceTerms != null) {
      output["introCashAdvanceTerms"] = introCashAdvanceTerms;
    }
    if (introPurchaseTerms != null) {
      output["introPurchaseTerms"] = introPurchaseTerms;
    }
    if (issuer != null) {
      output["issuer"] = issuer;
    }
    if (issuerId != null) {
      output["issuerId"] = issuerId;
    }
    if (issuerWebsite != null) {
      output["issuerWebsite"] = issuerWebsite;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (landingPageUrl != null) {
      output["landingPageUrl"] = landingPageUrl;
    }
    if (latePaymentFee != null) {
      output["latePaymentFee"] = latePaymentFee;
    }
    if (luggageInsurance != null) {
      output["luggageInsurance"] = luggageInsurance;
    }
    if (maxPurchaseRate != null) {
      output["maxPurchaseRate"] = maxPurchaseRate;
    }
    if (minPurchaseRate != null) {
      output["minPurchaseRate"] = minPurchaseRate;
    }
    if (minimumFinanceCharge != null) {
      output["minimumFinanceCharge"] = minimumFinanceCharge;
    }
    if (network != null) {
      output["network"] = network;
    }
    if (offerId != null) {
      output["offerId"] = offerId;
    }
    if (offersImmediateCashReward != null) {
      output["offersImmediateCashReward"] = offersImmediateCashReward;
    }
    if (overLimitFee != null) {
      output["overLimitFee"] = overLimitFee;
    }
    if (prohibitedCategories != null) {
      output["prohibitedCategories"] = new core.List();
      prohibitedCategories.forEach((item) {
        output["prohibitedCategories"].add(item);
      });
    }
    if (purchaseRateAdditionalDetails != null) {
      output["purchaseRateAdditionalDetails"] = purchaseRateAdditionalDetails;
    }
    if (purchaseRateType != null) {
      output["purchaseRateType"] = purchaseRateType;
    }
    if (returnedPaymentFee != null) {
      output["returnedPaymentFee"] = returnedPaymentFee;
    }
    if (rewardPartner != null) {
      output["rewardPartner"] = rewardPartner;
    }
    if (rewardUnit != null) {
      output["rewardUnit"] = rewardUnit;
    }
    if (rewards != null) {
      output["rewards"] = new core.List();
      rewards.forEach((item) {
        output["rewards"].add(item.toJson());
      });
    }
    if (rewardsExpire != null) {
      output["rewardsExpire"] = rewardsExpire;
    }
    if (rewardsHaveBlackoutDates != null) {
      output["rewardsHaveBlackoutDates"] = rewardsHaveBlackoutDates;
    }
    if (statementCopyFee != null) {
      output["statementCopyFee"] = statementCopyFee;
    }
    if (trackingUrl != null) {
      output["trackingUrl"] = trackingUrl;
    }
    if (travelInsurance != null) {
      output["travelInsurance"] = travelInsurance;
    }
    if (variableRatesLastUpdated != null) {
      output["variableRatesLastUpdated"] = variableRatesLastUpdated;
    }
    if (variableRatesUpdateFrequency != null) {
      output["variableRatesUpdateFrequency"] = variableRatesUpdateFrequency;
    }

    return output;
  }

  /** Return String representation of CcOffer */
  core.String toString() => JSON.stringify(this.toJson());

}

class CcOfferDefaultFees {

  /** The type of charge, for example Purchases. */
  core.String category;

  /** The highest rate the issuer may charge for defaulting on debt in this category. Expressed as an absolute number, not as a percentage. */
  core.num maxRate;

  /** The lowest rate the issuer may charge for defaulting on debt in this category. Expressed as an absolute number, not as a percentage. */
  core.num minRate;

  /** Fixed or variable. */
  core.String rateType;

  /** Create new CcOfferDefaultFees from JSON data */
  CcOfferDefaultFees.fromJson(core.Map json) {
    if (json.containsKey("category")) {
      category = json["category"];
    }
    if (json.containsKey("maxRate")) {
      maxRate = json["maxRate"];
    }
    if (json.containsKey("minRate")) {
      minRate = json["minRate"];
    }
    if (json.containsKey("rateType")) {
      rateType = json["rateType"];
    }
  }

  /** Create JSON Object for CcOfferDefaultFees */
  core.Map toJson() {
    var output = new core.Map();

    if (category != null) {
      output["category"] = category;
    }
    if (maxRate != null) {
      output["maxRate"] = maxRate;
    }
    if (minRate != null) {
      output["minRate"] = minRate;
    }
    if (rateType != null) {
      output["rateType"] = rateType;
    }

    return output;
  }

  /** Return String representation of CcOfferDefaultFees */
  core.String toString() => JSON.stringify(this.toJson());

}

class CcOfferBonusRewards {

  /** How many units of reward will be granted. */
  core.num amount;

  /** The circumstances under which this rule applies, for example, booking a flight via Orbitz. */
  core.String details;

  /** Create new CcOfferBonusRewards from JSON data */
  CcOfferBonusRewards.fromJson(core.Map json) {
    if (json.containsKey("amount")) {
      amount = json["amount"];
    }
    if (json.containsKey("details")) {
      details = json["details"];
    }
  }

  /** Create JSON Object for CcOfferBonusRewards */
  core.Map toJson() {
    var output = new core.Map();

    if (amount != null) {
      output["amount"] = amount;
    }
    if (details != null) {
      output["details"] = details;
    }

    return output;
  }

  /** Return String representation of CcOfferBonusRewards */
  core.String toString() => JSON.stringify(this.toJson());

}

class CcOfferRewards {

  /** Other limits, for example, if this rule only applies during an introductory period. */
  core.String additionalDetails;

  /** The number of units rewarded per purchase dollar. */
  core.num amount;

  /** The kind of purchases covered by this rule. */
  core.String category;

  /** How long rewards granted by this rule last. */
  core.num expirationMonths;

  /** The maximum purchase amount in the given category for this rule to apply. */
  core.num maxRewardTier;

  /** The minimum purchase amount in the given category before this rule applies. */
  core.num minRewardTier;

  /** Create new CcOfferRewards from JSON data */
  CcOfferRewards.fromJson(core.Map json) {
    if (json.containsKey("additionalDetails")) {
      additionalDetails = json["additionalDetails"];
    }
    if (json.containsKey("amount")) {
      amount = json["amount"];
    }
    if (json.containsKey("category")) {
      category = json["category"];
    }
    if (json.containsKey("expirationMonths")) {
      expirationMonths = json["expirationMonths"];
    }
    if (json.containsKey("maxRewardTier")) {
      maxRewardTier = json["maxRewardTier"];
    }
    if (json.containsKey("minRewardTier")) {
      minRewardTier = json["minRewardTier"];
    }
  }

  /** Create JSON Object for CcOfferRewards */
  core.Map toJson() {
    var output = new core.Map();

    if (additionalDetails != null) {
      output["additionalDetails"] = additionalDetails;
    }
    if (amount != null) {
      output["amount"] = amount;
    }
    if (category != null) {
      output["category"] = category;
    }
    if (expirationMonths != null) {
      output["expirationMonths"] = expirationMonths;
    }
    if (maxRewardTier != null) {
      output["maxRewardTier"] = maxRewardTier;
    }
    if (minRewardTier != null) {
      output["minRewardTier"] = minRewardTier;
    }

    return output;
  }

  /** Return String representation of CcOfferRewards */
  core.String toString() => JSON.stringify(this.toJson());

}

class CcOffers {

  /** The credit card offers. */
  core.List<CcOffer> items;

  /** The kind for a page of credit card offers. */
  core.String kind;

  /** Create new CcOffers from JSON data */
  CcOffers.fromJson(core.Map json) {
    if (json.containsKey("items")) {
      items = [];
      json["items"].forEach((item) {
        items.add(new CcOffer.fromJson(item));
      });
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
  }

  /** Create JSON Object for CcOffers */
  core.Map toJson() {
    var output = new core.Map();

    if (items != null) {
      output["items"] = new core.List();
      items.forEach((item) {
        output["items"].add(item.toJson());
      });
    }
    if (kind != null) {
      output["kind"] = kind;
    }

    return output;
  }

  /** Return String representation of CcOffers */
  core.String toString() => JSON.stringify(this.toJson());

}

/** An EventResource. */
class Event {

  /** The ID of advertiser for this event. */
  core.int advertiserId;

  /** The name of the advertiser for this event. */
  core.String advertiserName;

  /** The charge ID for this event. Only returned for charge events. */
  core.String chargeId;

  /** Charge type of the event (other|slotting_fee|monthly_minimum|tier_bonus|debit|credit). Only returned for charge events. */
  core.String chargeType;

  /** Amount of money exchanged during the transaction. Only returned for charge and conversion events. */
  Money commissionableSales;

  /** Earnings by the publisher. */
  Money earnings;

  /** The date-time this event was initiated as a RFC 3339 date-time value. */
  core.String eventDate;

  /** The kind for one event. */
  core.String kind;

  /** The ID of the member attached to this event. Only returned for conversion events. */
  core.String memberId;

  /** The date-time this event was last modified as a RFC 3339 date-time value. */
  core.String modifyDate;

  /** Fee that the advertiser paid to the Google Affiliate Network. */
  Money networkFee;

  /** The order ID for this event. Only returned for conversion events. */
  core.String orderId;

  /** Products associated with the event. */
  core.List<EventProducts> products;

  /** Fee that the advertiser paid to the publisher. */
  Money publisherFee;

  /** The ID of the publisher for this event. */
  core.int publisherId;

  /** The name of the publisher for this event. */
  core.String publisherName;

  /** Status of the event (active|canceled). Only returned for charge and conversion events. */
  core.String status;

  /** Type of the event (action|transaction|charge). */
  core.String type;

  /** Create new Event from JSON data */
  Event.fromJson(core.Map json) {
    if (json.containsKey("advertiserId")) {
      advertiserId = json["advertiserId"];
    }
    if (json.containsKey("advertiserName")) {
      advertiserName = json["advertiserName"];
    }
    if (json.containsKey("chargeId")) {
      chargeId = json["chargeId"];
    }
    if (json.containsKey("chargeType")) {
      chargeType = json["chargeType"];
    }
    if (json.containsKey("commissionableSales")) {
      commissionableSales = new Money.fromJson(json["commissionableSales"]);
    }
    if (json.containsKey("earnings")) {
      earnings = new Money.fromJson(json["earnings"]);
    }
    if (json.containsKey("eventDate")) {
      eventDate = json["eventDate"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("memberId")) {
      memberId = json["memberId"];
    }
    if (json.containsKey("modifyDate")) {
      modifyDate = json["modifyDate"];
    }
    if (json.containsKey("networkFee")) {
      networkFee = new Money.fromJson(json["networkFee"]);
    }
    if (json.containsKey("orderId")) {
      orderId = json["orderId"];
    }
    if (json.containsKey("products")) {
      products = [];
      json["products"].forEach((item) {
        products.add(new EventProducts.fromJson(item));
      });
    }
    if (json.containsKey("publisherFee")) {
      publisherFee = new Money.fromJson(json["publisherFee"]);
    }
    if (json.containsKey("publisherId")) {
      publisherId = json["publisherId"];
    }
    if (json.containsKey("publisherName")) {
      publisherName = json["publisherName"];
    }
    if (json.containsKey("status")) {
      status = json["status"];
    }
    if (json.containsKey("type")) {
      type = json["type"];
    }
  }

  /** Create JSON Object for Event */
  core.Map toJson() {
    var output = new core.Map();

    if (advertiserId != null) {
      output["advertiserId"] = advertiserId;
    }
    if (advertiserName != null) {
      output["advertiserName"] = advertiserName;
    }
    if (chargeId != null) {
      output["chargeId"] = chargeId;
    }
    if (chargeType != null) {
      output["chargeType"] = chargeType;
    }
    if (commissionableSales != null) {
      output["commissionableSales"] = commissionableSales.toJson();
    }
    if (earnings != null) {
      output["earnings"] = earnings.toJson();
    }
    if (eventDate != null) {
      output["eventDate"] = eventDate;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (memberId != null) {
      output["memberId"] = memberId;
    }
    if (modifyDate != null) {
      output["modifyDate"] = modifyDate;
    }
    if (networkFee != null) {
      output["networkFee"] = networkFee.toJson();
    }
    if (orderId != null) {
      output["orderId"] = orderId;
    }
    if (products != null) {
      output["products"] = new core.List();
      products.forEach((item) {
        output["products"].add(item.toJson());
      });
    }
    if (publisherFee != null) {
      output["publisherFee"] = publisherFee.toJson();
    }
    if (publisherId != null) {
      output["publisherId"] = publisherId;
    }
    if (publisherName != null) {
      output["publisherName"] = publisherName;
    }
    if (status != null) {
      output["status"] = status;
    }
    if (type != null) {
      output["type"] = type;
    }

    return output;
  }

  /** Return String representation of Event */
  core.String toString() => JSON.stringify(this.toJson());

}

class EventProducts {

  /** Id of the category this product belongs to. */
  core.String categoryId;

  /** Name of the category this product belongs to. */
  core.String categoryName;

  /** Amount earned by the publisher on this product. */
  Money earnings;

  /** Fee that the advertiser paid to the Google Affiliate Network for this product. */
  Money networkFee;

  /** Fee that the advertiser paid to the publisehr for this product. */
  Money publisherFee;

  /** Quantity of this product bought/exchanged. */
  core.int quantity;

  /** Sku of this product. */
  core.String sku;

  /** Sku name of this product. */
  core.String skuName;

  /** Price per unit of this product. */
  Money unitPrice;

  /** Create new EventProducts from JSON data */
  EventProducts.fromJson(core.Map json) {
    if (json.containsKey("categoryId")) {
      categoryId = json["categoryId"];
    }
    if (json.containsKey("categoryName")) {
      categoryName = json["categoryName"];
    }
    if (json.containsKey("earnings")) {
      earnings = new Money.fromJson(json["earnings"]);
    }
    if (json.containsKey("networkFee")) {
      networkFee = new Money.fromJson(json["networkFee"]);
    }
    if (json.containsKey("publisherFee")) {
      publisherFee = new Money.fromJson(json["publisherFee"]);
    }
    if (json.containsKey("quantity")) {
      quantity = json["quantity"];
    }
    if (json.containsKey("sku")) {
      sku = json["sku"];
    }
    if (json.containsKey("skuName")) {
      skuName = json["skuName"];
    }
    if (json.containsKey("unitPrice")) {
      unitPrice = new Money.fromJson(json["unitPrice"]);
    }
  }

  /** Create JSON Object for EventProducts */
  core.Map toJson() {
    var output = new core.Map();

    if (categoryId != null) {
      output["categoryId"] = categoryId;
    }
    if (categoryName != null) {
      output["categoryName"] = categoryName;
    }
    if (earnings != null) {
      output["earnings"] = earnings.toJson();
    }
    if (networkFee != null) {
      output["networkFee"] = networkFee.toJson();
    }
    if (publisherFee != null) {
      output["publisherFee"] = publisherFee.toJson();
    }
    if (quantity != null) {
      output["quantity"] = quantity;
    }
    if (sku != null) {
      output["sku"] = sku;
    }
    if (skuName != null) {
      output["skuName"] = skuName;
    }
    if (unitPrice != null) {
      output["unitPrice"] = unitPrice.toJson();
    }

    return output;
  }

  /** Return String representation of EventProducts */
  core.String toString() => JSON.stringify(this.toJson());

}

class Events {

  /** The event list. */
  core.List<Event> items;

  /** The kind for a page of events. */
  core.String kind;

  /** The 'pageToken' to pass to the next request to get the next page, if there are more to retrieve. */
  core.String nextPageToken;

  /** Create new Events from JSON data */
  Events.fromJson(core.Map json) {
    if (json.containsKey("items")) {
      items = [];
      json["items"].forEach((item) {
        items.add(new Event.fromJson(item));
      });
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
  }

  /** Create JSON Object for Events */
  core.Map toJson() {
    var output = new core.Map();

    if (items != null) {
      output["items"] = new core.List();
      items.forEach((item) {
        output["items"].add(item.toJson());
      });
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }

    return output;
  }

  /** Return String representation of Events */
  core.String toString() => JSON.stringify(this.toJson());

}

/** A LinkResource. */
class Link {

  /** The advertiser id for the advertiser who owns this link. */
  core.int advertiserId;

  /** Authorship */
  core.String authorship;

  /** Availability. */
  core.String availability;

  /** Tracking url for clicks. */
  core.String clickTrackingUrl;

  /** Date that this link was created. */
  core.String createDate;

  /** Description. */
  core.String description;

  /** The destination URL for the link. */
  core.String destinationUrl;

  /** Duration */
  core.String duration;

  /** Date that this link becomes inactive. */
  core.String endDate;

  /** The sum of fees paid to publishers divided by the total number of clicks over the past three months on this link. This value should be multiplied by 100 at the time of display. */
  Money epcNinetyDayAverage;

  /** The sum of fees paid to publishers divided by the total number of clicks over the past seven days on this link. This value should be multiplied by 100 at the time of display. */
  Money epcSevenDayAverage;

  /** The ID of this link. */
  core.int id;

  /** image alt text. */
  core.String imageAltText;

  /** Tracking url for impressions. */
  core.String impressionTrackingUrl;

  /** Flag for if this link is active. */
  core.bool isActive;

  /** The kind for one entity. */
  core.String kind;

  /** The link type. */
  core.String linkType;

  /** The logical name for this link. */
  core.String name;

  /** Promotion Type */
  core.String promotionType;

  /** Special offers on the link. */
  LinkSpecialOffers specialOffers;

  /** Date that this link becomes active. */
  core.String startDate;

  /** Create new Link from JSON data */
  Link.fromJson(core.Map json) {
    if (json.containsKey("advertiserId")) {
      advertiserId = json["advertiserId"];
    }
    if (json.containsKey("authorship")) {
      authorship = json["authorship"];
    }
    if (json.containsKey("availability")) {
      availability = json["availability"];
    }
    if (json.containsKey("clickTrackingUrl")) {
      clickTrackingUrl = json["clickTrackingUrl"];
    }
    if (json.containsKey("createDate")) {
      createDate = json["createDate"];
    }
    if (json.containsKey("description")) {
      description = json["description"];
    }
    if (json.containsKey("destinationUrl")) {
      destinationUrl = json["destinationUrl"];
    }
    if (json.containsKey("duration")) {
      duration = json["duration"];
    }
    if (json.containsKey("endDate")) {
      endDate = json["endDate"];
    }
    if (json.containsKey("epcNinetyDayAverage")) {
      epcNinetyDayAverage = new Money.fromJson(json["epcNinetyDayAverage"]);
    }
    if (json.containsKey("epcSevenDayAverage")) {
      epcSevenDayAverage = new Money.fromJson(json["epcSevenDayAverage"]);
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("imageAltText")) {
      imageAltText = json["imageAltText"];
    }
    if (json.containsKey("impressionTrackingUrl")) {
      impressionTrackingUrl = json["impressionTrackingUrl"];
    }
    if (json.containsKey("isActive")) {
      isActive = json["isActive"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("linkType")) {
      linkType = json["linkType"];
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("promotionType")) {
      promotionType = json["promotionType"];
    }
    if (json.containsKey("specialOffers")) {
      specialOffers = new LinkSpecialOffers.fromJson(json["specialOffers"]);
    }
    if (json.containsKey("startDate")) {
      startDate = json["startDate"];
    }
  }

  /** Create JSON Object for Link */
  core.Map toJson() {
    var output = new core.Map();

    if (advertiserId != null) {
      output["advertiserId"] = advertiserId;
    }
    if (authorship != null) {
      output["authorship"] = authorship;
    }
    if (availability != null) {
      output["availability"] = availability;
    }
    if (clickTrackingUrl != null) {
      output["clickTrackingUrl"] = clickTrackingUrl;
    }
    if (createDate != null) {
      output["createDate"] = createDate;
    }
    if (description != null) {
      output["description"] = description;
    }
    if (destinationUrl != null) {
      output["destinationUrl"] = destinationUrl;
    }
    if (duration != null) {
      output["duration"] = duration;
    }
    if (endDate != null) {
      output["endDate"] = endDate;
    }
    if (epcNinetyDayAverage != null) {
      output["epcNinetyDayAverage"] = epcNinetyDayAverage.toJson();
    }
    if (epcSevenDayAverage != null) {
      output["epcSevenDayAverage"] = epcSevenDayAverage.toJson();
    }
    if (id != null) {
      output["id"] = id;
    }
    if (imageAltText != null) {
      output["imageAltText"] = imageAltText;
    }
    if (impressionTrackingUrl != null) {
      output["impressionTrackingUrl"] = impressionTrackingUrl;
    }
    if (isActive != null) {
      output["isActive"] = isActive;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (linkType != null) {
      output["linkType"] = linkType;
    }
    if (name != null) {
      output["name"] = name;
    }
    if (promotionType != null) {
      output["promotionType"] = promotionType;
    }
    if (specialOffers != null) {
      output["specialOffers"] = specialOffers.toJson();
    }
    if (startDate != null) {
      output["startDate"] = startDate;
    }

    return output;
  }

  /** Return String representation of Link */
  core.String toString() => JSON.stringify(this.toJson());

}

/** Special offers on the link. */
class LinkSpecialOffers {

  /** Whether there is a free gift */
  core.bool freeGift;

  /** Whether there is free shipping */
  core.bool freeShipping;

  /** Minimum purchase amount for free shipping promotion */
  Money freeShippingMin;

  /** Percent off on the purchase */
  core.num percentOff;

  /** Minimum purchase amount for percent off promotion */
  Money percentOffMin;

  /** Price cut on the purchase */
  Money priceCut;

  /** Minimum purchase amount for price cut promotion */
  Money priceCutMin;

  /** List of promotion code associated with the link */
  core.List<core.String> promotionCodes;

  /** Create new LinkSpecialOffers from JSON data */
  LinkSpecialOffers.fromJson(core.Map json) {
    if (json.containsKey("freeGift")) {
      freeGift = json["freeGift"];
    }
    if (json.containsKey("freeShipping")) {
      freeShipping = json["freeShipping"];
    }
    if (json.containsKey("freeShippingMin")) {
      freeShippingMin = new Money.fromJson(json["freeShippingMin"]);
    }
    if (json.containsKey("percentOff")) {
      percentOff = json["percentOff"];
    }
    if (json.containsKey("percentOffMin")) {
      percentOffMin = new Money.fromJson(json["percentOffMin"]);
    }
    if (json.containsKey("priceCut")) {
      priceCut = new Money.fromJson(json["priceCut"]);
    }
    if (json.containsKey("priceCutMin")) {
      priceCutMin = new Money.fromJson(json["priceCutMin"]);
    }
    if (json.containsKey("promotionCodes")) {
      promotionCodes = [];
      json["promotionCodes"].forEach((item) {
        promotionCodes.add(item);
      });
    }
  }

  /** Create JSON Object for LinkSpecialOffers */
  core.Map toJson() {
    var output = new core.Map();

    if (freeGift != null) {
      output["freeGift"] = freeGift;
    }
    if (freeShipping != null) {
      output["freeShipping"] = freeShipping;
    }
    if (freeShippingMin != null) {
      output["freeShippingMin"] = freeShippingMin.toJson();
    }
    if (percentOff != null) {
      output["percentOff"] = percentOff;
    }
    if (percentOffMin != null) {
      output["percentOffMin"] = percentOffMin.toJson();
    }
    if (priceCut != null) {
      output["priceCut"] = priceCut.toJson();
    }
    if (priceCutMin != null) {
      output["priceCutMin"] = priceCutMin.toJson();
    }
    if (promotionCodes != null) {
      output["promotionCodes"] = new core.List();
      promotionCodes.forEach((item) {
        output["promotionCodes"].add(item);
      });
    }

    return output;
  }

  /** Return String representation of LinkSpecialOffers */
  core.String toString() => JSON.stringify(this.toJson());

}

class Links {

  /** The links. */
  core.List<Link> items;

  /** The kind for a page of links. */
  core.String kind;

  /** The next page token. */
  core.String nextPageToken;

  /** Create new Links from JSON data */
  Links.fromJson(core.Map json) {
    if (json.containsKey("items")) {
      items = [];
      json["items"].forEach((item) {
        items.add(new Link.fromJson(item));
      });
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
  }

  /** Create JSON Object for Links */
  core.Map toJson() {
    var output = new core.Map();

    if (items != null) {
      output["items"] = new core.List();
      items.forEach((item) {
        output["items"].add(item.toJson());
      });
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }

    return output;
  }

  /** Return String representation of Links */
  core.String toString() => JSON.stringify(this.toJson());

}

/** An ApiMoneyProto. */
class Money {

  /** The amount of money. */
  core.num amount;

  /** The 3-letter code of the currency in question. */
  core.String currencyCode;

  /** Create new Money from JSON data */
  Money.fromJson(core.Map json) {
    if (json.containsKey("amount")) {
      amount = json["amount"];
    }
    if (json.containsKey("currencyCode")) {
      currencyCode = json["currencyCode"];
    }
  }

  /** Create JSON Object for Money */
  core.Map toJson() {
    var output = new core.Map();

    if (amount != null) {
      output["amount"] = amount;
    }
    if (currencyCode != null) {
      output["currencyCode"] = currencyCode;
    }

    return output;
  }

  /** Return String representation of Money */
  core.String toString() => JSON.stringify(this.toJson());

}

/** A PublisherResource. */
class Publisher {

  /** Classification that this publisher belongs to. See this link for all publisher classifications: http://www.google.com/support/affiliatenetwork/advertiser/bin/answer.py?hl=en&answer=107625&ctx=cb&src=cb&cbid=-k5fihzthfaik&cbrank=4 */
  core.String classification;

  /** The sum of fees paid to this publisher divided by the total number of clicks over the past three months. Values are multiplied by 100 for display purposes. */
  Money epcNinetyDayAverage;

  /** The sum of fees paid to this publisher divided by the total number of clicks over the past seven days. Values are multiplied by 100 for display purposes. */
  Money epcSevenDayAverage;

  /** The ID of this publisher. */
  core.int id;

  /** The requested publisher. */
  Publisher item;

  /** Date that this publisher was approved as a Google Affiliate Network publisher. */
  core.String joinDate;

  /** The kind for a publisher. */
  core.String kind;

  /** The name of this publisher. */
  core.String name;

  /** A rank based on commissions paid to this publisher over the past 90 days. A number between 1 and 4 where 4 means the top quartile (most money paid) and 1 means the bottom quartile (least money paid). */
  core.String payoutRank;

  /** Websites that this publisher uses to advertise. */
  core.List<core.String> sites;

  /** The status of the requesting advertiser's relationship with this publisher. */
  core.String status;

  /** Create new Publisher from JSON data */
  Publisher.fromJson(core.Map json) {
    if (json.containsKey("classification")) {
      classification = json["classification"];
    }
    if (json.containsKey("epcNinetyDayAverage")) {
      epcNinetyDayAverage = new Money.fromJson(json["epcNinetyDayAverage"]);
    }
    if (json.containsKey("epcSevenDayAverage")) {
      epcSevenDayAverage = new Money.fromJson(json["epcSevenDayAverage"]);
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("item")) {
      item = new Publisher.fromJson(json["item"]);
    }
    if (json.containsKey("joinDate")) {
      joinDate = json["joinDate"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("payoutRank")) {
      payoutRank = json["payoutRank"];
    }
    if (json.containsKey("sites")) {
      sites = [];
      json["sites"].forEach((item) {
        sites.add(item);
      });
    }
    if (json.containsKey("status")) {
      status = json["status"];
    }
  }

  /** Create JSON Object for Publisher */
  core.Map toJson() {
    var output = new core.Map();

    if (classification != null) {
      output["classification"] = classification;
    }
    if (epcNinetyDayAverage != null) {
      output["epcNinetyDayAverage"] = epcNinetyDayAverage.toJson();
    }
    if (epcSevenDayAverage != null) {
      output["epcSevenDayAverage"] = epcSevenDayAverage.toJson();
    }
    if (id != null) {
      output["id"] = id;
    }
    if (item != null) {
      output["item"] = item.toJson();
    }
    if (joinDate != null) {
      output["joinDate"] = joinDate;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (name != null) {
      output["name"] = name;
    }
    if (payoutRank != null) {
      output["payoutRank"] = payoutRank;
    }
    if (sites != null) {
      output["sites"] = new core.List();
      sites.forEach((item) {
        output["sites"].add(item);
      });
    }
    if (status != null) {
      output["status"] = status;
    }

    return output;
  }

  /** Return String representation of Publisher */
  core.String toString() => JSON.stringify(this.toJson());

}

class Publishers {

  /** The entity list. */
  core.List<Publisher> items;

  /** The kind for a page of entities. */
  core.String kind;

  /** The 'pageToken' to pass to the next request to get the next page, if there are more to retrieve. */
  core.String nextPageToken;

  /** Create new Publishers from JSON data */
  Publishers.fromJson(core.Map json) {
    if (json.containsKey("items")) {
      items = [];
      json["items"].forEach((item) {
        items.add(new Publisher.fromJson(item));
      });
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
  }

  /** Create JSON Object for Publishers */
  core.Map toJson() {
    var output = new core.Map();

    if (items != null) {
      output["items"] = new core.List();
      items.forEach((item) {
        output["items"].add(item.toJson());
      });
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }

    return output;
  }

  /** Return String representation of Publishers */
  core.String toString() => JSON.stringify(this.toJson());

}

/** A ReportResource representing a report of a certain type either for an advertiser or publisher. */
class Report {

  /** The column names for the report */
  core.List<core.String> column_names;

  /** The end of the date range for this report, exclusive. */
  core.String end_date;

  /** The kind for a report. */
  core.String kind;

  /** The number of matching rows before paging is applied. */
  core.int matching_row_count;

  /** The start of the date range for this report, inclusive. */
  core.String start_date;

  /** The report type. */
  core.String type;

  /** Create new Report from JSON data */
  Report.fromJson(core.Map json) {
    if (json.containsKey("column_names")) {
      column_names = [];
      json["column_names"].forEach((item) {
        column_names.add(item);
      });
    }
    if (json.containsKey("end_date")) {
      end_date = json["end_date"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("matching_row_count")) {
      matching_row_count = json["matching_row_count"];
    }
    if (json.containsKey("start_date")) {
      start_date = json["start_date"];
    }
    if (json.containsKey("type")) {
      type = json["type"];
    }
  }

  /** Create JSON Object for Report */
  core.Map toJson() {
    var output = new core.Map();

    if (column_names != null) {
      output["column_names"] = new core.List();
      column_names.forEach((item) {
        output["column_names"].add(item);
      });
    }
    if (end_date != null) {
      output["end_date"] = end_date;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (matching_row_count != null) {
      output["matching_row_count"] = matching_row_count;
    }
    if (start_date != null) {
      output["start_date"] = start_date;
    }
    if (type != null) {
      output["type"] = type;
    }

    return output;
  }

  /** Return String representation of Report */
  core.String toString() => JSON.stringify(this.toJson());

}

