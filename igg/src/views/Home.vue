<template>
  <div class="home">
    <swiper class="swiper" :options="swiperOption">
      <swiper-slide
        ><img src="../assets/img/banner1.jpg" alt=""
      /></swiper-slide>
      <swiper-slide
        ><img src="../assets/img/banner2.jpg" alt=""
      /></swiper-slide>
      <swiper-slide
        ><img src="../assets/img/banner3.jpg" alt=""
      /></swiper-slide>
      <swiper-slide
        ><img src="../assets/img/banner4.jpg" alt=""
      /></swiper-slide>
      <swiper-slide
        ><img src="../assets/img/banner5.jpg" alt=""
      /></swiper-slide>
      <div class="swiper-pagination" slot="pagination"></div>
    </swiper>
    <div class="big_title">
      <i class="iconfont icon-hengxian"></i>
      <span>最新商品</span>
      <i class="iconfont icon-hengxian"></i>
      <i></i>
    </div>
    <div class="product">
      <div class="card" v-for="(v, i) of latestProductList" :key="i">
        <router-link :to="`/details/${v.pid}`">
          <!-- <router-link :to="`/article/${v.id}`"> -->
          <img :src="v.img1" alt="" />
          <p class="title">
            <img class="new" src="../assets/img/new_icon.png" alt="" />
            <span>{{ v.title }}</span>
          </p>
          <p class="price">{{ v.price.toFixed(2) }}</p></router-link
        >
      </div>
    </div>
    <div class="big_title">
      <i class="iconfont icon-hengxian"></i>
      <span>热门商品</span>
      <i class="iconfont icon-hengxian"></i>
      <i></i>
    </div>
    <div class="product">
      <div class="card" v-for="(v, i) of hotProductList" :key="i">
        <router-link :to="`/details/${v.pid}`">
          <img :src="v.img1" alt="" />
          <p class="title">
            <img class="new" src="../assets/img/hot_icon.png" alt="" />
            <span>{{ v.title }}</span>
          </p>
          <p class="price">{{ v.price.toFixed(2) }}</p>
        </router-link>
      </div>
    </div>
    <div class="more">
      <mt-button type="default">更多</mt-button>
    </div>
    <my-footer></my-footer>
  </div>
</template>

<script>
import { Swiper, SwiperSlide } from "vue-awesome-swiper";
import "../../public/style/classie";
import "../../public/style/sidebarEffects";
import "swiper/css/swiper.css";
export default {
  name: "swiper-example-autoplay",
  title: "Autoplay",
  components: {
    Swiper,
    SwiperSlide,
  },
  data() {
    return {
      latestProductList: [],
      hotProductList: [],
      swiperOption: {
        spaceBetween: 30,
        centeredSlides: true,
        autoplay: {
          delay: 2500,
          disableOnInteraction: false,
        },
        loop: true,
        pagination: {
          el: ".swiper-pagination",
          clickable: true,
        },
      },
    };
  },
  methods: {},
  mounted() {
    this.axios.get("/latestproduct").then((res) => {
      // console.log(res.data);
      res.data.forEach((el) => {
        el.img1 = require("../assets/img/" + el.img1);
        this.latestProductList.push(el);
      });
    });
    this.axios.get("/hotproduct").then((res) => {
      // console.log(res.data);
      res.data.forEach((el) => {
        el.img1 = require("../assets/img/" + el.img1);
        this.hotProductList.push(el);
      });
    });
  },
};
</script>

<style scoped>
@import "../../public/style/component.css";
a {
  text-decoration: none;
  color: #444;
}
.home img {
  width: 375px;
}
.home .big_title {
  text-align: center;
  margin-top: 36px;
}
.home .big_title span {
  font-size: 23px;
  margin: 0 8px;
}
.home .big_title .iconfont {
  width: 50px;
}
.home .product {
  margin-top: 20px;
  padding: 0 15px;
  display: flex;
  flex-wrap: wrap;
}
.home .card {
  width: 162px;
  text-align: center;
  margin: 5px 5px;
  /* background-color: aqua; */
}
.home .card img {
  width: 100%;
}
.home .card .new {
  display: inline-block;
  width: 26px;
}
.home .card .title {
  margin-top: 8px;
  text-align: left;
  margin-bottom: 8px;
}
.home .card .price {
  font-weight: bold;
  display: inline-block;
  color: #a6cc63;
  font-style: normal;
  margin: 0 0.05rem;
  font-family: verdana;
}
.home .more {
  text-align: center;
  margin-top: 40px;
  margin-bottom: 40px;
}
.home .mint-button--normal {
  padding: 0 65px;
}
</style>