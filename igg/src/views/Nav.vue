<template>
  <div class="nav">
    <ul>
      <mt-cell value="关闭 ×"></mt-cell>
      <li>全部</li>
      <li>
        游戏
        <ul>
          <li>王国纪元</li>
          <li>城堡争霸</li>
        </ul>
      </li>
      <li>
        类别
        <ul>
          <li>福带</li>
          <li>数码配件</li>
          <li>收藏品</li>
          <li>鼠标垫</li>
          <li>杯子</li>
          <li>服饰</li>
          <li>其他</li>
        </ul>
      </li>
    </ul>
  </div>
</template>

<script>
export default {};
</script>

<style scoped>
.nav {
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
.nav ul > li {
  border-bottom: 1px solid #eee;
}
.nav li {
  padding: 10px 0;
  margin: 20px;
}
</style>