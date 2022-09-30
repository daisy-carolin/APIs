import { api } from "@/services/axios";

export async function login(context, params) {
  return api
    .post("auth/login", params)
    .then((resp) => {
      if (resp.status == 200) {
        sessionStorage.setItem("token", resp.data.user.token);
        context.commit("login", resp.data.user);
        return resp;
      }
    })
    .catch((error) => {
      if (error.response.data) {
        return error.response;
      }
    });
}

export async function registerUser(context, params) {
  return api
    .post("auth/user/registration", { user: params })
    .then((resp) => {
      if (resp && resp.status == 200) {
        context.commit("successUserRegistration");
        return resp;
      }
    })
    .catch((error) => {
      return error.response.data;
    });
}

export function logout(context) {
  sessionStorage.removeItem("user");
  context.commit("logout");
}
