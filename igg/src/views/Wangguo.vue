<template>
  <div
    class="wangguo"
    infinite-scroll-distance="20"
    v-infinite-scroll="loadMore"
    infinite-scroll-disabled="busy"
    infinite-scroll-immediate-check="true"
  >
    <div class="card" v-for="(v, i) of productList" :key="i">
      <router-link :to="`/details/${v.pid}`">
        <img :src="v.img" alt="" />
        <p class="title">
          <img class="new" src="../assets/img/hot_icon.png" alt="" />
          <span>{{ v.title }}</span>
        </p>
        <p class="price">{{ v.price.toFixed(2) }}</p>
      </router-link>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      page: 1,
      productList: [],
      pagecount: 0,
      busy: false,
    };
  },
  mounted() {
    this.loadData();
  },
  methods: {
    loadData() {
      this.$indicator.open({
        text: "加载中...",
        spinnerType: "double-bounce",
      });
      this.busy = true;
      this.axios
        .get("/wangguo", {
          params: {
            page: this.page,
          },
        })
        .then((res) => {
          console.log(res.data);
          this.pagecount = res.data.pagecount;
          res.data.results.forEach((el) => {
            el.img = require("../assets/img/" + el.img);
            this.productList.push(el);
          });
          this.busy = false;
          //关闭加载提示框
          this.$indicator.close();
        });
    },
    loadMore() {
      //页码进行累加
      this.page++;
      if (this.page <= this.pagecount) {
        this.loadData(this.active, this.page);
      }
    },
  },
};
</script>

<style scoped>
a {
  text-decoration: none;
  color: #444;
}
.wangguo {
  font-size: 14px;
  margin-top: 20px;
  padding: 0 15px;
  display: flex;
  flex-wrap: wrap;
}
.wangguo .card {
  width: 162px;
  text-align: center;
  margin: 5px 5px;
  /* background-color: aqua; */
}
.wangguo .card img {
  width: 100%;
}
.wangguo .card .new {
  display: inline-block;
  width: 26px;
  margin-right: 10px;
}
.wangguo .card .title {
  margin-top: 8px;
  text-align: left;
  margin-bottom: 8px;
}
.wangguo .card .price {
  font-weight: bold;
  display: inline-block;
  color: #a6cc63;
  font-style: normal;
  margin: 0 0.05rem;
  font-family: verdana;
}
.wangguo .more {
  text-align: center;
  margin-top: 40px;
  margin-bottom: 40px;
}
.wangguo .mint-button--normal {
  padding: 0 65px;
}
</style>