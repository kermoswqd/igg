<template>
  <div class="details">
    <mt-swipe class="banner" :auto="0">
      <mt-swipe-item><img :src="product.img1" alt="" /></mt-swipe-item>
      <mt-swipe-item><img :src="product.img2" alt="" /></mt-swipe-item>
      <mt-swipe-item><img :src="product.img3" /></mt-swipe-item>
    </mt-swipe>
    <div class="content">
      <div class="title">{{ product.title }}</div>
      <div class="price">{{ product.price }}.00</div>
      <div class="star_col"><span>5.0</span> <em>加入收藏</em></div>
      <div class="desc">
        <div v-html="product.desc"></div>
        <!-- <p>保温效力: 68°C以上(6小时)</p>
        <p>保冷效力: 10°C以下(6小时)</p> -->
      </div>
      <div class="more">
        <span>更多 </span>
        <img src="../assets/img/sanjiao.png" alt="" />
      </div>
      <div class="number">
        <div class="num">数量</div>
        <p>
          <mt-button size="small" @click="myMinus">－</mt-button>
          <input v-model="num" type="text" name="" id="" />
          <mt-button size="small" @click="myAdd">＋</mt-button>
        </p>
      </div>
      <mt-button class="buy" size="large" @click="myaAdCar"
        >加入购物车</mt-button
      >
      <div class="share">
        <span>分享</span>
        <img src="../assets/img/facebook_gray.png" alt="" />
        <img src="../assets/img/twitter_gray.png" alt="" />
        <img src="../assets/img/weibo_gray.png" alt="" />
        <span>需要帮助？</span>
      </div>
      <div class="imgdesc">
        <img
          src="https://statics.igg.com/shop/goods/2020/08/11/20200811212908_7116_4497.jpg"
          alt=""
        />
        <img
          src="https://statics.igg.com/shop/goods/2020/08/11/20200811214323_2137_8916.jpg"
          alt=""
        />
      </div>
    </div>
    <my-footer></my-footer>
  </div>
</template>

<script>
import { mapMutations } from "vuex";
export default {
  data() {
    return {
      product: [],
      num: 0,
    };
  },
  methods: {
    ...mapMutations(["addCar"]),
    myaAdCar() {
      let obj = {
        num: this.num,
        product: this.product,
      };
      obj.product.num = this.num;
      if (this.num > 0) {
        this.addCar(obj);
        this.$toast({
          message: "加入购物车成功",
          position: "center",
          duration: 2000,
        });
      }
    },
    myAdd() {
      this.num++;
    },
    myMinus() {
      if (this.num > 0) {
        this.num--;
      }
    },
  },
  mounted() {
    // console.log(this.$route.params.id);
    let id = this.$route.params.id;
    this.axios
      .get("/details", {
        params: { id },
      })
      .then((res) => {
        console.log(res.data[0]);
        let data = res.data[0];
        data.img1 = require("../assets/img/" + data.img1);
        data.img2 = require("../assets/img/" + data.img2);
        data.img3 = require("../assets/img/" + data.img3);
        this.product = data;
      });
  },
};
</script>

<style scoped>
.details .banner {
  height: 375px;
  width: 375px;
}
.details .banner img {
  height: 100%;
  /* width: 100%; */
}
.details .content {
  padding: 0 20px;
}
.details .title {
  margin-top: 25px;
  font-size: 26px;
}
.details .price {
  font-size: 20px;
  color: #78a922;
  font-weight: bold;
  padding: 5px 0;
}
.details .star_col {
  background: url("../assets/img/star_icon.png") no-repeat;
  background-size: 100px 190px;
  padding: 0 0 0 110px;
  margin: 10px 0;
}
.details .star_col em {
  /* ftext-align: right; */
  float: right;
}
.details .desc {
  color: #444;
  line-height: 32px;
  font-size: 16px;
}
.details .more {
  text-align: center;
  color: #78a922;
  font-size: 14px;
  margin-bottom: 25px;
  margin-top: 10px;
}
.details .more img {
  width: 12px;
}
.details .number p {
  /* text-align: center; */
  font-weight: bold;
}
.details .number input {
  width: 80px;
  text-indent: 35px;
  margin-top: 25px;
  height: 48px;
}
.details .mint-button--default {
  background-color: #fff;
}
.details .buy {
  margin-top: 35px;
  background-color: #a6cc63;
  color: #fff;
}
.details .share {
  margin: 50px 0;
}
.details .share img {
  margin-top: 20px;
  margin: 0 5px;
  width: 24px;
  height: 24px;
}
.details .share span {
  margin: 0 20px;
}
.details .imgdesc img {
  width: 100%;
}
.desc .mint-button:after:active {
  background-color: none;
}
</style>