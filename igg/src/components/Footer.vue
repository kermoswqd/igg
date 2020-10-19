<template>
  <div class="footer">
    <div class="totop">
      <mt-button size="large" type="default"> 回到顶部 </mt-button>
    </div>
    <div class="bottom">
      <mt-cell title=" 在线客服">
        <img slot="icon" src="../assets/img/live.png" width="24" height="24" />
      </mt-cell>
      <mt-cell title="服务指南">
        <span><img src="../assets/img/more.png" alt="" /></span>
        <img
          slot="icon"
          src="../assets/img/service.png"
          width="24"
          height="24"
        />
      </mt-cell>
      <mt-cell title="支付方式">
        <span><img src="../assets/img/more.png" alt="" /></span>
        <img
          slot="icon"
          src="../assets/img/method.png"
          width="24"
          height="24"
        />
      </mt-cell>
      <mt-cell title="配送">
        <span><img src="../assets/img/more.png" alt="" /></span>
        <img
          slot="icon"
          src="../assets/img/shipping.png"
          width="24"
          height="24"
        />
      </mt-cell>
      <mt-cell title="联系我们">
        <span><img src="../assets/img/more.png" alt="" /></span>
        <img
          slot="icon"
          src="../assets/img/contact.png"
          width="24"
          height="24"
        />
      </mt-cell>
      <mt-cell title="关注我们">
        <span><img src="../assets/img/more.png" alt="" /></span>
        <img
          slot="icon"
          src="../assets/img/about_us.png"
          width="24"
          height="24"
        />
      </mt-cell>
      <mt-cell title="其他">
        <span><img src="../assets/img/more.png" alt="" /></span>
        <img
          slot="icon"
          src="../assets/img/others.png"
          width="24"
          height="24"
        />
      </mt-cell>
    </div>
    <div class="footerlogo">
      <img src="../assets/img/footer_logo.png" alt="" />
    </div>
    <div class="copyright">© 2020 IGG All Rights Reserved.</div>
  </div>
</template>

<script>
export default {};
</script>

<style>
.footer .totop {
  text-align: center;
}
.footer .bottom {
  margin-top: 15px;
}
.footer .bottom li {
  margin: 10px 10px;
}
.footer .mint-cell-wrapper {
  padding: 0 20px;
}
/* .footer .bottom img {
  width: 20px;
  height: 20px;
} */
.footer .bottom span img {
  width: 12px !important;
}
.footer .mint-cell-wrapper {
  /* border-top: 1px solid #000; */
  margin-top: 3px;
}
.footer .footerlogo {
  text-align: center;
  margin-top: 25px;
}
.footer .footerlogo img {
  height: 60px;
}
.footer .copyright {
  margin-top: 15px;
  text-align: center;
  font-size: 12px;
  margin-bottom: 40px;
}
</style>