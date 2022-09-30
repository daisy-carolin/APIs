class TokenService {
  getLocalRefreshToken() {
    const user = JSON.parse(sessionStorage.getItem("user"));
    return user?.refresh_token;
  }
  getLocalAccessToken() {
    const user = JSON.parse(sessionStorage.getItem("user"));
    return user?.token;
  }
}
export default new TokenService();
