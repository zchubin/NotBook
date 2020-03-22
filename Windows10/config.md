# Windwos 10's config

## Software

* [FireFox](https://www.mozilla.org/en-US/firefox/all/#product-desktop-release)
    [Stylus](./Firefox-stylus)
* [Bandizip](https://www.bandisoft.com/bandizip/)
* [NeoVim](https://neovim.io/)
* [Hbuilder](https://www.dcloud.io/)
* [Motrix](https://motrix.app/)
* [SumatraPDF](https://www.sumatrapdfreader.org/download-free-pdf-viewer.html)

    * Downloads Frome "Microsoft Store"

    - TranslucentTB
    - Lenovo Vantage -- Lenovo's Software

## Development Environment

* [Java](https://www.oracle.com/cn/java/technologies/)

1. 'Shift' + '右键' --> "在此处打开 power shell 窗口"

```shell
bin\jlink.exe --module-path jmods --add-modules java.desktop --output jre
```

2. Path
    * JAVA_HOME : `?:\?\Java\jdk-13.0.2`
    * Path : `%JAVA_HOME%\bin`

3. Text
- [ ] java --version
- [ ] javac --version

* [Python](https://npm.taobao.org/mirrors/python/)

1. Path
    * `?:\?\Python\python-3.9.0a1\Scripts\`
    * `?:\?\Python\python-3.9.0a1\`
2. For nvim
[Pip20.0.2](https://pypi.org/project/pip/)

* Pip in China

* 清华         `https://pypi.tuna.tsinghua.edu.cn/simple`
* 豆瓣         `http://pypi.douban.com/simple/`
* 阿里云       `http://mirrors.aliyun.com/pypi/simple/`
* 中国科技大学 `https://pypi.mirrors.ustc.edu.cn/simple/`
* 华中理工大学 `http://pypi.hustunique.com/`
* 山东理工大学 `http://pypi.sdutlinux.org/ `

    * 可以在使用pip的时候加参数`-i https://pypi.tuna.tsinghua.edu.cn/simple`
    - 例如：
        `pip install -i https://pypi.tuna.tsinghua.edu.cn/simple pyspider`
        这样就会从清华这边的镜像去安装pyspider库。
    * `python -m pip install --upgrade pip`
    * `pip install oss2  -i https://pypi.tuna.tsinghua.edu.cn/simple` 从国内源升级Pip

```shell
pip --version
pip3 uninstall pynvim neovim
pip3 install pynvim
pip3 install neovim
```

* [Ruby](https://www.ruby-lang.org/zh_cn/)

1. Path
    * PUBY_HOME : `?:\?\Ruby26-x64`
    * Path : `%RUBY_HOME%\bin`

2. Setting
    ```shell
    // 查看现有的源
    gem sources -l
    // 删除现有的源
    gem sources --remove https://rubygems.org/
    // 添加新的源
    gem sources -a http://gems.ruby-china.com/
    gem sources --add https://ruby.taobao.org/
    ```

3. For nvim
    * `cmd /c gem list -ra ^^neovim$`

4.[ 更多插件 ](https://rubygems.org/)

* [Node.js](http://nodejs.cn/)

1. Setting
    * 在node安装目录创建/nodejs/node_global、/nodejs/node_cache两个文件夹存放全局包
    ```shell
    npm config set prefix D:/Development/nodejs/node_global/
    //全局包目录，就在node安装目录新建了个nodejs文件夹存放
    npm config set cache D:/Development/nodejs/node_cache/
    //全局包缓存目录，就在node安装目录新建了个nodejs文件夹存放
    npm config set registry https://registry.npm.taobao.org
    // 指定国内源
    npm config get registry
    // 检查当前源
    npm install -g yarn
    yarn config set registry https://registry.npm.taobao.org
    ```

3. Path
    * NODE_PATH : `?:\?\nodejs\node_global\node_modules`
    * `?:\?\nodejs`
    * `?:\?\nodejs\node_global`

4. For Nvim
    * `npm install -g neovim`

* [Git](https://gitforwindows.org/)

1. Path
 * `?:\?\Git`


