public with sharing class Steam_Controller {
    static String auth = '4F133D62390817437D5BE805F995D4D7';

    @AuraEnabled
    public static String fetchPlayerSummaries(String steamId) {
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint('callout:GetPlayerSummaries/?key=' + auth +  '&steamids=' + steamId);
        request.setMethod('GET');
        HttpResponse response = http.send(request); 
        // If the request is successful, parse the JSON response.	
        if (response.getStatusCode() == 200) {
            GetPlayerSummaries players = (GetPlayerSummaries) JSON.deserialize(response.getBody(), GetPlayerSummaries.class);
            System.debug(players.Response.players[0].personaname);
            System.debug(players.Response.players[0]);
            System.debug(players);
            return JSON.serialize(players.Response.players[0]);
        }
        return null;
    }
}
