<script setup lang="ts">

const props = defineProps({
    title:{type:String, required:true},
    isLink:{type:Boolean, required:false}
})
const link = `/${props.title.toLowerCase()}`

</script>
<template>
    <button v-if="!isLink"
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
    <NuxtLink v-else
        :to="link"
        class="
            flex
            items-center
            text-center
            justify-center
            p-2 
            bg-sky-400 
            rounded-lg 
            w-6/12 
            m-1
            text-white
            cursor-pointer
            hover:bg-sky-400 
            hover:text-white
            hover:scale-105 ease-linear duration-150
        "
    >
        {{ title }}
    </NuxtLink>
</template>

<style>
    .my-nuxt-link{
        width: 300px;
    }
</style>