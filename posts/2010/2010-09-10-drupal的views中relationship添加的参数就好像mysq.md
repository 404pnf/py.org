# drupal的views中relationship添加的参数就好像mysql中left join后面表明 而argument就好像mysql中的where参数

因此，我有一个node listing的views，需要显示： 文章标题，文章作者真实姓名（不是用户名，而是content profile中一个字段）。

创建views的时候， 

        Relationships
        节点: Content Profile

        参数
        用户: Uid

        Fields
        内容: 真实姓名 默认
        内容: 指导教师 默认
        节点: 标题 读后感题目

lg指导。

2010-09-10