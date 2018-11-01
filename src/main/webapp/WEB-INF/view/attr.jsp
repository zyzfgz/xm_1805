<%--
  Created by IntelliJ IDEA.
  User: py
  Date: 2018/10/30
  Time: 13:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="/js/jquery-1.11.3.min.js"></script>
    <script>
        $(function(){
            $.getJSON("json/class_1.js",function(json){
                $(json).each(function (i,data) {
                    console.log(data);
                    $("#class1_select_id").append('<option value="'+data.id+'">'+data.flmch1+'</option>')
                })
            });
        })


        function class_tm(flbh1) {
            $.getJSON("json/class_2_"+flbh1+".js",function(json){
                //清空
                $("#class2_select_id").empty();
                $(json).each(function (i,data) {
                    $("#class2_select_id").append('<option value="'+data.id+'">'+data.flmch2+'</option>')
                })
            });

        }

        function toAddAttr(){

            var flbh2=$("#class2_select_id").val();

            location.href="toAddAttr.do?flbh2="+flbh2;
        }
        
        function findAttrByClass2(flbh2) {
            $.post("findAttrByClass2.do",{"flbh2":flbh2},function(data){
                $("#attrListDiv").html(data);
            })


        }
    </script>
</head>
<body>
    一级：<select id="class1_select_id" onchange="class_tm(this.value)">
        <option>请选择</option>
    </select>

    二级：<select id="class2_select_id" onchange="findAttrByClass2(this.value)">
        <option>请选择</option>
    </select>
    <a href="javascript:toAddAttr()">增加</a>
    <div id="attrListDiv">

    </div>
</body>
</html>
