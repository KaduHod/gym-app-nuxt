<script setup lang="ts">
    definePageMeta({
        layout:'app'
    });

    const name = ref();

    const nickname = ref();

    const email = ref();

    const personais = ref();

    const assignName = (v:string) => name.value = v;

    const assignNickname = (v:string) => nickname.value = v;

    const assignEmail = (v:string) => email.value = v;

    const getPersonais = async () => {
        const values = [];

        if(name.value) values.push(`name:"${name.value}"`);

        if(email.value) values.push(`email:"${email.value}"`);

        if(nickname.value) values.push(`nickname:"${nickname.value}"`);

        const parameters = values.length ? `(${values.join(',')})` : '' ;

        const query = `
            query {
                personais ${parameters}{
                    name 
                    nickname
                    email
                }
            }
        `;

        const {data} = await (await fetch('http://localhost:49000', {
            method:'POST',
            headers: {'Content-Type':'application/json'},
            body: JSON.stringify({
                query
            })
        })).json()

        personais.value = data.personais
    }

    getPersonais()
</script>
<template>
    <div class="flex flex-col w-full h-screen items-center">
        <div class="flex-col flex w-2/3 mt-1 p-5">
            <form @submit.prevent action="" class="w-full flex items-center justify-around">
                <Input 
                    @assignName="assignName" 
                    :emitFunction="'assignName'" 
                    :v-model="name" 
                    :type="'text'" 
                    :name="'name'" 
                    :placeholder="'Name'" 
                />

                <Input 
                    @assignNickname="assignNickname" 
                    :emitFunction="'assignNickname'" 
                    :v-model="nickname" 
                    :type="'text'" 
                    :name="'nickname'" 
                    :placeholder="'Nickname'" 
                />

                <Input 
                    @assignEmail="assignEmail" 
                    :emitFunction="'assignEmail'" 
                    :v-model="email" 
                    :type="'email'" 
                    :name="'email'" 
                    :placeholder="'Email'" 
                />

                <Button @click="getPersonais" :title="'Search'" :isLink="false"/>
            </form>
        </div>
        <div class="
            w-2/3 
            max-h-4/6 
            pt-5 
            pb-5
            overflow-auto 
            rounded-xl 
            bg-white 
            shadow 
            "
        >
            <table class="
                w-full
                text-gray-600 
                drop-shadow-lg 
                shadow-black
                "
            >
                <tr class="p-5 h-1.5 text-center border-b ">
                    <th class="" >Name</th>
                    <th >Nickname</th>
                    <th >Email</th>
                    <th class="" >Options</th>
                </tr>

                <tr class="text-center border-b " v-for="personal in personais">
                    <td class="" >{{ personal.name }}</td>
                    <td >{{ personal.nickname }}</td>
                    <td >{{ personal.email }}</td>
                    <td class="" >Visit profile</td>
                </tr>
            </table>
        </div>  
    </div>
</template>