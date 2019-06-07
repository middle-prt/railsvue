<template>
  <form>
    <input v-model= 'from' />
    <input v-model= 'to' />
    <input v-model= 'main_category_name' />
    <button v-on:click="kensaku">変更</button>
  </form>
</template>

<script>
import axios from 'axios';

export default {
  data: function () {
    return {
      maps: [],
      from: '',
      to: '',
      main_category_name: ''
    }
  },
  methods: {
    kensaku(){
      //リクエストデータに入力値を代入
      this.request.name = this.name;
      //axiosでリクエストデータ送信
      axios.post('/api/v1/prmaps', { from: this.from, to: this.to, main_category_name: this.main_category_name}).then(response => {
        console.log(response)
      })
    }
  }
}
  

</script>

<style scoped>
p {
  font-size: 2em;
  text-align: center;
}
</style>
