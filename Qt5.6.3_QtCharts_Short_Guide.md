# Qt 5.6.3 + VS2015（32位）编译 QtCharts

## 环境

| 项目 | 版本 |
|---|---|
| Qt | 5.6.3 |
| 编译器 | VS2015 |
| 架构 | x86（32位） |

Qt目录：

```txt
C:\Qt\Qt5.6.3\5.6.3\msvc2015
```

---

# 1. 打开 VS2015 32位命令行

执行：

```bat
call "C:\Program Files (x86)\Microsoft Visual Studio 14.0\VC\vcvarsall.bat" x86
```

---

# 2. 配置 Qt

```bat
set PATH=C:\Qt\Qt5.6.3\5.6.3\msvc2015\bin;%PATH%
```

---

# 3. 检查版本

```bat
qmake -v
moc -v
```

确认都是：

```txt
5.6.3
```

---

# 4. 进入源码目录

```bat
cd /d C:\workspace\l2xx\qtcharts
```

---

# 5. 清理旧文件

```bat
nmake clean

del /s /q Makefile*
del /s /q .qmake.stash
```

---

# 6. 生成 Makefile

```bat
qmake
```

---

# 7. 编译

```bat
nmake
```

---

# 8. 安装

```bat
nmake install
```

---

# 9. 使用 QtCharts

pro文件：

```pro
QT += charts
```

代码：

```cpp
#include <QtCharts>
```

---

# 常见错误

## x86/x64冲突

错误：

```txt
模块计算机类型“X86”与目标计算机类型“x64”冲突
```

解决：

必须使用：

```bat
vcvarsall.bat x86
```

不要使用：

```bat
vcvarsall.bat amd64
```
