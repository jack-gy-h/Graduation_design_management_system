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

#双击shift可以根据url跳转到相应的controller。

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

###完成了菜单的动态加载

#前端不显示可以多关注不显示时的页面的F12的Console.

#需要注意的是由于script是按顺序加载的，后面加载的会覆盖前面加载的script。

#要防范jquery-3.5.1.slim.min.js类的slim文件，可能会造成无法识别$.post的情况

#在$.post的url中，返回数据时，需要在方法的上面加上@ResponseBody才能自动返回json数据给jsp

###模仿Menu.sortList的方法，构造侧边框:

#首先遍历获取到的菜单列表menus，当他(menu)的父id(menu.parent.id)为1时（根据预设，parentid为1的都是父节点):

#加入父节点菜单内容，并将menu.id赋值给新变量parentid.

#在此基础上，再将菜单列表遍历一次：当它的父id(menuchild.parent.id)等于新变量parentid时:

#加入子节点菜单内容。

#在结束子节点遍历后，补全标记尾。

#$('.accordion').append(result);以定位class名的方式，将侧边框加入。

#遇到jsp页面也不刷新时，可以复制内容到一个新的jsp页面中重新运行可以后再跑。


#v6.0

#完成了菜单的修改和添加功能，这里还是没有学好ssm相关的pojo绑定的内容：

#pojo绑定中，只能绑定实体类里面声明的对象

#通过传输parent_id的方式，用parent_id获取到完整的Menu parent后，进行相应的更新parentIds的操作

#还更新了登录后的界面。

#缺陷：1.parent直绑操作； 2.子节点更新问题。 

