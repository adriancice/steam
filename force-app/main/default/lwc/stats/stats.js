import { LightningElement } from "lwc";
import fetchPlayerSummaries from "@salesforce/apex/Steam_Controller.fetchPlayerSummaries";

export default class Stats extends LightningElement {
  summaries = false;
  personName;
  avatarMedium;
  steamId;
  handleKeyUp(evt) {
    const isEnterKey = evt.keyCode === 13;
    if (isEnterKey) {
      this.queryTerm = evt.target.value;
      fetchPlayerSummaries({ steamId: this.queryTerm })
        .then((result) => {
          const response = JSON.parse(result);
          console.log(JSON.stringify(response));
          this.personName = response.personaname;
          this.avatarMedium = response.avatarmedium;
          this.summaries = true;
        })
        .catch((error) => {
          console.log("Error: " + JSON.stringify(error));
        });
    }
  }
  changeSteamId(event) {
    console.log("busco::: " + event.target.value);
    this.steamId = event.target.value;
  }
  handleClick() {
    fetchPlayerSummaries({ steamId: this.steamId })
      .then((result) => {
        const response = JSON.parse(result);
        console.log(JSON.stringify(response));
        this.personName = response.personaname;
        this.avatarMedium = response.avatarmedium;
        this.summaries = true;
      })
      .catch((error) => {
        console.log("Error: " + JSON.stringify(error));
      });
  }
}
