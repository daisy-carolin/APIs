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
                      Create a free account.
                    </h5>
                    <form class="forms-sample" @submit.prevent="submit">
                      <div class="mb-3">
                        <label for="userFirstName" class="form-label"
                          >First Name</label
                        >
                        <input
                          class="form-control"
                          type="text"
                          id="userFirstName"
                          placeholder="John"
                          required
                          v-model="user.first_name"
                        />
                      </div>

                      <div class="mb-3">
                        <label for="userLastName" class="form-label"
                          >Last Name</label
                        >
                        <input
                          class="form-control"
                          type="text"
                          id="userLastName"
                          placeholder="Doe"
                          required
                          v-model="user.last_name"
                        />
                      </div>

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
                          v-model="user.plain_password"
                        />
                      </div>
                      <div class="form-check mb-3">
                        <input
                          type="checkbox"
                          class="form-check-input"
                          id="authCheck"
                          v-model="user.accept_terms"
                          required
                        />
                        <label class="form-check-label" for="authCheck">
                          Remember me
                        </label>
                      </div>
                      <div>
                        <button
                          @click="signup"
                          class="btn btn-primary text-white me-2 mb-2 mb-md-0"
                        >
                          Sign up
                        </button>
                      </div>
                      <router-link
                        :to="{ name: 'Login' }"
                        class="d-block mt-3 text-muted"
                        >Already a user? Sign in</router-link
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
import { useRouter } from "vue-router";
import { reactive } from "vue";
import { useStore } from "vuex";
export default {
  setup() {
    const router = useRouter();
    const store = useStore();

    const user = reactive({
      msisdn: null,
      first_name: null,
      plain_password: null,
      last_name: null,
      accept_terms: false,
    });

    const changeset = reactive({ errors: {}, message: null });

    function signup() {
      if (user.accept_terms) {
        store.dispatch("auth/registerUser", user).then((resp) => {
          if (resp && resp.status == 200) {
            router.push("/profile");
          } else {
            changeset.message = "An error occured!";
            changeset.errors = resp.errors;
          }
        });
      } else {
        changeset.message = "You must agree to T&C's before submitting";
      }
    }

    function checkNumber(number) {
      if (number.valid) {
        user.msisdn = number.number;
      }
    }

    return { user, changeset, signup, checkNumber };
  },
};
</script>
