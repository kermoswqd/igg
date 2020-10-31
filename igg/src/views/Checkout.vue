<template>
  <div class="checkCar">
    <div class="allselect">
      <input
        type="checkbox"
        @click="checkAll"
        :checked="allChecked"
        name=""
        id=""
      /><i class="checkAll">全选</i>
      <span @click="myDelAll">
        <img src="https://store.igg.com/m/images/delete.png" alt="" />
        删除
      </span>
    </div>
    <div class="card" v-for="(v, i) of shopList" :key="i">
      <div class="left">
        <input
          type="checkbox"
          @click="isCheckAll(i)"
          ref="checkI"
          :checked="bool"
          name=""
          id=""
        />
      </div>
      <div class="right">
        <div class="img">
          <img :src="v.img" alt="" />
        </div>
        <div class="desc">
          <span class="title">{{ v.title }}</span>
          <a @click="del(i)"
            ><img src="https://store.igg.com/m/images/delete.png" :alt="v.pid"
          /></a>
          <p class="num">
            <span @click="dec(i)">-</span>
            <i><input type="text" :value="v.num" name="" id="" /></i>
            <span @click="inc(i)">+</span>
            <span class="price">{{ v.price * v.num.toFixed(2) }}</span>
          </p>
        </div>
      </div>
    </div>

    <div class="check">
      <p>
        <span> 总计</span> <span>{{ total.toFixed(2) }}</span>
      </p>
      <mt-button size="large">结算</mt-button>
    </div>
  </div>
</template>

<script>
import { mapState, mapMutations } from "vuex";
export default {
  data() {
    return {
      total: 0,
      bool: true,
      allChecked: true,
    };
  },
  computed: {
    ...mapState(["shopList"]),
  },
  mounted() {
    this.getTotal();
  },
  watch: {
    allChecked() {
      this.getTotal();
    },
  },
  methods: {
    ...mapMutations(["delAll"]),
    getTotal() {
      this.total = 0;
      let inputs = this.$refs.checkI;
      for (let i = 0; i < inputs.length; i++) {
        if (inputs[i].checked) {
          this.total += this.shopList[i].num * this.shopList[i].price;
        }
      }
    },
    isCheckAll(index) {
      let inputs = this.$refs.checkI;
      let s = 0;
      // if (inputs[index].checked) {
      //   this.total += this.shopList[index].num * this.shopList[index].price;
      // } else {
      //   this.total -= this.shopList[index].num * this.shopList[index].price;
      // }
      this.getTotal();
      for (let i = 0; i < inputs.length; i++) {
        if (inputs[i].checked) {
          s++;
        }
      }
      console.log(s);
      if (s == this.shopList.length) {
        this.allChecked = true;
      } else {
        this.allChecked = false;
      }
    },
    checkAll() {
      // let inputs = this.$refs.checkI;
      this.allChecked = !this.allChecked;
      console.log(this.allChecked);

      if (this.allChecked) {
        this.bool = true;
      } else {
        this.bool = false;
      }
    },
    del(i) {
      // console.log(i);
      this.shopList.splice(i, 1);
      this.getTotal();
      if (!this.shopList) {
        this.total = 0;
      }
    },
    dec(i) {
      if (this.shopList[i].num > 0) {
        this.shopList[i].num--;

        this.getTotal();
      }
      console.log(this.shopList);
    },
    inc(i) {
      this.shopList[i].num++;
      this.getTotal();
      console.log(this.shopList);
    },
    myDelAll() {
      this.delAll();
      this.getTotal();
      this.total = 0;
    },
  },
};
</script>

<style >
.checkCar .allselect {
  padding: 0 15px;
  color: #bfbfbf;
  display: flex;
  height: 50px;
  line-height: 50px;
  /* text-align: center; */
  justify-content: space-between;
  border-bottom: 1px solid #eee;
}
.checkCar .allselect img {
  width: 18px;
}
.checkCar input {
  width: 20px;
  height: 20px;
  background-color: #eee;
  display: inline-block;
  margin-top: 17px;
  margin-right: 20px;
}
.checkCar .checkAll {
  position: relative;
  right: 110px;
  top: 2px;
}
.checkCar .card {
  display: block;
  padding: 25px 15px;
  border-bottom: 1px solid #eee;
  position: relative;
  display: flex;
  /* justify-content: space-between; */
}
.checkCar .img {
  width: 80px;
}
.checkCar .img img {
  width: 100%;
}
.checkCar .right {
  display: flex;
  margin-left: 20px;
  /* justify-content: space-between; */
}
.checkCar .desc {
  margin-left: 30px;
  /* position: relative; */
  width: 178px;
  /* display: flex; */
  /* justify-content: space-between; */
  /* justify-content: space-around; */
}
.checkCar .desc .title {
  font-size: 13px;
  margin-right: 20px;
}
.checkCar .desc img {
  float: right;
  /* margin-left: 25px; */
  /* position: absolute; */
  width: 18px;
  /* top: 0; */
  /* right: 0; */
}
.checkCar .card .desc img {
  /* position: absolute; */
  position: relative;

  /* right: 0; */
  /* left: 25px; */
}
.checkCar .desc .num {
  margin-top: 25px;
  font-size: 14px;
}
.checkCar .desc i {
  margin: 0 10px;
  /* margin-top: 15px; */
}
.checkCar .desc .price {
  margin-left: 35px;
}
.checkCar .check {
  padding: 0 25px;
}
.checkCar .check p {
  margin: 20px 0;
  display: flex;
  justify-content: space-between;
}
.checkCar .mint-button--default {
  background-color: #a6cc63;
  color: #fff;
}
/* .checkCar .desc img{
    position: absolute;
} */
</style>