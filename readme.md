## [在现有工程中实施基于CTMediator的组件化方案](https://casatwy.com/modulization_in_action.html )细节问题

Q:

* 存podspec的库必须是公开的，不能用私有库?

  A:❎，可以是私有库，自己电脑能推送代码即可！其他同事如果需要访问，给ssh keys应该就可以了。

- upload.sh中`PrivatePods`,找不到。需要对应Repo

- 执行`./config.sh`脚本来配置A这个私有Pod。（oc工程现在要改为执行 `./config_objc.sh`）

- MainProject名称不对，没关系。

- 把脚本生成的名为`A_Category`的空目录拖放到Xcode对应的位置下。有误，此文件夹需要自己在文件夹中创建，再拖到工程里。

- 新建分支文件夹和文件时，必须在finder中建好，再拖到xcode里，否则会文件夹或路径错误。

- duplicate symbol '_OBJC_CLASS_$_Target_A' in,去 Build Phases的编译源里找重复引用或重名的类并删除，结果返现自定义分类与Source文件夹里的重名了。删除source文件夹和源文件即可。

- our configuration specifies to merge with the ref 'refs/heads/master' from the remote, but no such ref was fetched. 

  A:ModulizeTest工程为空， 没有任何代码导致。新建工程推到git仓库，再 git pull 即可。

- 修改分类文件方法名时，注意调用方的方法名也要修改，否则虽然主工程不报错，但是发布会失败，提示找不到方法。
