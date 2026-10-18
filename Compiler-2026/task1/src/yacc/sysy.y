/*
 * Task 1：请在此实现 SysY2022 语法分析器及 AST 构造语义动作
 */
%{
#include <iostream>
%}

// 1. 这里必须和 Flex 里的 make_INT() 对应，声明我们有一个叫 INT 的 Token
%token INT

%%

/* 2. 语法规则区：Program 是我们的起点，它接收一个 INT */
Program:
      INT { 
          std::cout << "Bison ：收到 int 了，电话接通啦！" << std::endl; 
      }
    ;

%%