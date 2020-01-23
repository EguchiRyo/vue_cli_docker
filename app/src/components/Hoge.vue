<template>
  <div class="hoge">
    <h1>{{ msg }}</h1>
    <h2>Essential Links</h2>
    <h3>{{ text }}</h3>
    <div>
      <button v-on:click="output">API call</button>
    </div>
    <router-link to="scene2">goto Scene2</router-link>
  </div>
</template>

<script>
import axios from 'axios'

export default {
  name: 'Login',
  data: function () {
    return {
      msg: '',
      text: ''
    }
  },
  methods: {
    Init: function () {
      this.text = 'Vue.js App'
    },
    output: function () {
      axios.get(process.env.API_ENDPOINT)
        .then(response => {
          this.text = response.data
        })
    }
  },
  mounted: function () {
    this.Init()
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
h1, h2 {
  font-weight: normal;
}
ul {
  list-style-type: none;
  padding: 0;
}
li {
  display: inline-block;
  margin: 0 10px;
}
a {
  color: #42b983;
}
</style>
