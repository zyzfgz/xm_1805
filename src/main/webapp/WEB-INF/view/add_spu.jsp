<%--
  Created by IntelliJ IDEA.
  User: py
  Date: 2018/10/29
  Time: 19:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="/js/jquery-1.11.3.min.js"></script>

</head>
<body>
      <th>
          flbh1:${spu.flbh1}
          flbh2:${spu.flbh2}
          ppId:${spu.ppId}

      </th>
      <form action="/addSpu.do" method="post" enctype="multipart/form-data">
                     <input type="hidden" name="flbh1" value="${spu.flbh1}">
                     <input type="hidden" name="flbh2" value="${spu.flbh2}">
                     <input type="hidden" name="ppId" value="${spu.ppId}">
            商品名称：<input type="text" name="shpMch"><br>
            商品描述：<textarea name="shpMsh">

                        </textarea>

             图片：<input type="file" name="imgs"/>
                    <input type="file" name="imgs"/>
                    <input type="file" name="imgs"/><br>
                    <input type="submit">
      </form>
</body>
</html>
