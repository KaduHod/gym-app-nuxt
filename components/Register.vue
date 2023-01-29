<script setup lang="ts">
import Input from './Input.vue';
import Button from './Button.vue';
import Radio from './Radio.vue';

</script>

<template>
    <form class=" 
        sm:w-96
        flex flex-col
        p-6
        border-solid
        border
        rounded-xl
        shadow-xl
        h-6/6
        bg-white
        "
    >
        <h1 class="
            w-100 
            flex 
            justify-center 
            items-center 
            mb-3 
            text-3xl
            text-neutral-400
            "
        >Register</h1>
        <Input :type="'text'" :placeholder="'Full name'"/>
        <Input :type="'text'" :placeholder="'User name'"/>
        <Input :type="'text'" :placeholder="'Email'"/>
        <Input :type="'text'" :placeholder="'Cellphone'"/>
        <Input :type="'text'" :placeholder="'Password'"/>
        <Input :type="'text'" :placeholder="'Password confirmation'"/>
        <Radio :titles="['Personal', 'Aluno']" :name="'profile'" />
        <div class="flex w-100% justify-around mt-3">
            <Button :title="'Register'" />
            <Button :title="'Login'" :is-link="true"/>
        </div>
        
    </form>
    
</template>