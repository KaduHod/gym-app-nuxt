

<script setup lang="ts">
const props = defineProps({
    titles:{
        type:Array, 
        required:true
    },
    name:{
        type:String,
        required:true
    }
})
</script>

<template>
    <div class="w-100% flex justify-around mt-3">
        <label v-for="(title, index) in titles" :key="index" class="flex flex-col justify-center">
            <input type="radio" :name="name">
            <h1>{{ title }}</h1>
        </label>
    </div>
</template>
