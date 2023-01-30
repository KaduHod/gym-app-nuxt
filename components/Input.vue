<script setup lang="ts">
import { emit } from 'process';

const props = defineProps({
    placeholder: {
        type: String, 
        required: true
    },
    type: {
        type: String,
        required: true
    },
    name: {
        type: String,
        required: false
    },
    emitFunction : {
        type: String,
        required: false
    }
})

const data = ref()

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
        " :type="type" @input="$emit(emitFunction ?? '', data)" v-model="data" :placeholder="placeholder" :name="name ?? ''">
</template>