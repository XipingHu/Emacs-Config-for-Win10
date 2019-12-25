# Emacs-LaTeX-for-Win10

# Win10写LaTeX的配置文件

## 已安装插件
- AUCTeX
- CDLaTeX
- YASnippet
- yasnippet-snippets
- auto-complete
- ac-math

## 已配置选项
- [清华大学镜像站](https://mirror.tuna.tsinghua.edu.cn/help/elpa/)
- hunspell拼写检查
  - 按`M-x ispell-buffer`全缓冲区进行检查
  - 对着单个单词`M-$`进行候选词替换或者将词加入词典，详情请根据提示按`C-h`
  - 词库放在了 `<Emacs配置文件目录>/dict/dict.txt`
- Hack字体

## 使用教程
详见我的GitHub [点击跳转](https://github.com/XipingHu/Emacs-Win10-Install-Guide)

## 记得加环境变量`c:/Program Files/SumatraPDF`到 `PATH`
Windows搜索框输入`env`编辑环境变量

## 注意：如果你的Msys2没有安装在默认的C盘，或者不是64位，请编辑Emacs配置文件里的init.el
