<template>
  <div id="app">
    <div class="overlay" @click="closeOverlay" v-if="visible">
      <img src="../public/qrcode.png">
    </div>
    <router-view></router-view>
  </div>
</template>
<script lang="ts">
import Vue from 'vue';
import {Component} from 'vue-property-decorator'

@Component
export default class App extends Vue {
  visible?:boolean = false
  mounted() {
    if(document.documentElement.clientWidth >= 500){
      window.alert('请使用手机打开本页面，以保证浏览效果')
      this.visible = true
    }
  }
  closeOverlay(){
    this.visible = false
  }
}
</script>

<style lang="scss">
@import "~@/assets/style/reset.scss";
@import "~@/assets/style/helper.scss";

#app {
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  color: #333;
  font-size: 16px;
  font-family: $font-hei;
  line-height: 1.5;
  background: #f5f5f5;
  > .overlay {
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background: fade-out(black, 0.5);
    z-index: 10;
    > img {
      position: absolute;
      top: 50%;
      left: 50%;
      transform: translate(-50%, -50%);
      box-shadow: 0 0 10px rgba(0,0,0,0.25);
    }
  }
}
</style>
