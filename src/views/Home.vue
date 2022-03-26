<template>
  <Header />

  <Categories />
  <Panner />
  <Display
    name="Most Recomendation"
    :mostRecomended="mostRecomended.recomended"
  />
  <Display name="Most Popular" :mostRecomended="mostRecomended.popular" />
</template>

<script setup>
import { ref, reactive } from "vue";
import Header from "../components/Header.vue";

import Categories from "../components/Categories.vue";
import Panner from "../components/Panner.vue";
import Display from "../components/Display.vue";

import mostRecomendedJson from "../jsonData/mostRecomended.json";
import popular from "../jsonData/popular.json";

const mostRecomended = reactive({
  recomended: mostRecomendedJson,
  popular: popular,
});
</script>

<style lang="scss" scoped></style>
