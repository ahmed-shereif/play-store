<template>
  <body v-if="dark"></body>
  <router-view></router-view>
</template>

<script setup>
import { ref } from "vue";
const dark = ref(false);
</script>

<style lang="scss">
@import url("https://fonts.googleapis.com/css2?family=Tajawal:wght@400;700&display=swap");
* {
  margin: 0px;
  padding: 0px;
  box-sizing: border-box;
  font-family: "Tajawal", sans-serif;
  font-weight: 400;
  font-size: 16px;
}

:root {
  --bg-primary: rgb(255, 255, 255);
  --bg-secondary: rgb(87, 37, 137);
  --bg-secondary--light: rgb(87, 37, 137, 90%);
  --tx-primary: rgb(84, 84, 84);
  --tx-primary--light: #9d9d9e;
  --tx-secondary: rgb(226, 226, 226);

  --bg-back: rgba(235, 235, 235, 0.699);

  --filter-logo: invert(47%) sepia(39%) saturate(5287%) hue-rotate(261deg) brightness(89%) contrast(92%);
}
$--tx-primary: rgb(84, 84, 84);
$--bg-secondary: rgb(87, 37, 137);
body {
  background-color: var(--bg-back) !important;

  color: var(--tx-primary);
}

[data-theme="darkMode"] {
  --bg-primary: rgb(31, 29, 29);
  --tx-primary: rgb(255, 255, 255);
  --bg-secondary: rgb(247, 99, 30);
    --bg-secondary--light: rgb(247, 99, 30, 80%);
  --tx-primary--light: #5a5a5a;

  --bg-back: #000;
  --filter-logo: invert(66%) sepia(90%) saturate(3217%) hue-rotate(1deg)
    brightness(104%) contrast(98%);
  // background-color: lighten($--tx-primary, 60%) !important;
  background-color: #000 !important;
  color: var(--tx-primary);
}

.star__incon{
  filter:var(--filter-logo)
}
</style>
