#脚本与ppt对应 
#运行脚本：光标放在某一行,点”run”,快捷键ctrl+enter（mac：command+enter）
#向量的生成，对单个/两个向量进行的操作，取子集，元素修改。

#####2.1.向量生成🌟#####

#(1)用 c() 结合到一起
c(2,5,6,2,9) 
c("a","f","md","b")
#(2)连续的数字用冒号“:” 
1:5
#(3)有重复的用rep(),有规律的序列用seq(),随机数用rnorm()
rep("x",times=3)  
seq(from=3,to=21,by=3)
rnorm(n=3)
#(4)通过组合,产生更为复杂的向量。
paste0(rep("x",times=3),1:3)

#####2.2对单个向量进行的操作####
#(1)赋值给一个变量名
x = c(1,3,5,1) #随意的写法
x
x <- c(1,3,5,1) #规范的赋值符号 Alt+减号
x

#赋值+输出一起实现
x <- c(1,3,5,1);x
(x <- c(1,3,5,1))

#(2)简单数学计算
x+1
log(x)
sqrt(x)

#(3)根据某条件进行判断,生成逻辑型向量
x>3
x==3
#(4)初级统计
max(x) #最大值
min(x) #最小值
mean(x) #均值
median(x) #中位数
var(x) #方差
sd(x) #标准差
sum(x) #总和

length(x) #长度
unique(x) #去重复
duplicated(x) #对应元素是否重复
table(x) #重复值统计
sort(x)
sort(x,decreasing = F)
sort(x,decreasing = T)
#####2.3.对两个向量进行的操作#####
x = c(1,3,5,1)
y = c(3,2,5,6)
#(1)比较运算，生成等长的逻辑向量
x == y 
y == x
#(2)数学计算
x + y
#(3)连接
paste(x,y,sep=",")

#paste与paste0的区别
paste(x,y)

paste0(x,y)
paste(x,y,sep = "")

paste(x,y,sep = ",")
#当两个向量长度不一致
x = c(1,3,5,6,2)
y = c(3,2,5)
x == y # 啊！warning！
#循环补齐--看ppt

#利用循环补齐简化代码
paste0(rep("x",3),1:3)
paste0("x",1:3)

#(4)交集、并集、差集
intersect(x,y)
union(x,y)
setdiff(x,y)
setdiff(y,x)

x %in% y #x的每个元素在y中存在吗
y %in% x #y的每个元素在x中存在吗

#####2.4.向量筛选(取子集)--看ppt#####

x <- 8:12
#根据逻辑值取子集
x[x==10]
x[x<12]
x[x %in% c(9,13)]
#根据位置取子集
x[4]
x[2:4]
x[c(1,5)]
x[-4]
x[-(2:4)]

####2.5.修改向量中的某个/某些元素：取子集+赋值
x
#改一个元素
x[4] <- 40
x
#改多个元素
x[c(1,5)] <- c(80,20)
x

#### 2.6 简单向量作图
k1 = rnorm(12);k1
k2 = rep(c("a","b","c","d"),each = 3);k2
plot(k1)
boxplot(k1~k2) #课后试着搜索boxplot表达什么意思

