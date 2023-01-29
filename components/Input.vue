<script setup lang="ts">
const props = defineProps({
    placeholder: {
        type: String, 
        required: true
    },
    type: {
        type: String,
        required: true
    }
})
</script>

<template>
    <input
        class= "
            p-2 
            w-100% 
            m-1 
            rounded-lg 
            outline-0 
            bg-gray-100 
            hover:cursor-pointer
        " :type="type" :placeholder="placeholder">
</template>