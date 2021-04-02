#v1.0

##有空需要复现一下在有代码突然用git时变为main(初始版本)时按了rebase出错的解决方案

#body {

#display: -ms-flexbox;

#/*display: flex;*/

#-ms-flex-align: center;

#align-items: center;

#padding-top: 80px;

#padding-bottom: 40px;

#background-color: #f5f5f5;

#}

#将登录界面放进去之后，要将display：flex;注释掉

#这样登录界面就不会漂浮在上方

#其次将表格放在右边就需要：

#在form-signin中加入float: right;

#少了service注释，主要原因还是底层原理不熟

###数据库那边string类型的数据不要填null，要选择EMPTY STRING

###可以实现三个角色的登陆跳转

#v2.0

#设计的界面改变有：

#superadminPage中的126行中的card-body中的padding调为0(目的是为了将button和父容器的边距变为0)

#还有就是superadminPage中的128行中的button-style-for-light中添加padding-left: 30px(目的是为了调整子菜单和父菜单的纵向的文字的位置)


#v3.0
#完成了菜单管理的功能。

#这里学到的取菜单列表的方法实质上是两个字段之间的关系（具体参照Menu.java:397-416）

##需要注意的点，在引用界面之后需要正确引用css文件，而且css文件的先后顺序有要求。

#以及根据function的内容正确引用js文件。

#以及需要注意到$该符号的引用需要正确指向jquery文件。


#v4.0

#完成了菜单的跳转功能

#要注意在使用

#<form:form id="inputForm" modelAttribute="menu" action="/menu/form/save" method="post" class="form-horizontal">

#时modelAttribute="menu" 

#用到了?id、?pid的写法

#已经做好了菜单的添加、修改的跳转

#未解决的问题：ztree的构造问题


#v5.0

#需要注意的是由于script是按顺序加载的，后面加载的会覆盖前面加载的script。

#要防范jquery-3.5.1.slim.min.js类的slim文件，可能会造成无法识别$.post的情况

#在$.post的url中，返回数据时，需要在方法的上面加上@ResponseBody才能自动返回json数据给jsp

#模仿Menu.sortList的方法，构造侧边框。

#$('.accordion').append(result);以定位class名的方式，将侧边框加入。

#遇到jsp页面也不刷新时，可以复制内容到一个新的jsp页面中重新运行可以后再跑。









