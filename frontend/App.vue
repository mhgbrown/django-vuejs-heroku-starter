<template>
    <div id="app">
      <router-view :key="$route.path"></router-view>
    </div>
</template>

<script>

export default {
    name: 'app',
    data () {
        return {
        }
    }
}
</script>

<style lang="scss">
@import 'node_modules/reset-css/_reset';

@font-face {
    font-family: 'whoismono';
    src: url('./assets/fonts/whois-mono.eot');
    src: url('./assets/fonts/whois-mono.eot?#iefix') format('embedded-opentype'),
         url('./assets/fonts/whois-mono.woff') format('woff'),
         url('./assets/fonts/whois-mono.ttf') format('truetype'),
         url('./assets/fonts/whois-mono.svg#whoismono') format('svg');
    font-weight: normal;
    font-style: normal;
}

* {
  box-sizing: border-box;
}

html {
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
    font-family: 'whoismono', monospace;
    font-size: 24px;
    color: white;
    background-color: blue;
    height: 100%;
}

body {
    height: 100%;
    display: flex;
    align-items: center;
    justify-content: center;
}

h1, h2, h3, h4, h5, h6 {
    font-size: 2rem;
    font-weight: normal;
    margin: 1rem 0;
}

p {
  margin: 1rem 0;
}
</style>
