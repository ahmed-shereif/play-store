<template>
  <div class="panner container  ">
    <div class="row  bg-success">
      <div class="panner__img col-lg-8 col-12 bg-info px-0">
        <img src="../assets/Bitmap.png" class="img-fluid" alt="" />
      </div>
      <div class="panner__info col-lg-4 col-sm-12 py-2">
        <div class="panner__info__container py-2 ">
          <h4 >Subway Surfer</h4>
          <h5>SYBO Games</h5>
          <p>SURF the urban wave! DODGE the oncoming trains!</p>
          <p class="panner__info__download">300K Downloads</p>
          <button>MORE INFO</button>
        </div>
      </div>
    </div>
  </div>
</template>

<script setup></script>

<style lang="scss" scoped>
.panner {
  border-radius: 10px;
  margin-top: 10px;
  overflow: hidden;
  color: var(--tx-primary);

  &__img {
    
    height: auto;
    img{

      // max-width: 100%;
      width: 100%;
      height: auto;
    }


    overflow: hidden;
  }

  &__info {
    background: var(--bg-primary);

    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    &__container {
      width: 80%;
    }
    h4 {
      font-size: 1.18rem;
      font-weight: 700;
    }
    h5 {
      font-size: 0.9rem;
    }
    p {
      font-size: 0.875rem;
    }
    &__download {
      color: var(--tx-primary--light);
    }
    button {
      height: 33px;
      width: 100%;
      background: var(--bg-secondary);
      color: var(--tx-secondary);
      font-weight: 700;

      border: none;
      cursor: pointer;
      &:hover {
        background: var(--bg-secondary--light);
      }
    }
  }
}

@media only screen and (min-width: 992px) {
  .panner {
    width: 777px;
    margin-top: 30px;
  }
}
</style>
