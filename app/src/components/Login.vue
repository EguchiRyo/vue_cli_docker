<template>
  <div>
    <input
      name="email"
      v-model="email"
      v-validate="'required|email'"
      :class="{'has-error': errors.has('email')}">
    <p v-if="errors.has('email')" class="alert-danger">
      {{ errors.first('email') }}
    </p>

    <input type="password">

    <button @click="register">Register</button>
  </div>
</template>

<script>
  import Vue from 'vue'
  import VeeValidate from 'vee-validate'
  import axios from 'axios'

  Vue.use(VeeValidate)

  export default {
    data () {
      return {
        email: ''
      }
    },
    methods: {
      register () {
        this.$validator.validateAll().then((result) => {
          if (!result) {
            return
          }
          axios.get(process.env.API_ENDPOINT)
            .then(response => {
              this.text = response.data
                console.log(response.data)
              })
        })
      }
    }
  }
</script>

<style>
  .alert-danger {
    color: red;
  }
  .has-error {
    border-color: red;
  }
</style>