![Image text](https://github.com/jack-gy-h/Graduation_design_management_system/blob/v6.0/src/main/webapp/static/noteimage/v6.0%20notpicture1.png)

![Image text](https://github.com/jack-gy-h/Graduation_design_management_system/blob/v6.0/src/main/webapp/static/noteimage/v6.0%20notpicture2.png)

![Image text](https://github.com/jack-gy-h/Graduation_design_management_system/blob/v6.0/src/main/webapp/static/noteimage/v6.0%20notpicture3.png)

#v7.0

#完成了菜单的删除和保存排序的内容

#菜单删除实际上是将del_flag变为1，是逻辑删除，而不是删除了数据库的数据（即物理删除）

#没有解决的内容：mybatis的表的映射和数据库as语句与取数、实体类之间的对应关系

#缺陷：删除要做一个确定键

#v8.0

###做一个ztree的要诀：

#正确引用zTreeStyle.min.css、jquery-1.8.3.js和jquery.ztree.all-3.5.js.

#var tree = $.fn.zTree.init($("#menuTree"), setting, zNodes);

#正确绑好div，设置好setting和zNodes.

#详细见roleAdd.jsp:78-99.

###使用到了jquery.validate插件进行检验：

#检验规则：

#验证思路：

#允许：return "true";

#不允许：retuen "false";
 
#添加时：不允许填写的名字存在数据库中

#填写的名字存在数据库中:getRoleCountByname > 0

#不允许:返回false
 
#修改时：1.允许与自身相同

#        2.不允许与除了自身之外的名字在数据库中

#     1.与自身相同：oldname == name

#     允许:返回"true"
 
#     2.除了自身之外的名字在数据库中:oldname !== name || getRoleCountByname > 0

#     不允许：返回"false";


###插入角色信息中的角色授权时，实际上是将role_id和menu_id一一对应地共同插入到role_menu表中。

###进行修改操作时，

#实际上是将role表的对应内容进行update,而将role_menu表的内容根据role_id进行全部删除后，再将获取到的menu_id一一对应再插入到role_menu表中

###进行删除操作时，实际上是根据role的id获取到role的全部信息，并把role的del_flag变为1(即逻辑删除)。

#v9.0

#由于选题时涉及到选题人、退选题人的时间等信息的查看，因此要先行做日志管理.

#前端引用问题排错时，可以到f12中排错更快.

#Menu parent自身取数相当于一对一，因此在数据库映射中不需要一对多取数时记得在mapper中写映射

![Image text](https://github.com/jack-gy-h/Graduation_design_management_system/blob/v9.0/src/main/webapp/static/noteimage/v9.0%20notpicture1.png)

![Image text](https://github.com/jack-gy-h/Graduation_design_management_system/blob/v9.0/src/main/webapp/static/noteimage/v9.0%20notpicture2.png)

#做了一个根据名字的模糊查询，具体思路，将填写好的变量传给queryParams，并在controller中取出来用

#v10.0

###做了一个机构管理，完成了用户管理-用户添加中的checkbox.

#在复制内容的时候：找到问题：

#在getmenu时需要get正常的菜单才有意义，因此要加上a.del_flag = 0 

#在验证角色名字是否合法时，需要和正常的（即没被删除的）角色相比，才有意义，因此语句是：

#where name = #{name,jdbcType=VARCHAR} AND del_flag = 0

#添加了一个office机构管理，在tree类的移植中，要注意去掉parentid的变量声明，把之前的getParentId放上去即可

#在使用<form:form>做布局时，当path的名字没有出现在对应实体类中时，在对应的实体类中声明它，并生成对应的set/get方法即可。

#再次做validate验证框得到的问题：rules中根据name绑定进行验证时的传参问题还未得到解决。

#v11.0

#做好了用户列表和用户添加功能

#需要注意pojo类绑定数据时，要生成set/get方法才能进行传参，不能只生成get方法。

#根据身份决定是否加载专业框

#未解决的问题:在添加的过程中需要去掉UserMapper中的jdbcType=VARCHAR

#在传输带字母的String时，需要在最外面加一对单引号。

#记得pojo里面绑好数据。

#mapper中if语句可以判断传入的参数。

#v12.0

#记得在绑数据的时候定好与pojo类和界面name的字段别名

#惊喜：学会了外连接快速取数。(详情请参照UserMapper.xml的373-403)

#传入参数后可以通过一个hidden的框来取数



#v13.0

#重点还是取数

#完成了用户的删除，登录的角色选择和跳转

#缺陷：没有删除用户的功能，没有修改用户的功能，没有修改角色信息的功能

#调整好了identity的属性：USER跳转到选择chooseRolePage.jsp界面，SUPERADMIN跳转到全部的菜单

#但是除了一个超级管理员账号其他的人都时USER身份，即都要先选择身份再操作。

#还对页面进行了拦截

#                /superadminPage=roles[SUPERADMIN]

#                 /chooseRolePage=roles[USER]

#                 /studentloginPage=roles[USER]

#调整好了没用的user。

#由于允许添加用户时的自由度，后面的操作可能会有点难

#添加了日志功能

#缺陷：这里的日志功能是手动功能，没有用aspect实现

#Bug:无法删除老师的角色，主要原因，mapper 传参问题

#插入同学院的不同专业的同学时会出bug

#v14.0

#做出了联动框

#在页面的最开始要先初始化一个全部的office-Ztree(officeTree1-ztree1)（并主动隐藏）

#和一个部分的office-ztree(officeTree-ztree)

#判断canbechosencollegeid是否为2，只有在2即部分专业时才显示office-ztree，其余都不显示

#最后在提交的时候判断canbechosencollegeid的值，

#1(全校)则提交Ztree1,2（部分专业）则提交Ztree,3(课题所属专业)则提交majorId

#对于ztree的提交取决于officeIds的赋值

#v15.0

#在过去真正的老师那里提交题目时，发现，老师没有专业不会显示身份（本身代码逻辑问题，要先验证年份，再验证学院和专业，最后再认证身份）

#直接修改添加用户中普通教师也允许选取专业 快速解决bug（程序设计思路问题）。

#待解决问题：登录时的身份选取顺序和逻辑。

#在课题中新添加了年份grade的字段。

#取数据给easyui时，记得用@responbody.

#完成了教师申报题目的增删改查功能

#教师申报题目列表获取的整体思路：

#只获取该学年下（t.grade = #{grade}）该老师（t.teacher_id = #{userId}）正常的（t.del_Flag = 0）双选题目（t.pattern = 1）

#v16.0

#修复了教师申报题目时下面数值不变的情况。

#CountBy数数只需要把原list的where全部拿过来并在最前面加上

#select count(*)和将where中别名的表连起来（如果只有一个表的别名的话，只需要把别名加上）

#详细参照TaskMapper.xml中getdoubletaskListByPageAndRows和getdoubletaskListCountByPageAndRows的区别

#系主任审核列表的获取思路：

#   整体思路：
#   取出该学年的
#   本专业下的
#   双选题目（t.pattern=1）
#   而且该题目还没有被审核（t.audit_status = 3）
#   而且是正常状态下的题目（t.del_Flag = 0）

#完成了系主任的审核双选题目的功能。注意.equals()来判断string之间是否相同







