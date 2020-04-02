import axios from "../utils/request"
import base from "./base"

const api = {
    /**
     * 登陆接口
     */
    getLogin(params){
        return axios.post(base.baseUrl + base.login,params);
    },
    /**
     * 商品查询接口
     */
    getSelectTbItemAllByPage(params){
        return axios.get(base.baseUrl + base.selectTbItemAllByPage,{
            params:params
        })
    },
    /**
     * 商品总条数
     */
    getTotal(){
        return axios.get(base.baseUrl + base.total);
    },
    //类目查询接口
    getSelectItemCategoryByParentId(params){
        return axios.get(base.baseUrl + base.selectItemCategoryByParentId,{
            params:params
        })
    },
    // 添加产品接口
    getInsertTbItem(params){
        return axios.get(base.baseUrl + base.insertTbItem,{
            params:params
        })
    },
    //删除产品接口
    getDeleteItemById(params){
        return axios.get(base.baseUrl + base.deleteItemById,{
            params:params
        })
    }
}

export default api