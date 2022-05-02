---
title: Golang 学习笔记——map映射数据结构
date: 2022-05-1 18:30:48
categories: Golang
tags: [Golang, Coding]
description: Golang 学习笔记——map映射数据结构
index_img: https://cdn.jsdelivr.net/gh/WhaleFell/Pic@master/img/image.png
banner_img: https://cdn.jsdelivr.net/gh/WhaleFell/Pic@master/img/image.png
---

# Go map 数据类型  

## 定义 Map 对象

![](https://cdn.jsdelivr.net/gh/WhaleFell/GolangCoding@master/notes/img/map-1.png)  
![](https://cdn.jsdelivr.net/gh/WhaleFell/GolangCoding@master/notes/img/20220424210757.png)  

## 存储值获取值

![](https://cdn.jsdelivr.net/gh/WhaleFell/GolangCoding@master/notes/img/map-3.png)
![](https://cdn.jsdelivr.net/gh/WhaleFell/GolangCoding@master/notes/img/map-4.png)  

## Map 的遍历
> 使用 `sort` 包进行排序.  

![](https://cdn.jsdelivr.net/gh/WhaleFell/GolangCoding@master/notes/img/map-6.png)  
![](https://cdn.jsdelivr.net/gh/WhaleFell/GolangCoding@master/notes/img/map-7.png)  

## Map 和 Slice 结合使用

![](https://cdn.jsdelivr.net/gh/WhaleFell/GolangCoding@master/notes/img/map-8.png)  
![](https://cdn.jsdelivr.net/gh/WhaleFell/GolangCoding@master/notes/img/map-9.png)  

原理图:  
![](https://cdn.jsdelivr.net/gh/WhaleFell/GolangCoding@master/notes/img/mapWithSlice.png)  

## Map 是引用类型

![](https://cdn.jsdelivr.net/gh/WhaleFell/GolangCoding@master/notes/img/map-12.png)  
![](https://cdn.jsdelivr.net/gh/WhaleFell/GolangCoding@master/notes/img/map-10.png)  
![](https://cdn.jsdelivr.net/gh/WhaleFell/GolangCoding@master/notes/img/map-11.png)  

## 总结

![](https://cdn.jsdelivr.net/gh/WhaleFell/GolangCoding@master/notes/img/map-5.png)  