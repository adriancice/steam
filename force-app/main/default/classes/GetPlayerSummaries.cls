public with sharing class GetPlayerSummaries {
    public class Response {
		public List<Players> players;
	}

	public Response response;

	public class Players {
		public String steamid;
		public Integer communityvisibilitystate;
		public Integer profilestate;
		public String personaname;
		public Integer commentpermission;
		public String profileurl;
		public String avatar;
		public String avatarmedium;
		public String avatarfull;
		public String avatarhash;
		public Integer lastlogoff;
		public Integer personastate;
		public String realname;
		public String primaryclanid;
		public Integer timecreated;
		public Integer personastateflags;
		public String loccountrycode;
		public String locstatecode;
	}

	
	public static GetPlayerSummaries parse(String json) {
		return (GetPlayerSummaries) System.JSON.deserialize(json, GetPlayerSummaries.class);
	}
}
