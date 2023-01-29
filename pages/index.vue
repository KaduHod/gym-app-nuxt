<script setup lang="ts">
import { ref } from "vue"
import { RouterLink, RouterView } from 'vue-router'
let active = ref<boolean>(true)
</script>
<template>
    <main class=" w-full h-screen flex bg-sky-300">
     <h1 class="text-4xl">HOME</h1>
    </main>
</template>

<style>
    .moveEsquerda{
        transform: translateX(-100%);
    }
    .moveDireita{
        transform: translateX(0%);
    }
</style>