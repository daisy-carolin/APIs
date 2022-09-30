export function login(state, user) {
  sessionStorage.setItem("user", JSON.stringify(user));
  state.loggedIn = true;
  state.authUser = user;
}

export function logout(state) {
  state.loggedIn = false;
}

export function updateProfile(state, data) {
  state.user = { ...state.user, ...data };
}

export function successUserRegistration(state) {
  state.loggedIn = true;
}
