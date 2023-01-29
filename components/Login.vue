<script setup lang="ts">
import Input from './Input.vue';
import Button from './Button.vue';
import GoogleSignIn from './GoogleSignIn.vue';
import FacebookSignIn from './FacebookSignIn.vue';
import Line from './Line.vue'
</script>

<template>
    <div class="flex w-100 h-screen justify-center items-center bg-sky-300">
        
        <form class=" 
            sm:w-96
            flex flex-col
            p-6
            border-solid
            border
            rounded-xl
            shadow-xl
            h-4/6
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
            >Welcome</h1>

            <Input :placeholder="'User name'" :type="'text'"/>
            <Input :placeholder="'Password'" :type="'password'"/>
            <div class="flex w-100% justify-around mt-3">
                <Button :title="'Login'" />
                <Button :title="'Register'" />
            </div>
            <div class="flex justify-center m-3">
                <a class="
                text-sky-300
                    hover:text-sky-600 
                    hover:cursor-pointer
                "> Forgot your password ? </a>
            </div>
            <Line />
            <GoogleSignIn />
            <FacebookSignIn />
        </form>
    </div>
    
</template>