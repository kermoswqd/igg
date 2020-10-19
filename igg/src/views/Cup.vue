<template>
  <div class="product">
    <div class="category">
      <span>最新</span>
      <img src="../assets/img/sanjiao.png" alt="" />
    </div>
    <div class="product_list">
      <div class="card">
        <img
          src="https://statics.igg.com/shop/goods/2020/08/10/20200810b13cde0c25fd4ac146a0d1395c16102115954.jpg"
          alt=""
        />
        <p class="title">
          <img
            class="new"
            src="https://store.igg.com/m/images/hot_icon.png"
            alt=""
          />
          <span> 《王国纪元》膳魔师保温杯 </span>
        </p>
        <p class="price">389.00元</p>
      </div>
      <div class="card">
        <img
          src="https://statics.igg.com/shop/goods/2020/08/10/20200810b13cde0c25fd4ac146a0d1395c16102115954.jpg"
          alt=""
        />
        <p class="title">
          <img
            class="new"
            src="https://store.igg.com/m/images/hot_icon.png"
            alt=""
          />
          <span> 《王国纪元》膳魔师保温杯 </span>
        </p>
        <p class="price">389.00元</p>
      </div>
      <div class="card">
        <img
          src="https://statics.igg.com/shop/goods/2020/08/10/20200810b13cde0c25fd4ac146a0d1395c16102115954.jpg"
          alt=""
        />
        <p class="title">
          <img
            class="new"
            src="https://store.igg.com/m/images/hot_icon.png"
            alt=""
          />
          <span> 《王国纪元》膳魔师保温杯 </span>
        </p>
        <p class="price">389.00元</p>
      </div>
      <div class="card">
        <img
          src="https://statics.igg.com/shop/goods/2020/08/10/20200810b13cde0c25fd4ac146a0d1395c16102115954.jpg"
          alt=""
        />
        <p class="title">
          <img
            class="new"
            src="https://store.igg.com/m/images/hot_icon.png"
            alt=""
          />
          <span> 《王国纪元》膳魔师保温杯 </span>
        </p>
        <p class="price">389.00元</p>
      </div>
    </div>
  </div>
</template>

<script>
export default {};
</script>

<style scoped>
.product .category {
  padding: 0 15px;
  height: 50px;
  line-height: 50px;
  /* text-align: center; */
  display: flex;
  justify-content: space-between;
  border-bottom: 1px solid rgb(197, 195, 195);
}
.product .category img {
  height: 10px;
  margin-top: 18px;
}

.product .product_list {
  margin-top: 20px;
  padding: 0 15px;
  display: flex;
  flex-wrap: wrap;
}
.product .card {
  width: 162px;
  text-align: center;
  margin: 5px 5px;
  /* background-color: aqua; */
}
.product .card img {
  width: 100%;
}
.product .card .new {
  display: inline-block;
  width: 26px;
}
.product .card .title {
  margin-top: 8px;
  text-align: left;
  margin-bottom: 8px;
}
.product .card .price {
  font-weight: bold;
  display: inline-block;
  color: #a6cc63;
  font-style: normal;
  margin: 0 0.05rem;
  font-family: verdana;
}
</style>