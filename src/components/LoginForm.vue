<template>
  <div class="form__container"    @click.self="props.closeState.closeState = !props.closeState.closeState" @scroll.prevent="hideOverFlow()">
    <img
      width="50"
      class="close__btn d-lg-none"
      src="../assets/cancel.png"
      alt=""
      @click="props.closeState.closeState = !props.closeState.closeState"
    />

    <div
      class="login d-flex flex-column py-4 shadow-lg align-items-start justify-content-start"
    >
      <p class="login__txt">Please add your account details</p>
      <div class="login__input my-2">
        <label for="userName" class="d-block">Username / Email</label>
        <input
          type="text"
          id="userName"
          class="fs-5 px-2 py-1"
          placeholder="Type your username here"
        />
      </div>
      <div class="login__input my-2 position-relative">
        <label for="password" class="d-block">Password</label>
        <input
          :type="isPasswordShown ? 'password' : 'text'"
          id="password"
          class="fs-5 px-2 py-1"
          placeholder="Type your username here"
        />

        <i
          @click="isPasswordShown = !isPasswordShown"
          :class="[
            'fa',
            isPasswordShown ? 'fa-eye-slash' : 'fa-eye',
            'position-absolute',
            'top-50',
            'end-0',
            'px-2',
          ]"
        />
      </div>

      <div class="align-self-end mt-1 login__forgetPassword">
        <a href="">Forget passworrd?</a>
      </div>
      <button class="align-self-center login__button my-2">LOGIN</button>
      <div class="align-self-center login__signup mt-2">
        Dont have account? sign up?
      </div>
    </div>
  </div>
</template>

<script setup>
import { ref } from "vue";
const isPasswordShown = ref(true);
const props = defineProps(["closeState"]);


function hideOverFlow(){
   document.documentElement.setAttribute("over-flow", hidden)
}

</script>




<style lang="scss" scoped>

[over-flow="hidden"]{
  overflow: hidden;
  overflow-y: hidden;
}




//large screens
@media only screen and (min-width: 992px) {
  .login {
    z-index: 3;
    color: var(--tx-primary);
    width: 377px;
    height: 348px;
    background: var(--bg-primary);
    position: absolute;
    border-radius: 10px;
    right: 25%;
    padding: 15px 15px;
    &__txt {
      color: var(--tx-primary--light);
    }
    &__input {
      width: 100%;
      & label {
        font-size: 0.8rem;
      }

      & input {
        width: 100%;
        border: 0px;
        border-bottom: 1px solid var(--tx-primary);
      }
    }

    &__forgetPassword {
      a {
        color: var(--bg-secondary);
        text-decoration: none;
      }
    }
    &__button {
      all: unset;
      background: var(--bg-secondary);
      color: var(--tx-secondary);
      width: 100%;
      text-align: center;
      padding: 6px;
      border-radius: 5px;
      &:hover {
        background: var(--bg-secondary--light);
      }
    }

    &__signup {
      color: var(--bg-secondary);
      text-decoration: none;
    }
  }
}

//small screens
@media only screen and (max-width: 992px) {
  .close__btn {
    position: absolute;
    z-index: 6;
    top: 15%;
    left: 50%;
    position: absolute;
    margin-left: auto;
    margin-right: auto;
    left: 0;
    right: 0;
    text-align: center;
  }
  .form__container {
    width: 100vw;
    height: 100vh;
    position: absolute;
    background: rgb(111, 111, 111, 70%);
    top: 0;
    z-index: 2;
  
  }
  .login {
    color: var(--tx-primary);
    width: 90%;

    background: var(--bg-primary);
    position: absolute;
    border-radius: 10px;

    padding: 15px 15px;
    top: 50%;
    left: 50%;

    transform: translate(-50%, -50%);

    &__txt {
      color: var(--tx-primary--light);
    }
    &__input {
      width: 100%;
      & label {
        font-size: 0.8rem;
      }

      & input {
        width: 100%;
        border: 0px;
        border-bottom: 1px solid var(--tx-primary);
      }
    }

    &__forgetPassword {
      a {
        color: var(--bg-secondary);
        text-decoration: none;
      }
    }
    &__button {
      all: unset;
      background: var(--bg-secondary);
      color: var(--tx-secondary);
      width: 100%;
      text-align: center;
      padding: 6px;
      border-radius: 5px;
      &:hover {
        background: var(--bg-secondary--light);
      }
    }

    &__signup {
      color: var(--bg-secondary);
      text-decoration: none;
    }
  }
}
</style>
