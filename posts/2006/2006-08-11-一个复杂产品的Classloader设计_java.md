# 一个复杂产品的Classloader设计 java


是这么设计的。

就是这么个结构：

java代码: 

   MainClassLoader
            |
            |
            |
      -------------------------------------------
      |                 |                       |
      |                 |                       |
      |                 |                       |
CoreClassLoader      ProductAClassLoader      ProductBClassLoader


实际的类所在的文件路径如下：
java代码: 


-----public
|    |
|    |--classes (Main模块代码，各模块的服务接口，以及该接口所依赖的类)
|    |
|    |--lib (公用的第三方产品)
|     
|
|----products
|    |
|    |---coreProduct
|    |      |
|    |      |--classes (核心模块的类，负责实¼实÷用spring,hibernate,acegi。负责AOP main模块传过来的对象)
|    |      |
|    |      |--lib (各个核心模块需要的开源产品)
|    |
|    |---productA
|    |      |
|    |      |--classes （具体产品了）
|    |      |
|    |      |--lib
|    |
|    |---productB
|    |      |
|    |      |--classes
|    |      |
|    |      |--lib
|   

 


最底层的模块是Jvm或者web容器载入的（看应用环境了），位于系统classloader里。
职责很少：负责把客户端调用的请求传入Main模块，负责维护下面这堆classloader：
1.MainClassLoader负责载入 public路径下的内容：
1。各模块共用的包。
2。各模块想要瀑漏给其他模块的Interface。
（这个Interface里用元数据描述了实际实现这个Interface的类名和产品名。）
3。Main模块。
是所有其他Classloader的parent.

2.CoreClassLoader负责载入coreProduct路径下的内容：
1。核心模块的包和所需要的开源产品通通放进去。

3.其他各个产品的Classloader依次类推。

除了自己写了个ClassLoaderFactory为各个产品创建Classloader以外，
没自己实现ClassLoader。全都用的是UrlClassLoader类，感觉够用的了。（对吗？）

Main模块，负责相应客户端服务调用和各产品间服务调用。
具体就是，根据各模块的服务接口以及接口上元数据描述的实现类名和产品名，从各个ClassLoader里载入类，实例化类（实际上比较复杂，有对象池什么的，根据配置决定是否实例化，还要根据产品自己对服务对象的aop配置添加自定义的aop）。
再把服务对象仍给Core模块AOP之（用Spring添加数据库事务什么的advisor）。
再把aop好的对象送给服务的调用者。

Core模块，负责具体的Core工作，目前有：
1。提供缓存服务给其它模块
2。提供为一个对象aop之后添加事务处理给其他模块。
3。其实所有不方便直接在Main模块里面干的事情，都在Core模块里面干，然后封装成一个服务接口给Main模块调。

具体产品模块，负责具体工作。



这样，具体模块被污染的Class包括：
Main模块的类，
Hibernate的几个接口（只是接口放在Main模块的lib而已，Hibernate的具体实现类在Core模块lib。要是追求完美的话，也可以把接口封装成服务。这样就是0污染了。）
public路径下的接口和public接口所依赖的类（参数，返回值）。
（这是目前设计里最容易出污染的地方。）
所以，我认为，参数和返回值，应该是"贫血"的。
假如这些对象包含了复杂的业务逻辑的话，几乎不可能不对其他类产生依赖！
越依赖越多。

2006-08-11