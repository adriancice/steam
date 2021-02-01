public with sharing class Steam_Controller {
  @AuraEnabled
  public static String fetchPlayerSummaries(String steamId) {
    Http http = new Http();
    HttpRequest request = new HttpRequest();
    request.setEndpoint(
      'callout:GetPlayerSummaries/?key=' +
      getAuth() +
      '&steamids=' +
      steamId
    );
    request.setMethod('GET');
    HttpResponse response = http.send(request);
    // If the request is successful, parse the JSON response.
    if (response.getStatusCode() == 200) {
      GetPlayerSummaries players = (GetPlayerSummaries) JSON.deserialize(
        response.getBody(),
        GetPlayerSummaries.class
      );
      System.debug(players.Response.players[0].personaname);
      System.debug(players.Response.players[0]);
      System.debug(players);
      return JSON.serialize(players.Response.players[0]);
    }
    return null;
  }

  private static String getAuth() {
    SteamAPI__mdt mtd;
    try {
      mtd = [
        SELECT Id, Authentication__c
        FROM SteamAPI__mdt
        WHERE MasterLabel = 'Auth'
        WITH SECURITY_ENFORCED
      ];
    } catch (QueryException e) {
      System.debug(e.getMessage());
    }
    return mtd.Authentication__c;
  }
}
