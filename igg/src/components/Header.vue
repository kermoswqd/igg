<template>
  <div class="home">
    <mt-header class="header">
      <div class="left" slot="left">
        <img @click="showNav" src="../assets/img/type.png" alt="" />
        <router-link to="/"
          ><img src="../assets/img/logo.png" alt=""
        /></router-link>
      </div>
      <span class="right" slot="right">
        元 中
        <img
          src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABYAAAAMCAYAAABm+U3GAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAyZpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuNi1jMDY3IDc5LjE1Nzc0NywgMjAxNS8wMy8zMC0yMzo0MDo0MiAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wTU09Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9tbS8iIHhtbG5zOnN0UmVmPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvc1R5cGUvUmVzb3VyY2VSZWYjIiB4bWxuczp4bXA9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC8iIHhtcE1NOkRvY3VtZW50SUQ9InhtcC5kaWQ6QTEwMDUzNTgwRjA0MTFFOEJGNDhENDREMDg0MUNBMzEiIHhtcE1NOkluc3RhbmNlSUQ9InhtcC5paWQ6QTEwMDUzNTcwRjA0MTFFOEJGNDhENDREMDg0MUNBMzEiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENDIDIwMTUgKFdpbmRvd3MpIj4gPHhtcE1NOkRlcml2ZWRGcm9tIHN0UmVmOmluc3RhbmNlSUQ9InhtcC5paWQ6Nzk1MEMxNTIwRjA0MTFFOEE5OTJDMThEQTBBMkUzREMiIHN0UmVmOmRvY3VtZW50SUQ9InhtcC5kaWQ6Nzk1MEMxNTMwRjA0MTFFOEE5OTJDMThEQTBBMkUzREMiLz4gPC9yZGY6RGVzY3JpcHRpb24+IDwvcmRmOlJERj4gPC94OnhtcG1ldGE+IDw/eHBhY2tldCBlbmQ9InIiPz7kMfZjAAABPklEQVR42pzTTyiDYRzA8ddDHEaJ5KBxW+SqlOJAKbk4LImDw7Ip5eYiBw4KVyWl3IiLi9yW1Wwnc5OUy9YORossF2r4PvVbvf1692556/P2vr9/vX+ep+E0E5lxHGcfAexgz/nfsYZ1fGCpidMhuiW5i16s4qfOgY04QFTu23FsOH2pwhWcoLmOoS04cw2tHCU7eB7vKjGHS7T6DG3DFcIq/oZFOziNMTyrgknE0ekxtAvXmFDxPEaRMRK4xwieVOEwbhB0xfqQwpCqfZShD/bGuBJZSdyphgF5q34MynVI1dxKb64SMKrgBeNIqHhQnjKJHpWLS0/RHTQe36+EKVyouP3WHSp2jml86iGmyh+3S3AWRz6rwq7dBXx7JY1PYxkxbHvktmS9l6s1mxob4BcbWMYrCohgs9bO+RNgAM2YO0WAqG7NAAAAAElFTkSuQmCC"
          alt=""
        />
      </span>
    </mt-header>
    <mt-navbar class="user">
      <mt-tab-item>
        <li class="user_info" v-if="!uname">
          <router-link to="/login">
            <i class="iconfont icon-yonghu"></i
          ></router-link>
        </li>

        <li class="user_info" v-else>
          <!-- <span>{{ uname }}</span> -->
          <i class="iconfont icon-yonghu"></i>
          <span @click="myLogout">注销</span>
        </li>
      </mt-tab-item>
      <mt-tab-item>
        <li class="user_info">
          <i class="iconfont icon-search"></i></li
      ></mt-tab-item>
      <mt-tab-item>
        <router-link to="/checkout">
          <li class="user_info">
            <i class="iconfont icon-gouwuche"></i>
            <span class="shopCarIcon">{{ carNumber }}</span>
          </li></router-link
        >
      </mt-tab-item>
    </mt-navbar>
  </div>
</template>

<script>
import { mapState, mapMutations } from "vuex";
export default {
  data() {
    return {
      isLogin: "",
    };
  },
  computed: {
    ...mapState(["uname", "carNumber"]),
  },
  methods: {
    ...mapMutations(["logout"]),
    myLogout() {
      this.logout("");
      this.$router.push("/");
    },
    showNav() {
      this.$router.push("/nav");
    },
  },
};
</script>

<style>
.home {
  font-size: 14px;
}
.home a {
  text-decoration: none;
}
.home .header {
  width: 375px;
  height: 60px;
  background-color: #fff !important;
  color: #444;
}
.home .left img:first-child {
  width: 23px;
}
.home .left img:last-child {
  margin-left: 95px;
  width: 114px;
}
.home .right img {
  width: 10px;
}
.home .user {
  width: 375px;
  height: 61px;
  background: #f8f8f8 no-repeat center center;
  list-style: none !important;
  border-top: 1px solid #f0eeee;
  border-bottom: 1px solid #f0eeee;
}
.home .user .iconfont {
  font-size: 24px;
  color: rgb(70, 68, 68);
}
.home .user_info .shopCarIcon {
  width: 15px;
  height: 15px;
  color: #f8f8f8;
  display: inline-block;
  position: relative;
  bottom: 15px;
  background: #a6cc63;
  border-radius: 50%;
}
.home .mint-navbar .mint-tab-item {
  border-left: 1px solid #f0eeee;
  border-right: 1px solid #f0eeee;
}
.mint-navbar .mint-tab-item.is-selected {
  border-bottom: 3px solid #f7f7f7;
  color: #444;
  margin-bottom: -3px;
}
.home .nav {
  width: 100%;
  height: 100%;
  /* width: 1px; */
  background-color: rgb(255, 255, 255);
  position: fixed;
  z-index: 9999;
  /* overflow: hidden; */
  /* display: none; */
  font-size: 16px;
}
.home .nav li {
  padding: 10px 0;
  margin: 20px;

  border-bottom: 1px solid #eee;
}
</style>