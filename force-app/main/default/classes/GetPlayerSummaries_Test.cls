@isTest
public with sharing class GetPlayerSummaries_Test {
    static testMethod void testParse() {
		String json = '{'+
		'    \"response\": {'+
		'        \"players\": ['+
		'            {'+
		'                \"steamid\": \"76561197988095529\",'+
		'                \"communityvisibilitystate\": 3,'+
		'                \"profilestate\": 1,'+
		'                \"personaname\": \"naikon\",'+
		'                \"commentpermission\": 1,'+
		'                \"profileurl\": \"https://steamcommunity.com/profiles/76561197988095529/\",'+
		'                \"avatar\": \"https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/01/01ff81f0db0b0ff2b9c9cd612b2976e245cbcd25.jpg\",'+
		'                \"avatarmedium\": \"https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/01/01ff81f0db0b0ff2b9c9cd612b2976e245cbcd25_medium.jpg\",'+
		'                \"avatarfull\": \"https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/01/01ff81f0db0b0ff2b9c9cd612b2976e245cbcd25_full.jpg\",'+
		'                \"avatarhash\": \"01ff81f0db0b0ff2b9c9cd612b2976e245cbcd25\",'+
		'                \"lastlogoff\": 1611695250,'+
		'                \"personastate\": 0,'+
		'                \"realname\": \"Adrian\",'+
		'                \"primaryclanid\": \"103582791433349956\",'+
		'                \"timecreated\": 1171196969,'+
		'                \"personastateflags\": 0,'+
		'                \"loccountrycode\": \"ES\",'+
		'                \"locstatecode\": \"29\"'+
		'            }'+
		'        ]'+
		'    }'+
		'}';
		GetPlayerSummaries obj = GetPlayerSummaries.parse(json);
		System.assert(obj != null);
	}
}
