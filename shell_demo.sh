#! /bin/bash
# 上面这句指定脚本

echo "hello  world"
echo "你好，世界！"

# 这是注释

# 定义变量, 等号前后不能有空格
name="Tom"
age=12

# 使用变量, 三种方式
echo $name      # Tom
echo ${name}    # Tom
echo "${name}"  # Tom

# 删除变量, 打印出空值
unset name
echo $name  # 

# 字符串, 单引号（原样输出），双引号（变量和转义），不使用
person1=Jack
person2='杰克'
person3="Jack${age}"

echo $person1  # Jack
echo $person2  # Jack
echo $person3  # Jack12

# 获取字符串的长度
echo ${#person1}  # 4
echo ${#person2}  # 6

# 定义数组
list=("小仓" "小井" "小空")

# 数组分量单独赋值
list[3]="小泽"

# 读取数组元素
echo ${list[0]}  # 小仓  
echo ${list[1]}  # 小井
echo ${list[2]}  # 小空
echo ${list[3]}  # 小泽

# 获取数组所有元素
echo ${list[*]}  # 小仓 小井 小空 小泽

# 获取数组元素个数
echo ${#list[@]}  # 4
echo ${#list[*]}  # 4

# 运算符 表达式和运算符之间要有空格
# 关系运算符 -eq -ne -gt -lt -ge -le 
# 布尔运算符 && ||
# 字符串运算符 = != -z（长度为0返回true）-n（长度不为0返回true）str（字符串不为空返回true）

# 流程控制 if语句 注意空格
a=1
b=2

if [ $a -eq $b ]
    then
    echo "a == b"

elif [ $a -gt $b ] 
    then
    echo "a > b"

else
    echo "a < b"

fi
# a < b

# 流程控制 for循环
for i in 1 2 3 4 5
    do
        echo "line:${i}"
    done
# line:1 line:2 line:3 line:4 line:5

for (( i=0; i<5; i++ ))
    do
        echo "new line: ${i}"
    done
# new line: 0 new line: 1 new line: 2 new line: 3 new line: 4 

# 流程控制 while循环
i=1
while (( $i<5))
    do
        echo "i=${i}"
        let "i++"
    done

# i=1 i=2 i=3 i=4

# 无限循环 for (( ; ; ))
# while : do command done
# while true do command done

# break跳出循环；continue继续下一次循环






