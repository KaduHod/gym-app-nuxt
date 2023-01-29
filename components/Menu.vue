<script setup lang="ts">
import { ref } from "vue"
import { RouterLink, RouterView } from 'vue-router'
let active = ref<boolean>(true)
</script>

<template>
    <div class="block absolute w-40 pt-4 cursor-pointer" style="z-index:100" @click="active = !active">
        <div class="flex flex-col w-full items-center p-3" :class="{hidden: !active}">
            <svg viewBox="10 0 100 80" width="40" height="40">
              <rect width="80" height="6"></rect>
              <rect y="25" width="80" height="6"></rect>
              <rect y="50" width="80" height="6"></rect>
            </svg>
        </div>
        <div class="flex flex-col w-full items-center p-2" :class="{hidden: active}">
            <svg 
                xmlns="http://www.w3.org/2000/svg"  
                viewBox="0 0 29 34" 
                width="50px" 
                height="50px">
                    <path d="M 4.7070312 3.2929688 L 3.2929688 4.7070312 L 10.585938 12 L 3.2929688 19.292969 L 4.7070312 20.707031 L 12 13.414062 L 19.292969 20.707031 L 20.707031 19.292969 L 13.414062 12 L 20.707031 4.7070312 L 19.292969 3.2929688 L 12 10.585938 L 4.7070312 3.2929688 z"/>
                </svg>
        </div>
    </div>

    <div class="h-full block absolute w-40 duration-150 ease-out pt-10 bg-white" :class="{moveEsquerda: active}">
        <nav class="flex h-full min-w-fit w-fit p-2">
            <ul class="flex-col justify-around pl-10  p-2 max-h-full h-full flex text-gray-500 pr-5">
                <RouterLink to="/login">
                    <li class="cursor-pointer hover:translate-x-2 ease-linear duration-150">Profile</li>
                </RouterLink>
                <li class="cursor-pointer hover:translate-x-2 ease-linear duration-150">Muscles</li>
                <li class="cursor-pointer hover:translate-x-2 ease-linear duration-150">Workouts</li>
                <li class="cursor-pointer hover:translate-x-2 ease-linear duration-150">Exercises</li>
                <li class="cursor-pointer hover:translate-x-2 ease-linear duration-150">Settings</li>
            </ul>
        </nav>
    </div>
</template>

<style>
    .moveEsquerda{
        transform: translateX(-100%);
    }
    .moveDireita{
        transform: translateX(0%);
    }
</style>