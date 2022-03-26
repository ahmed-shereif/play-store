<template>
  <div class="container-fluid">
    <div class="header d-flex">
      <div class="header__logo">
        <router-link to="/"> <img src="../assets/Logo_4.png"  class="star__incon" alt="" /></router-link>
       
      </div>

      <div class="header__searchBar">
        <input
          type="text"
          class="header__searchBar__input"
          v-if="isSearchbarOpen"
          placeholder="Search for apps and games"
        />
      </div>
      <div class="header__searchIcon d-flex justify-content-end">
        <img
          src="../assets/loupe.png"
          alt=""
          class="logo"
          @click="isSearchbarOpen = !isSearchbarOpen"
        />
      </div>

      <div
        class="header__threeDots d-flex justify-content-end"
        @click="isLoginFormShown.closeState = !isLoginFormShown.closeState"
      >
        <img src="../assets/more.png" alt="" class="logo" />
      </div>
      <div>
        <img
          src="../assets/night.png"
          width="25"
          alt=""
          @click="toggleTheme()"
        />
      </div>
    </div>
  </div>
  <LoginForm
    v-if="isLoginFormShown.closeState"
    :closeState="isLoginFormShown"
  />
</template>

<script setup>
import { ref, reactive } from "vue";
import LoginForm from "../components/LoginForm.vue";

const isSearchbarOpen = ref(false);
const isLoginFormShown = reactive({
  closeState: false,
});
const theme = ref();

function toggleTheme() {
  this.theme = this.theme == "darkMode" ? "" : "darkMode"; //toggles theme value
  document.documentElement.setAttribute("data-theme", this.theme); // sets the data-theme attribute
  localStorage.setItem("theme", this.theme); // stores theme value on local storage
}
</script>

<style lang="scss" scoped>
.container-fluid {
  background: var(--bg-primary);
}
.logo {
  width: 20px;
  filter: var(--filter-logo);
}

.header {
  height: 100px;
  margin: 0 auto;
  background-color: var(--bg-primary);

  align-items: center;
  justify-content: space-between;
  &__logo {
    flex-basis: 55%;
  }

  &__searchBar {
    flex-basis: 30%;
    &__input {
      width: 100%;
      padding: 5px 10px;
    }
  }

  &__searchIcon {
    flex-basis: 10%;
    padding: 10px;
  }

  &__threeDots {
    padding: 10px;
  }
}
@media only screen and (max-width: 700px) {
  .header {
    &__logo {
      flex-basis: 40%;

      & img {
        width: 100%;
        filter : var(--filter-logo)
      }
    }

    &__searchBar {
      flex-basis: 50%;
      &__input {
        width: 100%;
        padding: 5px 10px;
      }
    }

    &__searchIcon {
      flex-basis: 10%;
    }

    &__threeDots {
      padding: 10px;
    }
  }
}

@media only screen and (min-width: 992px) {
  .header {
    width: 777px;
  }
  .row {
    width: 777px;
  }
}
</style>
