<CENTER style="font-size: 24px;font-weight: 700;">大数据与云计算</CENTER>

[目录](./00-目录.md)

## 分布式文件系统HDFS
### 3.1分布式文件系统简介

1. HDFS: Hadoop Distributed File System;
> 采用了 **一次写入，多次读取** 的简单模型，文件一旦写成，关闭后就无法再次写入，只能被读取
2. 大数据的两大核心技术: **分布式存储**、**分布式处理**
> 海量信息存储传统的单机无法存储,只能依托**集群分布式存储**

* 计算机集群基本架构
---

![计算机集群基本架构](./img/Computer_cluster.svg)

3. 文件系统结构
---

![HDFS文件系统结构](./img/HDFS.svg)

4. HDFS实现目标:
    * 兼容廉价的硬件设备
    * 实现流数据读写
    * 支持大数据集
    * 支持简单的文件类型
    * 强大的跨平台兼容性

5. HDFS自身的局限性:
    * 不适合低延迟的数据访问
    * 无法高效存储大量小文件
    * 不支持多用户写入及任意修改(只允许附加)

### 3.2HDFS相关概念
1. 块
    * 联系: 为了分摊磁盘读写开销也就是在大量数据间分摊磁盘寻址的开销
    * 区别: HDFS的一个块要比普通的文件系统的块大得多

==块==
* 普通文件系统默认64M(块的大小可自己定义)

> 为什么要这么设计?
>> * 支持面向大规模数据存储
>> * 降低分布式节点的寻址开销
>>> 缺点: 如果块过大会导致MapReduce就一两个任务在执行完全**牺牲了MapReduce的并行度**,发挥不了分布式并行处理的效果。

2. HDFS采用这种抽象的块的概念设计好处
* 支持大规模文件存储
* 简化系统设计
* 适合系统设计
* 适合数据备份

3. HDFS两大组件
---

![HDFS两大组件](./img/HDFS-2.svg)

<table>
    <tr>
        <th rowspan="4" style="vertical-align: middle;">元数据</th>
        <th>文件是什么</th>
    </tr>
    <tr>
        <td>文件被分成多少块</td>
    </tr>
    <tr>
        <td>每个块和文件是怎么映射的</td>
    </tr>
    <tr>
        <td>每个块存储在那个服务器上面</td>
    </tr>
</table>

> #### 元数据被定义为：描述数据的数据，对数据及信息资源的描述性信息。
>> 元数据(Metadata)是描述其它数据的数据(data about other data),或者说是用于提供某种资源的有关信息的结构数据(structured data)。
>>  * 元数据是描述信息资源或数据等对象的数据,
>>  *  其使用目的在于:
>>      * 识别资源;
>>      * 评价资源;
>>      * 追踪资源在使用过程中的变化;
>>      * 实现简单高效地管理大量网络化数据;
>>      * 实现信息资源的有效发现、查找、一体化组织和对使用资源的有效管理。
>>  * 元数据的基本特点主要有：
>>> * 元数据一经建立，便可共享。
>>> * 元数据的最为重要的特征和功能是为数字化信息资源建立一种机器可理解框架。

### 3.3.1名称节点(NameNode):

> 负责文件和目录的创建、删除和重命名等；同时管理着数据节点和文件块的映射关系

* **FsImage**: 保存系统文件树
    - 文件的复制级别
    - 修改和访问的时间
    - 访问权限
    - 块大小及组成文件的块
* **EditLog**: 记录对数据进行的诸如:创建、删除、重命名等操作
---

![NameNode](./img/NameNode.svg)

### 3.3.2第二名称节点(Secondary NameNode):
> 因为HDFS文件会逐渐地变大，不断变大的EditLog文件通常不会对系统文件产生影响，但是当EditLog很大时，使得在HDFS重启时，将EditLog合并到FsImage中的过程十分缓慢，系统长期处于“安全模式”，用户的使用受到影响。

1. Secondary NameNode的作用:
* 完成EditLog合并到FsImage的过程，缩短合并的重启时间，
* 其次作为“检查点”保存元数据的信息。
* 作为NameNode的"冷备"

![Secondary NameNode](./img/Secondary_NameNode.svg)
---

> 如图，EditLog合并到FsImage中的过程:
> 1. 名称节点会生成新的EditLog.new来记录t2时刻以后的数据,
> 2. EditLog和FsImage会被拉到第二名称节点中,合并成为FsImage.ckpt,
> 在t1时刻替换名称节点中的FsImage。
> * 这样会出现一问题:
>> 如果是t2到t1时刻之间出现了问题,FsImage中的数据会丢失,所以说第二名称节点只是起到了“检查点”的作用而绝非“热备份”。

### 3.3.3数据节点(DataNode)

> 负责数据的存储和读取。同时也要根据名称节点的命令创建、删除数据块和冗余复制

* HDFS**存、取**数据都将保存到linux文件系统
> * 数据节点负责数据的存储和相关具体操作,比如CRUD、搜索、聚合。
> * 所以,**数据节点对机器配置要求比较高**,
> * 首先需要有足够的磁盘空间来存储数据,其次数据操作对系统CPU、Memory和IO的性能消耗都很大。
> * 通常随着集群的扩大,需要增加更多的数据节点来提高可用性。**增加更多的数据节点来提高可用性。**
> * 数据节点负载重，设置专用的数据节点，避免因数据节点负载重导致主节点不响应。

