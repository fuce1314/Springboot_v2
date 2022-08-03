layui.define(['jquery', 'element','form'], function(exports) {
    "use strict";

    const MOD_NAME = 'dictionary';
    const $ = layui.jquery;
    const form = layui.form;

    const dictionary = new function() {
        /**
         * 根据Code 获取字典列表
         * @param dictCode
         */
        this.dictListByCode=function(dictCode){
            var loadDictData = sessionStorage.getItem('loadDictData'+dictCode);
            if(loadDictData==null) {
                $.ajax({
                    url: '/system/dictData/selectByCode',
                    data: {'typeCode': dictCode},
                    type: 'get',
                    async: false,
                    success: function (result) {
                        if (result.success === true) {
                            loadDictData=result.data;
                            try{
                                window.sessionStorage.removeItem('loadDictData'+dictCode);
                                sessionStorage.setItem('loadDictData'+dictCode, JSON.stringify(loadDictData));
                            }catch(e){

                            }
                        }

                    }
                })
            }else{
                loadDictData=JSON.parse(loadDictData);
            }
            return loadDictData;

        }
        /**
         * 根据code值到数据库中获取字典
         * @param dictCode
         */
        this.tableDictListByCode=function(dictCode){
            var loadTableDictData = sessionStorage.getItem('loadTableDictData'+dictCode);
            if(loadTableDictData==null) {
                $.ajax({
                    url: '/system/dictData/getDictItems/'+dictCode,
                    type: 'get',
                    async: false,
                    success: function (result) {
                        if (result.success === true) {
                            loadTableDictData=result.data;
                            try{
                                window.sessionStorage.removeItem('loadTableDictData'+dictCode);
                                sessionStorage.setItem('loadTableDictData'+dictCode, JSON.stringify(loadTableDictData));
                            }catch(e){

                            }
                        }

                    }
                })
            }else{
                loadTableDictData=JSON.parse(loadTableDictData);
            }
            return loadTableDictData;

        }
        /**
         * 根据单个字典值获取字典label
         * @param value
         * @param dictCode
         * @returns {*}
         */
        this.parseDictText=function(value,dictCode){
            var loadDictData = this.dictListByCode(dictCode);
            for (var j = 0; j < loadDictData.length; j++) {
                if (value === loadDictData[j].dataValue) {
                    return loadDictData[j].dataLabel
                }
            }
            return value;
        }
        /**
         * 根据多个code获取字典label,隔开
         * @param values
         * @param dictCode
         */
        this.parseDictTexts=function(values,dictCode){
            var loadDictData = this.dictListByCode(dictCode);
            var texts="";
            if(values!=null&&values.length>0){
                var defaultValues=values.split(",");
                if (defaultValues.length > 0) {
                    for (var j = 0; j < loadDictData.length; j++) {
                        for (var i = 0; i < defaultValues.length; i++) {
                            if (defaultValues[i] === loadDictData[j].dataValue) {
                                texts+=loadDictData[j].dataLabel+",";
                            }
                        }

                    }
                }
            }
            if(texts==null||texts==""){
                texts=values;
            }else{
                texts=texts.substr(0,texts.length-1);
            }
            return texts;
        }
    }

    $("select[dict-code]").each(function(){
        var _that = $(this);
        var dictCode = $(this).attr("dict-code");

        var defaultValue =  $(this).attr("default-value");
        var loadDictData =dictionary.dictListByCode(dictCode);
        for (var j =0;j<loadDictData.length;j++){
            var flag = false;
            if(defaultValue === loadDictData[j].dataValue){
                flag = true;
            }
            if(flag){
                _that.append("<option selected = '"+ flag +"' value='"+loadDictData[j].dataValue+"'>"+loadDictData[j].dataLabel+"</option>");
            }else{
                _that.append("<option  value='"+loadDictData[j].dataValue+"'>"+loadDictData[j].dataLabel+"</option>");
            }
        }
        form.render();

    });
    $("select[table-dict-code]").each(function(){
        var _that = $(this);
        var dictCode = $(this).attr("table-dict-code");

        var defaultValue =  $(this).attr("default-value");
        var loadDictData =dictionary.tableDictListByCode(dictCode);
        for (var j =0;j<loadDictData.length;j++){
            var flag = false;
            if(defaultValue === loadDictData[j].dataValue){
                flag = true;
            }
            if(flag){
                _that.append("<option selected = '"+ flag +"' value='"+loadDictData[j].dataValue+"'>"+loadDictData[j].dataLabel+"</option>");
            }else{
                _that.append("<option  value='"+loadDictData[j].dataValue+"'>"+loadDictData[j].dataLabel+"</option>");
            }
        }
        form.render();

    });
    $("div[radio-dict-code]").each(function(){
        var _that = $(this);
        var dictCode = $(this).attr("radio-dict-code");
        var name = $(this).attr("name");
        var defaultValue =  $(this).attr("default-value");
        var loadDictData =dictionary.dictListByCode(dictCode);
        for (var j =0;j<loadDictData.length;j++){
            var flag = false;
            if(defaultValue!=null&&defaultValue.length>0) {
                if (defaultValue === loadDictData[j].dataValue) {
                    flag = true;
                }
            }else if(j==0){
                flag = true;
            }
            if(flag){
                _that.append("<input type='radio' checked name='"+name+"' value='"+loadDictData[j].dataValue+"' title='"+loadDictData[j].dataLabel+"' >");
            }else{
                _that.append("<input type='radio' name='"+name+"' value='"+loadDictData[j].dataValue+"' title='"+loadDictData[j].dataLabel+"' >");
            }
        }
        form.render();
    });
    $("div[check-box-dict-code]").each(function(){
        var _that = $(this);
        var dictCode = $(this).attr("check-box-dict-code");
        var name = $(this).attr("name");
        var defaultValue =  $(this).attr("default-value");
        var loadDictData =dictionary.dictListByCode(dictCode);
        for (var j =0;j<loadDictData.length;j++){
            var flag = false;
            if(defaultValue!=null&&defaultValue.length>0){
                var defaultValues=defaultValue.split(",");
                if(defaultValues.length>0){
                    for(var i=0;i<defaultValues.length;i++){
                        if(defaultValues[i] === loadDictData[j].dataValue){
                            flag = true;
                            break
                        }
                    }
                }
            }
            if(flag){
                _that.append("<input type='checkbox' name='"+name+"' value='"+loadDictData[j].dataValue+"' checked title='"+loadDictData[j].dataLabel+"'  lay-skin='primary' >");
            }else{
                _that.append("<input type='checkbox' name='"+name+"'  value='"+loadDictData[j].dataValue+"' title='"+loadDictData[j].dataLabel+"'  lay-skin='primary' >");
            }
        }
        form.render();
    });
    exports(MOD_NAME, dictionary);
});
