<template>
  <Header />
  <div class="panner__container mt-3 bg-danger">
    <img :src="currentGame.fullPhoto" alt="" class="img-fluid" />
  </div>

  <div class="game mt-3 p-4">
    <h1 class="game__name fw-2">{{currentGame.name}}</h1>
    <h3>SYBO Games</h3>
    <p class="game__download fs-6">300K Downloads</p>
    <p class="game__info lh-1">Dash as fast as you can!</p>
    <p class="game__info lh-1">DODGE the oncoming trains!</p>
    <p class="game__info pt-2">
      Help Jake, Tricky and Fresh escape from the grumpy Inspector and his dog.
    </p>
    <p class="game__info">
      <span><img class="pe-2 star__incon" src="../assets/purple-star-hi.png" alt="" /></span
      >Colorful and vivid HD graphics!
    </p>
    <p class="game__info">
      <span><img class="pe-2 star__incon" src="../assets/purple-star-hi.png" alt="" /></span
      >Grind trains with your cool crew!
    </p>
  </div>
  <Display
    name="Most Recomendation"
    :mostRecomended="mostRecomended.recomended"
  />
</template>

<script setup>
import { ref, reactive,onBeforeMount ,onBeforeUpdate} from "vue";
import { useRouter, useRoute } from "vue-router";
import Header from "../components/Header.vue";
import Display from "../components/Display.vue";

import mostRecomendedJson from "../jsonData/mostRecomended.json";
const mostRecomended = reactive({
  recomended: mostRecomendedJson,
});
const currentGame= ref()
const route = useRoute();
console.log(route.params.id);
 onBeforeMount(() => {
         
      currentGame.value= mostRecomended.recomended.find(ob=>ob.id==route.params.id)
       console.log(  currentGame.value);
        window.scrollTo(0,0);


       })

       onBeforeUpdate(()=>{
               currentGame.value= mostRecomended.recomended.find(ob=>ob.id==route.params.id)
               console.log(  currentGame.value);
                window.scrollTo(0,0);
       })

</script>

<style lang="scss" scoped>

.star__incon{
  filter:var(--filter-logo)
}
.game {
  width: 100%;
  margin: auto;
  background: var(--bg-primary);
  color: var(--tx-primary);
}
.game__download {
  color: var(--tx-primary--light);
}
.game__info {
  span {
    img {
      width: 25px;
    }
  }
}
@media only screen and (max-width: 991px) {
  .panner__container {
    margin: auto;
    width: auto;

    overflow-y: hidden;

    img {
      min-width: 100%;
      display: block;
      margin: auto;
      &__info {
        span {
          width: 20px;
        }
      }
    }
  }
}

@media only screen and (min-width: 992px) {
  .panner__container {
    margin: auto;
    width: 777px;
    height: 209px;
    overflow-y: hidden;

    img {
      min-width: 100%;
      display: block;
      margin: auto;
    }
  }
  .game {
    width: 777px;
    margin: auto;
    background: var(--bg-primary);
    color: var(--tx-primary);
  }
}
</style>
