<template>
  <div class="login">
    <img src="../assets/img/login_back.jpg" alt="" />
    <div class="login_form">
      <mt-navbar v-model="selected">
        <mt-tab-item id="1">账号</mt-tab-item>
        <mt-tab-item id="2">邮箱</mt-tab-item>
      </mt-navbar>

      <!-- tab-container -->
      <mt-tab-container v-model="selected">
        <mt-tab-container-item id="1">
          <mt-cell class="login_phone">
            <div>
              <mt-field
                class="login_input"
                label="用户名 ："
                placeholder="请输入用户名"
                v-model="uname"
                @blur.native.capture="checkUsername"
                :state="usernameState"
                type="tel"
              ></mt-field>
              <mt-field
                class="login_input"
                label="密码 ："
                v-model="upwd"
                placeholder="请输入密码"
                @blur.native.capture="checkPassword"
                :state="passwordState"
                type="password"
              ></mt-field>
              <div>
                <mt-button class="btn1" size="large" @click="handle"
                  >登录</mt-button
                >
              </div>
              <div>
                <router-link to="/register"> 还没有账号，去注册</router-link>
                >
              </div>
              <div class="tip">
                <p>
                  未注册的手机号使用验证码登录时将自动注册，且视为同意并接受：
                  <a href="https://policies.igg.com/terms_of_service?tag=chs"
                    >服务协议</a
                  >
                </p>
              </div>
              <!-- <div class="other">或使用以下账号登录</div> -->
            </div>
          </mt-cell>
        </mt-tab-container-item>
        <mt-tab-container-item id="2">
          <mt-cell>
            <mt-cell class="login_phone">
              <div>
                <mt-field
                  class="login_input"
                  label="邮箱 ："
                  placeholder="请输入邮箱"
                  type="tel"
                ></mt-field>
                <mt-field
                  class="login_input"
                  label="密码 ："
                  placeholder="请输入密码"
                  type="tel"
                ></mt-field>
                <div>
                  <mt-button class="btn1" size="large">登录</mt-button>
                </div>
                <div>
                  <mt-button class="btn2" size="large"
                    >还没有账号，去注册</mt-button
                  >
                </div>
                <div class="tip">
                  <p>
                    未注册的手机号使用验证码登录时将自动注册，且视为同意并接受：
                    <a href="https://policies.igg.com/terms_of_service?tag=chs"
                      >服务协议</a
                    >
                  </p>
                </div>
                <!-- <div class="other">或使用以下账号登录</div> -->
              </div>
            </mt-cell>
          </mt-cell>
        </mt-tab-container-item>
      </mt-tab-container>
    </div>
    <!-- <div class="other">或使用以下账号登录</div> -->
  </div>
</template>

<script>
import { mapMutations } from "vuex";
export default {
  data() {
    return {
      selected: "1",
      uname: "",
      upwd: "",
      usernameState: "",
      passwordState: "",
    };
  },
  methods: {
    ...mapMutations(["logined"]),
    checkUsername() {
      let usernameRegExp = /^[0-9a-zA-Z_]{6,20}$/;
      if (usernameRegExp.test(this.uname)) {
        this.usernameState = "success";
        return true;
      } else {
        this.usernameState = "error";
        this.$toast({
          message: "用户名为必填项",
          position: "center",
          duration: "2000",
        });
        return false;
      }
    },
    checkPassword() {
      //密码的正则表达式
      let passwordRegExp = /^[0-9A-Za-z]{8,20}$/;
      if (passwordRegExp.test(this.upwd)) {
        this.passwordState = "success";
        return true;
      } else {
        this.passwordState = "error";
        this.$toast({
          message: "密码必须为字母、数字的组合体",
          position: "center",
          duration: "2000",
        });
        return false;
      }
    },
    handle() {
      if (this.checkUsername() && this.checkPassword()) {
        this.axios
          .post("/login", `uname=${this.uname}&upwd=${this.upwd}`)
          .then((res) => {
            console.log(res.data);
            if (res.data.code == 1) {
              sessionStorage.setItem("uname", this.uname);
              this.logined(this.uname);
              this.$toast({
                message: "登录成功",
                position: "center",
                duration: "1000",
              });
              setTimeout(() => {
                this.$router.push("/");
              }, 1000);
            } else {
              this.$messagebox("登录提示", "用户名或者密码错误");
            }
          });
      }
    },
  },
};
</script>

<style scoped>
.login img {
  width: 100%;
}
.login .login_form {
  width: 90%;
  margin: auto;
  /* height: 500px; */
  /* background-color: aquamarine; */
  position: relative;
  /* bottom: 55px; */
  padding: 15px;
}
.login .mint-navbar {
  border-top-left-radius: 20px;
  border-top-right-radius: 20px;
}
.login .mint-tab-item-label {
  font-size: 16px;
  color: #333;
}
.login .mint-navbar .mint-tab-item.is-selected .mint-tab-item-label {
  color: black;
  font-weight: bold;
  padding-bottom: 10px;
  border-width: 5px;
  /* border-bottom: 3px solid #ffba00; */
}
.login .btn1 {
  margin-top: 15px;
  border-radius: 25px;
  margin-bottom: 15px;
  background-color: #ffba00;
  color: #fff;
}
.login .btn2 {
  border-radius: 25px;
  color: #666;
  /* border: 1px solid #e7e7e7; */
  background-color: #ffffff;
  margin-bottom: 10px;
}
.login .mint-cell-wrapper {
  margin-bottom: 10px;
}
.login .tip {
  padding: 10px 10px;
  font-size: 12px;
  color: #ccc;
}
</style>