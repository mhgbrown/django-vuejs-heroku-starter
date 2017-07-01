import Vue from 'vue'
import VueResource from 'vue-resource'
import Cookies from 'js-cookie'

import App from './App.vue'
import router from './router'

Vue.use(VueResource)

// Set the CSRF token for AJAX provided by Django
var csrftoken = Cookies.get('csrftoken');
Vue.http.headers.common['X-CSRFToken'] = csrftoken;

// eslint-disable-next-line no-new
new Vue({
  el: '#app',
  router,
  render: h => h(App)
});
