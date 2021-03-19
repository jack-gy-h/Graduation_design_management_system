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

