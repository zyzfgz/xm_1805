<%--
  Created by IntelliJ IDEA.
  User: py
  Date: 2018/10/29
  Time: 16:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <!-- 引入jQuery -->
    <script type="text/javascript" src="<%=request.getContextPath() %>/js/jquery-1.11.3.min.js"></script>
    <!-- 引入easyui -->
    <script  src="<%=request.getContextPath()%>/js/jquery-easyui/jquery.easyui.min.js" ></script>
    <!-- 引入easyui  css样式  只需引入easyui.css   其中就包含了其他的内容-->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/js/jquery-easyui/themes/default/easyui.css">
    <!-- 引入小图标 -->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/js/jquery-easyui/themes/icon.css">
    <!-- 样式转化为中文 -->
    <script  src="<%=request.getContextPath()%>/js/jquery-easyui/locale/easyui-lang-zh_CN.js"></script>
</head>
<body>
        <div id="cc" class="easyui-layout" data-options="fit:true">
            <div data-options="region:'north',title:'North Title',split:true" style="height:100px;">
                <center><h1>电商后台管理项目</h1></center>
            </div>
            <div data-options="region:'south',title:'South Title',split:true" style="height:100px;">2</div>
            <div data-options="region:'east',iconCls:'icon-reload',title:'East',split:true" style="width:100px;">3</div>
            <div data-options="region:'west',title:'West',split:true" style="width:200px;">
                    <div title="Title1" data-options="iconCls:'icon-save',selected:true" style="overflow:auto;padding:10px;">
                        <ul id="tt" class="easyui-tree">
                            <li>
                                <span>Folder</span>
                                <ul>
                                    <li>
                                        <span>选项</span>
                                        <ul>
                                            <li>
                                                <span><a href="javascript:toUser('添加商品','<%=request.getContextPath()%>/toSpu.do')">添加商品</a></span>
                                            </li>
                                            <li>
                                                <span><a href="javascript:toUser('添加属性','<%=request.getContextPath()%>/toAttr.do')">添加属性</a></span>
                                            </li>
                                            <li>
                                                <span><a href="javascript:toUser('添加sku','<%=request.getContextPath()%>/toSku.do')">添加sku</a></span>
                                            </li>
                                        </ul>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </div>
            </div>
            <div data-options="region:'center',title:'center title'" style="padding:5px;background:#eee;">
                <div id="t" class="easyui-tabs" data-options="fit:true">
                    <div title="Tab1" style="padding:20px;display:none;">
                        tab1
                    </div>

                </div>

            </div>
        </div>
</body>
<script type="text/javascript">
    function toUser(title,url){
        var exists=$('#t').tabs('exists',title);
        if(exists){
            $('#t').tabs('select',title);
        }else{
            $('#t').tabs('add',{
                title:title,
                content:'<iframe style="width:100%;height:100%;position:relative;" src="'+url+'" frameborder="0" scrolling="true" ></iframe>',
                closable:true,
                tools:[{
                    iconCls:'icon-mini-refresh',
                    handler:function(){
                        alert('refresh');
                    }
                }]
            });
        }

    }

</script>
</html>
