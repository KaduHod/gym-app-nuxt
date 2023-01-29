<script setup lang="ts">
const props = defineProps({
    title:{type:String},
    logoPath:{type:String}
})
</script>

<template>
    <div class="w-100% bg-gray-200 h-11 mb-2 rounded-lg flex">
        <div class="w-1/4 bg-transparent flex items-center border-red justify-center">
            <img :src="logoPath" alt="">
        </div>
        <div class="w-3/4 flex items-center text-gray-400">
            {{ title }}
        </div>
    </div>
</template>