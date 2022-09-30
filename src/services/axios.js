import axios from "axios";
import tokenService from "./token.service";
import store from "@/store";
import router from "@/router";

const env = process.env.NODE_ENV !== "production";

const api = axios.create({
  baseURL: env ? "http://localhost:4000/api/v1" : "https://example.com/api/v1",
});
api.interceptors.request.use(function (config) {
  const token = tokenService.getLocalAccessToken();
  if (token) {
    config.headers["Authorization"] = `Bearer ${token}`;
  }
  return config;
});

api.interceptors.response.use(
  function (resp) {
    return resp;
  },
  async function (err) {
    if (err.response.status === 401) {
      store.dispatch("auth/logout");
      router.push("/signin");
    } else {
      return Promise.reject(err);
    }
  }
);

export { api, axios };
