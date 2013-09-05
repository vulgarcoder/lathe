miniapp_study
=============
为党建系统开发的学习应用

安装步骤
---------
以下命令都在主工程（ewhine_NB）中执行

#### 1. 在Gemfile中添加 ####

gem 'miniapp_study',:git=>"git@github.com:jimrok/miniapp_study.git"

#### 2. 安装插件 ####
rails g miniapp_study:install


#### 3. 执行脚本 ####
rake db:migrate

#### 4. 启动服务 ####
rails s 

#### 安装成功####

