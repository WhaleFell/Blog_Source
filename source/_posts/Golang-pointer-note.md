---
title: Golang 学习笔记——Pointer指针
date: 2022-05-2 18:17:48
updated: 2022-05-2 18:17:48
categories: Golang
tags: [Golang, Coding]
description: Golang 学习笔记——Pointer指针
index_img: https://cdn.jsdelivr.net/gh/WhaleFell/Pic@master/img/image.png
banner_img: https://cdn.jsdelivr.net/gh/WhaleFell/Pic@master/img/image.png
---

# Go指针
`*指针类型`: 取指针地址对应的真实值. | 定义一个指针 `*p1`  
`&值`: 取值的内存地址.   
`var p *int`: 定义一个指向int类型的指针

## 指针初步
![](https://cdn.jsdelivr.net/gh/WhaleFell/GolangCoding@master/notes/img/pointer-1.png)  
![](https://cdn.jsdelivr.net/gh/WhaleFell/GolangCoding@master/notes/img/pointer-2.png)  
![](https://cdn.jsdelivr.net/gh/WhaleFell/GolangCoding@master/notes/img/pointer-3.png)  

---

![](https://cdn.jsdelivr.net/gh/WhaleFell/GolangCoding@master/notes/img/pointer-7.png)  
## 数组指针
"首先是一个指针,一个数组的地址."  
![](https://cdn.jsdelivr.net/gh/WhaleFell/GolangCoding@master/notes/img/pointer-4.png)  
![](https://cdn.jsdelivr.net/gh/WhaleFell/GolangCoding@master/notes/img/pointer-5.png)  

## 指针数组
"首先是一个数组,存储的数据类型是指针."
![](https://cdn.jsdelivr.net/gh/WhaleFell/GolangCoding@master/notes/img/pointer-6.png)  

## 函数指针
"一个指针,指向一个函数的指针."
![](https://cdn.jsdelivr.net/gh/WhaleFell/GolangCoding@master/notes/img/pointer-8.png)  

## 指针函数
"一个函数,该函数的返回值是一个指针."
![](https://cdn.jsdelivr.net/gh/WhaleFell/GolangCoding@master/notes/img/pointer-9.png)  

### 普通函数的执行分析
![](https://cdn.jsdelivr.net/gh/WhaleFell/GolangCoding@master/notes/img/pointer-10.png)  

### 指针函数的执行分析
![](https://cdn.jsdelivr.net/gh/WhaleFell/GolangCoding@master/notes/img/pointer-11.png)  

## 指针作为参数

### 普通函数的值传递
![](https://cdn.jsdelivr.net/gh/WhaleFell/GolangCoding@master/notes/img/pointer-12.png)  
![](https://cdn.jsdelivr.net/gh/WhaleFell/GolangCoding@master/notes/img/pointer-13.png)  

### 指针作为参数时的引用传递
![](https://cdn.jsdelivr.net/gh/WhaleFell/GolangCoding@master/notes/img/pointer-14.png)  
![](https://cdn.jsdelivr.net/gh/WhaleFell/GolangCoding@master/notes/img/pointer-15.png)  

### 应用
![](https://cdn.jsdelivr.net/gh/WhaleFell/GolangCoding@master/notes/img/pointer-16.png)  
![](https://cdn.jsdelivr.net/gh/WhaleFell/GolangCoding@master/notes/img/pointer-17.png)  
> 切片本来就是 **引用类型**,**不必传递指针.**

```go
package main

import "fmt"

func main() {
   	fmt.Println("Hello, World!")
	s1 := []int{1,2,3,4}
	fmt.Printf("main()数值:%v 地址:%p\n", s1, s1)
	test(s1)
	fmt.Printf("执行完函数main()数值:%v 地址:%p\n", s1, s1)
}

func test(slice []int) {
	fmt.Printf("进入test()数值:%v 地址:%p\n", slice, slice)
	// 在函数内修改切片
	slice[0] = 10
	fmt.Printf("离开test()数值:%v 地址:%p\n", slice, slice)
}
```
output:  
切片地址都是一样的,切片发生的是引用传递
```
Hello, World!
main()数值:[1 2 3 4] 地址:0xc000098000
进入test()数值:[1 2 3 4] 地址:0xc000098000
离开test()数值:[10 2 3 4] 地址:0xc000098000
执行完函数main()数值:[10 2 3 4] 地址:0xc000098000
```