
import Home from './pages/Home.vue';

<template>
    <!-- <a href="#/login">Login</a> |
    <a href="#/register">Register</a> |
    <component :is="currentView" /> -->
    
    <Home />
</template>

<style scoped>
.logo {
  height: 6em;
  padding: 1.5em;
  will-change: filter;
}
.logo:hover {
  filter: drop-shadow(0 0 2em #646cffaa);
}
.logo.vue:hover {
  filter: drop-shadow(0 0 2em #42b883aa);
}
</style>
