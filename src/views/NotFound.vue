<template>
  <div class="container">
    <p>当前页面不存在，请检查网址是否正确</p>
    <div>
      <router-link to="/">返回首页</router-link>
    </div>
  </div>
</template>

<script lang="ts">
export default {
  name: 'NotFound'
};
</script>

<style lang="scss" scoped>
.container {
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  background: #cccccc;

  a {
    text-decoration: underline;
  }
}
</style>