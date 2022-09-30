import { createApp } from "vue";
import App from "./App.vue";
import "./registerServiceWorker";
import router from "./router";
import store from "./store";

import VueTelInput from "vue3-tel-input";
import "vue3-tel-input/dist/vue3-tel-input.css";

const VueTelInputOptions = {
  mode: "international",
  onlyCountries: ["KE", "UG", "TZ"],
};

createApp(App)
  .use(VueTelInput, VueTelInputOptions)
  .use(store)
  .use(router)
  .mount("#app");
