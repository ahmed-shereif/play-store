<template>
  <div class="display container contaner-fluid-sm pb-4 mt-3 px-lg-4 px-3">
    <div class="row pt-3">
      <div class="display__info col-12">
        <p>{{ name }}</p>

        <p class="display__info__seeAll">See all ></p>
      </div>
    </div>

    <div
      class="display__card__row row me-2 justify-content-start"
      v-dragscroll
      draggable="true"
    >
      <Card
        class="col-md-2 mx-2 mx-lg-3 px-0"
        v-for="game in mostRecomended"
        :key="game.name"
        :gameData="game"
      />
    </div>
  </div>
</template>

<script setup>
import Card from "./Card.vue";

import { ref } from "vue";

const props = defineProps({
  name: String,
  mostRecomended: Object,
});
</script>

<style lang="scss" scoped>
.display {
  background: var(--bg-primary);
  border-radius: 5px;

  overflow: hidden;

  &__info {
    display: flex;
    justify-content: space-between;
    &__seeAll {
      filter: var(--filter-logo);
    }
    & p {
      font-weight: 700;
      color: var(--tx-primary);
      padding: 3px;
      font-size: 17px;
      & span {
        font-weight: 800;
        padding: 3px;
        font-size: 17px;
      }
    }
  }
  &__card {
    &__row {
      flex-wrap: nowrap;
      overflow: hidden;
    }
  }
}

@media only screen and (max-width: 991px) {
  .display {
    width: 100%;
    margin: 30px auto;
  }
}

@media only screen and (min-width: 992px) {
  .display {
    width: 777px;
    margin: 30px auto;
  }
}
</style>
