import { createRouter, createWebHistory } from "vue-router";
import LoginView from "../views/LoginView.vue";

const routes = [
  {
    path: "/",
    name: "Login",
    component: LoginView,
  },
  {
    path: "/register",
    name: "Signup",
    // route level code-splitting
    // this generates a separate chunk (about.[hash].js) for this route
    // which is lazy-loaded when the route is visited.
    component: () =>
      import(/* webpackChunkName: "signup" */ "@/views/SignupView.vue"),
  },
  {
    path: "/profile",
    name: "UserProfile",
    component: () =>
      import(/* webpackChunkName: "signin" */ "@/views/ProfileView.vue"),
  },
];

const router = createRouter({
  history: createWebHistory(process.env.BASE_URL),
  routes,
});

router.beforeEach((to, from, next) => {
  const publicPages = ["/", "/register"];
  const authRequired = !publicPages.includes(to.path);
  // We retrive login token from sessionStorage.
  // Logout will clear the token from sessionStroage
  const loggedIn = sessionStorage.getItem("token");

  // Trying to access restricted pages and not logged in  will redirect
  // the user to login page. We also wrap the current path in a `query` such
  // that we can redirect back upon successful login.
  if (authRequired && !loggedIn) {
    next({ name: "Login", query: { redirect: to.fullPath } });
  } else {
    next();
  }
});

export default router;
