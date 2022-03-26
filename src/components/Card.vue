<template>
  <div class="card">
    <div class="card__img">
      <img v-bind:src="gameData.img" alt="" />
      <div class="rating shadow">
        <span class="d-block">
          <img src="../assets/purple-star-hi.png" alt="" class="img-fluid star__incon" />
         
        </span>
        <span class="d-block">
         {{gameData.rating}}
        </span>

      </div>
    </div>
    <div class="card__name">{{ gameData.name }}</div>

    <router-link :to="`/details/${gameData.id}`">
      <button class="my-2">Show More</button></router-link
    >
  </div>
</template>

<script setup>
const props = defineProps({
  gameData: Object,
});
</script>

<style lang="scss" scoped>
.card {
  width: 134px;
  border: none;
  margin-bottom: 5px;

  border-radius: 10px;
  display: flex;
  flex-direction: column;
  justify-content: space-between;
 
  background-color: var(--bg-primary);

  &__name {
    color: var(--tx-primary);
    min-height: 47px;
    padding-top: 4px;
    // align-self: baseline;
  }
  &__img {
    border-radius: 10px;
    position: relative;

    img {
      max-width: 100%;
      border-radius: 10px;
    }
    .rating {
      position: absolute;
      top: 10px;
      left: 10px;
      background: var(--bg-primary);
      color: var(--tx-primary);
      padding: 1px 6px;
      border-radius: 10px;
      display: flex;
      align-items: center;
      justify-content: space-around;
      img {
        width: 15px;
      }
    }
  }

  button {
    height: 33px;
    width: 100%;
    background: var(--bg-secondary);
    color: var(--tx-secondary);
    font-weight: 700;
    margin-top: 5px;
    border: none;
    cursor: pointer;
    &:hover {
      background: var(--bg-secondary--light);
    }
  }
}
</style>
