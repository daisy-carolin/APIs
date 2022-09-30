<template>
  <div class="main-wrapper">
    <!-- partial:../../partials/_navbar.html -->
    <div class="horizontal-menu">
      <nav class="navbar top-navbar">
        <div class="container">
          <div class="navbar-content">
            <a href="#" class="navbar-brand"> Wisp<span>UI</span> </a>
            <form class="search-form">
              <div class="input-group">
                <div class="input-group-text">
                  <i data-feather="search"></i>
                </div>
                <input
                  type="text"
                  class="form-control"
                  id="navbarForm"
                  placeholder="Search here..."
                />
              </div>
            </form>
            <ul class="navbar-nav">
              <li class="nav-item dropdown">
                <a
                  class="nav-link dropdown-toggle"
                  href="#"
                  id="languageDropdown"
                  role="button"
                  data-bs-toggle="dropdown"
                  aria-haspopup="true"
                  aria-expanded="false"
                >
                  <i class="flag-icon flag-icon-us mt-1" title="us"></i>
                  <span class="ms-1 me-1 d-none d-md-inline-block"
                    >English</span
                  >
                </a>
                <div class="dropdown-menu" aria-labelledby="languageDropdown">
                  <a href="javascript:;" class="dropdown-item py-2"
                    ><i class="flag-icon flag-icon-us" title="us" id="us"></i>
                    <span class="ms-1"> English </span></a
                  >
                  <a href="javascript:;" class="dropdown-item py-2"
                    ><i class="flag-icon flag-icon-fr" title="fr" id="fr"></i>
                    <span class="ms-1"> French </span></a
                  >
                  <a href="javascript:;" class="dropdown-item py-2"
                    ><i class="flag-icon flag-icon-de" title="de" id="de"></i>
                    <span class="ms-1"> German </span></a
                  >
                  <a href="javascript:;" class="dropdown-item py-2"
                    ><i class="flag-icon flag-icon-pt" title="pt" id="pt"></i>
                    <span class="ms-1"> Portuguese </span></a
                  >
                  <a href="javascript:;" class="dropdown-item py-2"
                    ><i class="flag-icon flag-icon-es" title="es" id="es"></i>
                    <span class="ms-1"> Spanish </span></a
                  >
                </div>
              </li>
              <li class="nav-item dropdown">
                <a
                  class="nav-link dropdown-toggle"
                  href="#"
                  id="appsDropdown"
                  role="button"
                  data-bs-toggle="dropdown"
                  aria-haspopup="true"
                  aria-expanded="false"
                >
                  <i data-feather="grid"></i>
                </a>
                <div class="dropdown-menu p-0" aria-labelledby="appsDropdown">
                  <div
                    class="px-3 py-2 d-flex align-items-center justify-content-between border-bottom"
                  >
                    <p class="mb-0 fw-bold">Web Apps</p>
                    <a href="javascript:;" class="text-muted">Edit</a>
                  </div>
                  <div class="row g-0 p-1">
                    <div class="col-3 text-center">
                      <a
                        href="../apps/chat.html"
                        class="dropdown-item d-flex flex-column align-items-center justify-content-center wd-70 ht-70"
                        ><i
                          data-feather="message-square"
                          class="icon-lg mb-1"
                        ></i>
                        <p class="tx-12">Chat</p></a
                      >
                    </div>
                    <div class="col-3 text-center">
                      <a
                        href="#"
                        class="dropdown-item d-flex flex-column align-items-center justify-content-center wd-70 ht-70"
                        ><i data-feather="calendar" class="icon-lg mb-1"></i>
                        <p class="tx-12">Calendar</p></a
                      >
                    </div>
                    <div class="col-3 text-center">
                      <a
                        href="#"
                        class="dropdown-item d-flex flex-column align-items-center justify-content-center wd-70 ht-70"
                        ><i data-feather="mail" class="icon-lg mb-1"></i>
                        <p class="tx-12">Email</p></a
                      >
                    </div>
                    <div class="col-3 text-center">
                      <a
                        href="#"
                        class="dropdown-item d-flex flex-column align-items-center justify-content-center wd-70 ht-70"
                        ><i data-feather="instagram" class="icon-lg mb-1"></i>
                        <p class="tx-12">Profile</p></a
                      >
                    </div>
                  </div>
                  <div
                    class="px-3 py-2 d-flex align-items-center justify-content-center border-top"
                  >
                    <a href="javascript:;">View all</a>
                  </div>
                </div>
              </li>
              <li class="nav-item dropdown">
                <a
                  class="nav-link dropdown-toggle"
                  href="#"
                  id="profileDropdown"
                  role="button"
                  data-bs-toggle="dropdown"
                  aria-haspopup="true"
                  aria-expanded="false"
                >
                  <img
                    class="wd-30 ht-30 rounded-circle"
                    src="@/assets/images/face1.jpg"
                    alt="profile"
                  />
                </a>
                <div
                  class="dropdown-menu p-0"
                  aria-labelledby="profileDropdown"
                >
                  <div
                    class="d-flex flex-column align-items-center border-bottom px-5 py-3"
                  >
                    <div class="mb-3">
                      <img
                        class="wd-80 ht-80 rounded-circle"
                        src="@/assets/images/face1.jpg"
                        alt=""
                      />
                    </div>
                    <div class="text-center">
                      <p class="tx-16 fw-bolder">
                        {{ user.first_name }} {{ user.last_name }}
                      </p>
                      <p class="tx-12 text-muted">{{ user.email }}</p>
                    </div>
                  </div>
                  <ul class="list-unstyled p-1">
                    <li class="dropdown-item py-2">
                      <a href="#" class="text-body ms-0">
                        <i class="me-2 icon-md" data-feather="user"></i>
                        <span>Profile</span>
                      </a>
                    </li>
                    <li class="dropdown-item py-2">
                      <a href="javascript:;" class="text-body ms-0">
                        <i class="me-2 icon-md" data-feather="edit"></i>
                        <span>Edit Profile</span>
                      </a>
                    </li>
                    <li class="dropdown-item py-2">
                      <a href="javascript:;" class="text-body ms-0">
                        <i class="me-2 icon-md" data-feather="repeat"></i>
                        <span>Switch User</span>
                      </a>
                    </li>
                    <li class="dropdown-item py-2">
                      <a
                        href="javascript:;"
                        class="text-body ms-0"
                        @click="logoutUser"
                      >
                        <i class="me-2 icon-md" data-feather="log-out"></i>
                        <span>Log Out</span>
                      </a>
                    </li>
                  </ul>
                </div>
              </li>
            </ul>
            <button
              class="navbar-toggler navbar-toggler-right d-lg-none align-self-center"
              type="button"
              data-toggle="horizontal-menu-toggle"
            >
              <i data-feather="menu"></i>
            </button>
          </div>
        </div>
      </nav>
    </div>
    <!-- partial -->

    <div class="page-wrapper">
      <div class="page-content">
        <div class="row">
          <div class="col-12 grid-margin">
            <div class="card">
              <div class="position-relative">
                <figure
                  class="overflow-hidden mb-0 d-flex justify-content-center"
                >
                  <img
                    src="@/assets/images/profile-cover.jpg"
                    class="rounded-top"
                    alt="profile cover"
                  />
                </figure>
                <div
                  class="d-flex justify-content-between align-items-center position-absolute top-90 w-100 px-2 px-md-4 mt-n4"
                >
                  <div>
                    <img
                      class="wd-70 rounded-circle"
                      src="@/assets/images/face1.jpg"
                      alt="profile"
                    />
                    <span class="h4 ms-3 text-dark"
                      >{{ user.first_name }} {{ user.last_name }}</span
                    >
                  </div>
                  <div class="d-none d-md-block">
                    <button class="btn btn-primary btn-icon-text">
                      <i data-feather="edit" class="btn-icon-prepend"></i> Edit
                      profile
                    </button>
                  </div>
                </div>
              </div>
              <div class="d-flex justify-content-center p-3 rounded-bottom">
                <ul class="d-flex align-items-center m-0 p-0">
                  <li class="d-flex align-items-center active">
                    <i
                      class="me-1 icon-md text-primary"
                      data-feather="columns"
                    ></i>
                    <a class="pt-1px d-none d-md-block text-primary" href="#"
                      >Timeline</a
                    >
                  </li>
                  <li class="ms-3 ps-3 border-start d-flex align-items-center">
                    <i class="me-1 icon-md" data-feather="user"></i>
                    <a class="pt-1px d-none d-md-block text-body" href="#"
                      >About</a
                    >
                  </li>
                  <li class="ms-3 ps-3 border-start d-flex align-items-center">
                    <i class="me-1 icon-md" data-feather="users"></i>
                    <a class="pt-1px d-none d-md-block text-body" href="#"
                      >Friends <span class="text-muted tx-12">3,765</span></a
                    >
                  </li>
                  <li class="ms-3 ps-3 border-start d-flex align-items-center">
                    <i class="me-1 icon-md" data-feather="image"></i>
                    <a class="pt-1px d-none d-md-block text-body" href="#"
                      >Photos</a
                    >
                  </li>
                  <li class="ms-3 ps-3 border-start d-flex align-items-center">
                    <i class="me-1 icon-md" data-feather="video"></i>
                    <a class="pt-1px d-none d-md-block text-body" href="#"
                      >Videos</a
                    >
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div class="row profile-body">
          <!-- left wrapper start -->
          <div class="d-none d-md-block col-md-4 col-xl-3 left-wrapper">
            <div class="card rounded">
              <div class="card-body">
                <div
                  class="d-flex align-items-center justify-content-between mb-2"
                >
                  <h6 class="card-title mb-0">About</h6>
                  <div class="dropdown">
                    <a
                      type="button"
                      id="dropdownMenuButton"
                      data-bs-toggle="dropdown"
                      aria-haspopup="true"
                      aria-expanded="false"
                    >
                      <i
                        class="icon-lg text-muted pb-3px"
                        data-feather="more-horizontal"
                      ></i>
                    </a>
                    <div
                      class="dropdown-menu"
                      aria-labelledby="dropdownMenuButton"
                    >
                      <a
                        class="dropdown-item d-flex align-items-center"
                        href="javascript:;"
                        ><i data-feather="edit-2" class="icon-sm me-2"></i>
                        <span class="">Edit</span></a
                      >
                      <a
                        class="dropdown-item d-flex align-items-center"
                        href="javascript:;"
                        ><i data-feather="git-branch" class="icon-sm me-2"></i>
                        <span class="">Update</span></a
                      >
                    </div>
                  </div>
                </div>
                <p>
                  Hi! I'm {{ user.first_name }} the Senior UI Designer at
                  WispUI. We hope you enjoy the design and quality of Social.
                </p>
                <div class="mt-3">
                  <label class="tx-11 fw-bolder mb-0 text-uppercase"
                    >Joined:</label
                  >
                  <p class="text-muted">September 15, 2022</p>
                </div>
                <div class="mt-3">
                  <label class="tx-11 fw-bolder mb-0 text-uppercase"
                    >Lives:</label
                  >
                  <p class="text-muted">Nairobi, Kenya</p>
                </div>
                <div class="mt-3">
                  <label class="tx-11 fw-bolder mb-0 text-uppercase"
                    >Email:</label
                  >
                  <p class="text-muted">{{ user.email }}</p>
                </div>
                <div class="mt-3">
                  <label class="tx-11 fw-bolder mb-0 text-uppercase"
                    >Website:</label
                  >
                  <p class="text-muted">www.wispui.com</p>
                </div>
                <div class="mt-3 d-flex social-links">
                  <a
                    href="javascript:;"
                    class="btn btn-icon border btn-xs me-2"
                  >
                    <i data-feather="github"></i>
                  </a>
                  <a
                    href="javascript:;"
                    class="btn btn-icon border btn-xs me-2"
                  >
                    <i data-feather="twitter"></i>
                  </a>
                  <a
                    href="javascript:;"
                    class="btn btn-icon border btn-xs me-2"
                  >
                    <i data-feather="instagram"></i>
                  </a>
                </div>
              </div>
            </div>
          </div>
          <!-- left wrapper end -->
          <!-- middle wrapper start -->
          <div class="col-md-8 col-xl-6 middle-wrapper">
            <div class="row">
              <div class="col-md-12 grid-margin">
                <div class="card rounded">
                  <div class="card-header">
                    <div
                      class="d-flex align-items-center justify-content-between"
                    >
                      <div class="d-flex align-items-center">
                        <img
                          class="img-xs rounded-circle"
                          src="@/assets/images/face1.jpg"
                          alt=""
                        />
                        <div class="ms-2">
                          <p>Mike Popescu</p>
                          <p class="tx-11 text-muted">1 min ago</p>
                        </div>
                      </div>
                      <div class="dropdown">
                        <a
                          type="button"
                          id="dropdownMenuButton2"
                          data-bs-toggle="dropdown"
                          aria-haspopup="true"
                          aria-expanded="false"
                        >
                          <i
                            class="icon-lg pb-3px"
                            data-feather="more-horizontal"
                          ></i>
                        </a>
                        <div
                          class="dropdown-menu"
                          aria-labelledby="dropdownMenuButton2"
                        >
                          <a
                            class="dropdown-item d-flex align-items-center"
                            href="javascript:;"
                            ><i data-feather="meh" class="icon-sm me-2"></i>
                            <span class="">Unfollow</span></a
                          >
                          <a
                            class="dropdown-item d-flex align-items-center"
                            href="javascript:;"
                            ><i
                              data-feather="corner-right-up"
                              class="icon-sm me-2"
                            ></i>
                            <span class="">Go to post</span></a
                          >
                          <a
                            class="dropdown-item d-flex align-items-center"
                            href="javascript:;"
                            ><i data-feather="share-2" class="icon-sm me-2"></i>
                            <span class="">Share</span></a
                          >
                          <a
                            class="dropdown-item d-flex align-items-center"
                            href="javascript:;"
                            ><i data-feather="copy" class="icon-sm me-2"></i>
                            <span class="">Copy link</span></a
                          >
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="card-body">
                    <p class="mb-3 tx-14">
                      Lorem ipsum dolor sit amet, consectetur adipisicing elit.
                      Accusamus minima delectus nemo unde quae recusandae
                      assumenda.
                    </p>
                  </div>
                  <div class="card-footer">
                    <div class="d-flex post-actions">
                      <a
                        href="javascript:;"
                        class="d-flex align-items-center text-muted me-4"
                      >
                        <i class="icon-md" data-feather="heart"></i>
                        <p class="d-none d-md-block ms-2">Like</p>
                      </a>
                      <a
                        href="javascript:;"
                        class="d-flex align-items-center text-muted me-4"
                      >
                        <i class="icon-md" data-feather="message-square"></i>
                        <p class="d-none d-md-block ms-2">Comment</p>
                      </a>
                      <a
                        href="javascript:;"
                        class="d-flex align-items-center text-muted"
                      >
                        <i class="icon-md" data-feather="share"></i>
                        <p class="d-none d-md-block ms-2">Share</p>
                      </a>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <!-- middle wrapper end -->
          <!-- right wrapper start -->
          <div class="d-none d-xl-block col-xl-3">
            <div class="row">
              <div class="col-md-12 grid-margin">
                <div class="card rounded">
                  <div class="card-body">
                    <h6 class="card-title">suggestions for you</h6>
                    <div
                      class="d-flex justify-content-between mb-2 pb-2 border-bottom"
                    >
                      <div class="d-flex align-items-center hover-pointer">
                        <div class="ms-2">
                          <p>Mike Popescu</p>
                          <p class="tx-11 text-muted">12 Mutual Friends</p>
                        </div>
                      </div>
                      <button class="btn btn-icon border-0">
                        <i data-feather="user-plus"></i>
                      </button>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <!-- right wrapper end -->
        </div>
      </div>

      <!-- partial:../../partials/_footer.html -->
      <footer class="footer border-top">
        <div
          class="container d-flex flex-column flex-md-row align-items-center justify-content-between py-3 small"
        >
          <p class="text-muted mb-1 mb-md-0">
            Copyright © 2022
            <a href="/" target="_blank">WispUI</a>.
          </p>
        </div>
      </footer>
      <!-- partial -->
    </div>
  </div>
</template>

<script>
import { useRouter } from "vue-router";
export default {
  setup() {
    const router = useRouter();

    function logoutUser() {
      sessionStorage.removeItem("token");
      sessionStorage.removeItem("user");
      router.push("/");
    }

    const user = JSON.parse(sessionStorage.getItem("user"));

    return { logoutUser, user };
  },
};
</script>
