<template>
  <div class="categories">
    <div class="innerSlider" v-dragscroll draggable="true">
      <button
        draggable="true"
        v-for="category in categories"
        :key="category"
        :class="{ active: category.active }"
        @click="toggleActiveState(category)"
      >
        {{ category.name }}

        <span v-if="category.active">&#x2714;</span>
      </button>
    </div>
  </div>
</template>

<script setup>
import { ref } from "vue";

const categories = ref([
  { name: "Sport", active: false },
  { name: "Action", active: true },
  { name: "war", active: false },
  { name: "Arcade", active: false },
  { name: "Sport", active: false },
  { name: "Action", active: false },
  { name: "war", active: false },
  { name: "Arcade", active: false },
  { name: "Sport", active: false },
  { name: "Action", active: false },
  { name: "war", active: false },
  { name: "Arcade", active: false },
  { name: "Sport", active: false },
  { name: "Action", active: false },
  { name: "war", active: false },
  { name: "Arcade", active: false },
  { name: "Sport", active: false },
  { name: "Action", active: false },
  { name: "war", active: false },
  { name: "Arcade", active: false },
  { name: "Action", active: false },
  { name: "war", active: false },
  { name: "Arcade", active: false },
  { name: "Sport", active: false },
  { name: "Action", active: false },
  { name: "war", active: false },
  { name: "Arcade", active: false },
  { name: "Sport", active: false },
  { name: "Action", active: false },
  { name: "war", active: false },
  { name: "Arcade", active: false },
  { name: "Sport", active: false },
  { name: "Action", active: false },
  { name: "war", active: false },
  { name: "Arcade", active: false },
]);

function toggleActiveState(category) {
  category.active = !category.active;
  categories.value.map((cat) => {
    if (cat != category) {
      cat.active = false;
    }
  });
}
</script>

<style lang="scss" scoped>
.innerSlider {
  height: 60px;
  display: flex;
  justify-content: flex-start;
  align-items: center;
  background-color: var(--bg-primary);
  margin-top: 10px;
  cursor: grab;
  overflow: hidden;
}

button {
  width: auto;
  max-width: 250px !important;
  max-height: 30px;
  padding: 2px 10px;
  display: flex;
  align-items: center;
  justify-content: space-between;
  border: 1px solid var(--tx-primary--light);
  background: var(--bg-primary);
  margin-left: 30px;
  border-radius: 10px;
  color: var(--tx-primary);
}

.active {
  background: var(--bg-secondary);
  color: var(--tx-secondary);
}
</style>
