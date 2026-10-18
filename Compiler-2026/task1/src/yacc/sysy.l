/*
 * Task 1：请在此实现 SysY2022 词法分析器
 */
%{
//引入生成bison的头文件
#include "yacc/Bison.hpp"
#include <iostream>
%}

%%

[ \t\n]  { /* 遇到空格、Tab、换行，直接忽略 */ }
"int"    { return yy::parser::make_INT();}
.        { /* 遇到其他任何字符，先忽略 */ }

%%