HDFS命名空间
**目录+文件+块** == "/+目录名称" == 同Linux
---

![传输方式](./img/HDFS-3.svg)
---

**局限性**:

1. 命名空间限制 : 名称节点是保存在内存中的，因此，名称节点能够容纳的对象(文件、块)的个数会搜到空间大小的限制
2. 性能的瓶颈   : 真个分布式文件的吞吐量,受限于单个名称节点的吞吐量
3. 隔离问题     : 由于集群中只有一个名称节点，只有一个命名空间，因此无法对不同应用程序进行隔离
4. 集群的可用性 : 一旦这个唯一的名称节点发生故障，会导致整个集群变得不可用

==HFS2.0== 添加了一个热备

### 3.4HDFS存储原理
**HDFS存储原理**
1. 冗余数据保存: 加快数据传输
2. 数据保存策略: 加快数据传输速度
3. 数据恢复: 多副本,保证数据可靠

数据读取**就近原则**
> * HDFS提供了一个API可以确定一个数据节点,所属的机器ID,客户端也可以调用API获取自己所属的机架ID
> * 当客户机读取数据时,从名称节点获得数据块不同副本的存存放位置列表,列表中包含了副本所在的数据节点,可以调用API来确定客户端和这些数据节点所属的机架ID,当发现该数据块副本对应的机架ID和客户端对应机架ID相同时,就优先选择该副本读取数据,如果没有发现,就随机选择一个副本读取数据

数据的错误与恢复
* 错误:
    1. 名称节点出错: SecondaryNameNode
    2. 数据节点出错: SecondaryNameNode
    3. 数据本身出错: 校验码 + 数据
* 恢复:
    1. 整个HDFS实例失效,HDFS将停止使用一段时间
    2. 调用SecondaryNameNode的冷备进行恢复

数据的复制
    1. 采用流水线复制策列，
    2. 名称节点返回数据节点列表给客户端，
    3. 客户端先向**第一个数据节点写入数据**，
    4. 然后第一个节点完成数据接收后，向第二个数据节点发起请求，
    5. 形成流水线复制。

### 3.5.1HDFS读数据过程
![HDFS-Read](./img/HDFS-Read.svg)
```java
import java.io.BufferedReader;
import java.io.InputStreamReader;
import org.apache.hadoop.cnf.Configuration;
import org.apache.hadoop.fs.FileSystem;
import org.apache.hadoop.fs.Path;
import org.apache.hadoop.fs.FSDataInputStream;

public class Chapter3{
    public static void main(String[]args){
        try{
            configuration conf = new Configuration();
            FileSystem fs = FileSystem.get(conf);
            Path filename = new Path("hdfs://localhost:9000/user/hadoop/test.txt");
            FSDataInputStream is = fs.open(filename);
            BufferedReader d = new BufferedReader(new InputStreamReader(is));
            String content = d.readLine(); //读取文件一行
            System.out.printIn(content);
            d.close(); //关闭文件
            fs.close(); //关闭hdfs
        }catch(Exception e){
            e.printStackTrace();
        }
    }
}
```
![HDFS-Read-2](./img/HDFS-Read-2.svg)
### 3.5.2HDFS写数据过程
![HDFS-Write](./img/HDFS-write.svg)

### 3.6HDFS编程实践
* HDFS基本编程方法:

1. **shell**
```shell
cd /usr/local/hadoop
./bin/hdfs namenode -format # 格式化Hadoop的hdfs文件系统
./sbin/start-dfs.sh         # 启动Hadoop

hadoop fs                   # 适用于不同的本地文件系统,适用于HDFS
hadoop dfs                  # 只适用于HDFS文件系统
hdfs dfs                    # 只适用于HDFS文件系统

hadoop fs -cp               # 将本地文件复制到分布式文件系统HDFS
```
2. **Java API**

> * Hadoop开发: Hadoop为HDFS和MapReduce提供了基础的支持,叫`hadoop common`
> * Hadoop有一个专门的`common jar`包,只要把`common`的`jar`包导入进来
> * 安装路径:`/usr/local/hadoop/share/hadoop`

> **检测伪分布式系统HDFS上到底存不存在一个`input.txt`文件?**

**第一步:把配置文件放到当前Java工程目录下**

- 需要把集群上的`coc-site.xml`和`hdfs-site.xml`(这两个文件保存在`/hadoop/etc/hadoop`目录下)放到当前工程项目`/bin`文件下

**第二步:编写代码**

```java
import org.apache.hadoop.cnf.Configuration;
import org.apache.hadoop.fs.FileSystem;
import org.apache.hadoop.fs.Path;

public class Chapter3{
    public static void main(String[]args){
        try{
            String filename = "https://localhost:9000/user/hadoop/test.txt";

            Configuration cof = new Configuration();

            FileSystem fs = FileSystem.get(conf);
            if(fs.exists(new Path(filename))){
                System.out.printIn("文件存在");
            }else{
                System.out.printIn("文件不存在");
            }
        }catch(Exception e){
            e.printStackTrace();
        }
    }
}
```
3. Brower: 访问`http://localhost:50070`
---
