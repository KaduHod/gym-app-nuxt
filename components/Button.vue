<script setup lang="ts">
const props = defineProps({
    title:{type:String, required:true}
})
</script>
<template>
    <button 
        class="
            p-2 
            bg-sky-400 
            rounded-lg 
            w-6/12 
            m-1
            text-white
            hover:bg-sky-400 
            hover:text-white
            hover:scale-105 ease-linear duration-150
            "
        >
            {{ title }}
    </button>
</template>