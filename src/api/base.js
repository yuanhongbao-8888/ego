const base = {
    baseUrl:"/api",
    login:"/login",
    selectTbItemAllByPage:"/api/backend/item/selectTbItemAllByPage", // 商品查询地址
    total:"/api/total", // product总条数
    selectItemCategoryByParentId:"/api/backend/itemCategory/selectItemCategoryByParentId",  //类目查询接口
    insertTbItem:"api/backend/item/insertTbItem",    //添加产品
    deleteItemById:"api/backend/item/deleteItemById",  //产品删除
}

export default base;