<%--
  Created by IntelliJ IDEA.
  User: py
  Date: 2018/10/29
  Time: 16:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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




                $.getJSON("json/tm_class_1_"+flbh1+".js",function(json){
                    //清空
                    $("#tm_select_id").empty();
                    $(json).each(function (i,data) {
                        $("#tm_select_id").append('<option value="'+data.id+'">'+data.ppmch+'</option>')
                    })
                });



        }

        function toAdd(){
           var flbh1=$("#class1_select_id").val();
           var flbh2=$("#class2_select_id").val();
           var ppId=$("#tm_select_id").val();

               location.href="toAdd.do?flbh1="+flbh1+"&flbh2="+flbh2+"&ppId="+ppId;
        }
    </script>
</head>
<body>
    一级：<select id="class1_select_id" onchange="class_tm(this.value)">
                <option>请选择</option>
          </select>

    二级：<select id="class2_select_id">
                <option>请选择</option>
          </select>

    三级：<select id="tm_select_id">
                <option>请选择</option>
          </select>

<a href="Javascript:toAdd()">添加</a>

</body>
</html>
