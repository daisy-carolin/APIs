<template>
  <div class="main-wrapper">
    <div class="page-wrapper full-page">
      <div
        class="page-content d-flex align-items-center justify-content-center"
      >
        <div class="row w-100 mx-0 auth-page">
          <div class="col-md-8 col-xl-6 mx-auto">
            <div class="card">
              <div class="row">
                <div class="col-md-4 pe-md-0">
                  <div class="auth-side-wrapper"></div>
                </div>
                <div class="col-md-8 ps-md-0">
                  <div class="auth-form-wrapper px-4 py-5">
                    <router-link
                      class="wisp-ui-logo d-block mb-2"
                      :to="{ name: 'Login' }"
                      >Wisp<span>UI</span></router-link
                    >
                    <h5 class="text-muted fw-normal mb-4">
                      Welcome back! Log in to your account.
                    </h5>
                    <form class="forms-sample" @submit.prevent="submit">
                      <div class="mb-3">
                        <label for="userMsisdn" class="form-label"
                          >Phone Number</label
                        >
                        <vue-tel-input
                          v-model="user.msisdn"
                          @validate="checkNumber"
                          required
                        ></vue-tel-input>
                      </div>
                      <div class="mb-3">
                        <label for="userPassword" class="form-label"
                          >Password</label
                        >
                        <input
                          class="form-control"
                          type="password"
                          id="userPassword"
                          required
                          v-model="user.password"
                        />
                      </div>
                      <div class="form-check mb-3">
                        <input
                          type="checkbox"
                          class="form-check-input"
                          id="authCheck"
                          v-model="user.remember_me"
                        />
                        <label class="form-check-label" for="authCheck">
                          Remember me
                        </label>
                      </div>
                      <div>
                        <button
                          class="btn btn-primary me-2 mb-2 mb-md-0 text-white"
                          @click="signin"
                        >
                          Login
                        </button>
                      </div>
                      <router-link
                        :to="{ name: 'Signup' }"
                        class="d-block mt-3 text-muted"
                        >Not a user? Sign up</router-link
                      >
                    </form>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import { reactive } from "@vue/reactivity";
import { useRouter } from "vue-router";
import { useStore } from "vuex";
// @ is an alias to /src

export default {
  setup() {
    const router = useRouter();
    const store = useStore();
    const user = reactive({ msisdn: null, password: null, remember_me: false });
    const changeset = reactive({ errors: {}, message: null });

    function signin() {
      store.dispatch("auth/login", user).then((response) => {
        if (response && response.status == 200) {
          router.push("/profile");
        } else {
          changeset.message = "An error occured";
          changeset.errors = response.errors;
        }
      });
    }

    function checkNumber(number) {
      if (number.valid) {
        user.msisdn = number.number;
      }
    }

    return { user, changeset, signin, checkNumber };
  },
};
</script>
