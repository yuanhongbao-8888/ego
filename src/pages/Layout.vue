<template>
    <div>
        <Navs/>
        <router-view></router-view>
    </div>
</template>
<script>
import Navs from '../components/Nav'


export default {
    name:'Layout',
    components:{
        Navs
    }
}
</script>