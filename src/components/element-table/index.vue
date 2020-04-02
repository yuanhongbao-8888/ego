<template>
     <el-table :data="tableData" style="width:100%">
         <slot></slot>
    </el-table>
</template>
<script>
export default {
    name:"ElementTable",
    props:{
        tableData:{
            type:Array,
            default:()=>{
                return []
            }
        }
    }

}
</script>