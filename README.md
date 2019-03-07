# LoginRegisterSystem
一个运用了MVC模式及JavaWeb三大框架的注册和登录系统
## MVC模式
实现模型(bean)、视图(jsp)、控制器(servlet)三者的分离
## JavaWeb三大框架
实现Web层、Business(业务逻辑层)、Dao(数据层)三者内容的分离。
## 功能描述
 1. 具有基本的登陆注册功能
 2. 人性化的交互
 3. 利用正则表达式判断用户注册是否正确
 4. 利用Filter拦截，需登陆才能访问其他页面
 5. 数据库保存用户信息
## 运行环境
javaEE + tomcat + mysql +
jsp + servlet + bootstrap + jquery
## 所需Jar包
mysql-connector-java-5.0.8-bin.jar
## 项目结构简介
![Image text](https://raw.githubusercontent.com/MouMangTai/LoginRegisterSystem/master/images/20190307155012.png)
## 运行显示
![Image text](https://raw.githubusercontent.com/MouMangTai/LoginRegisterSystem/master/images/20190307154527.png)
![Image text](https://raw.githubusercontent.com/MouMangTai/LoginRegisterSystem/master/images/20190307154537.png)
## 数据库操作
 1. 建库 create database LoginRegisterSystem
 2. 建表 `create table users( mail varchar(255), password varchar(255),
    name varchar(255) )`
 3. name支持中文 `alter table users change name name varchar(100) character
    set utf8 collate utf8_unicode_ci`
## 联系方式
王琼弟 
手机：13012417705 
qq：1421311452


