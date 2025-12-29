// main.cpp

//extern "C" {
//#include "lua.h"
//#include "lauxlib.h"
//#include "lualib.h"
//}

#include "lua.hpp"
#include <iostream>
using namespace std;

static void stackDump(lua_State* L) {
	static int count = 0;
	printf("begin dump lua stack %d\n", count);
	int i = 0;
	int top = lua_gettop(L);
	// for (i = 1; i <= top; ++i) 
	for (i = top; i >= 1; --i)
	{
		int t = lua_type(L, i);
		switch (t)
		{
		case LUA_TSTRING:
			printf("'%s'\n", lua_tostring(L, i));
			break;
		case LUA_TBOOLEAN:
			printf(lua_toboolean(L, i) ? "true \n" : "false \n");
			break;
		case LUA_TNUMBER:
			printf("%g\n", lua_tonumber(L, i));
			break;
		default:
			printf("%s\n", lua_typename(L, t));
			break;
		}
	}
	printf("\nend dump lua stack %d \n", count++);
}



int func(lua_State* L) {
	string s = lua_tostring(L, -1);
	int n = lua_tointeger(L,-2);
	cout<<"num = "<<n<<" " << "str = " << s << endl;
	return 0;
}

int add(lua_State* L) {
	int n = lua_gettop(L);
	int sum = 0;
	for (int i = 0; i <= n; ++i) {
		sum += lua_tointeger(L, i);
	}
	lua_pushinteger(L, sum);
	lua_pushinteger(L, sum/n);
	return 2;/// 返回参数个数
}
/// <summary>
/// lua调用c/c++函数实现
/// </summary>
/// <returns></returns>
int main() {
	lua_State* L = luaL_newstate();
	luaL_openlibs(L);

	//lua_pushcfunction(L, func);

	//lua_setglobal(L, "func");
	lua_pushcfunction(L, add);

	lua_setglobal(L, "add");


	luaL_dofile(L, "Scripts/InvokeCandC++.lua");

	lua_close(L);
	return 0;
}


/// <summary>
/// lua调用c/c++的表实现
/// </summary>
/// <returns></returns>
int main07() {
	lua_State* L = luaL_newstate();
	luaL_openlibs(L);

	lua_newtable(L);
	lua_pushstring(L, "age");
	lua_pushinteger(L, 18);
	lua_settable(L, -3); // -3表示表在栈中的位置

	lua_pushstring(L, "anker");
	lua_setfield(L, -2, "name");

	lua_setglobal(L, "people"); // 将表设置为全局变量

	luaL_dofile(L, "Scripts/InvokeCandC++.lua");

	lua_close(L);
	return 0;
}


/// <summary>
/// lua调用c/c++的字段实现
/// </summary>
/// </summary>
/// <returns></returns>
int main06() {
	lua_State* L = luaL_newstate();
	luaL_openlibs(L);
	/// lua字段
	lua_pushinteger(L, 18);
	lua_setglobal(L, "age");

	lua_pushstring(L, "guidada");
	lua_setglobal(L, "name");

	luaL_dofile(L, "Scripts/InvokeCandC++.lua");

	lua_close(L);
	return 0;
}


/// <summary>
/// 自实现编辑器
/// </summary>
/// <returns></returns>
int main05() {
	lua_State* L = luaL_newstate();
	luaL_openlibs(L);
	//luaL_dofile(L, "Scripts/globalFunc.lua");
	char buf[2014];
	while (fgets(buf, 2014, stdin)) {
		luaL_dostring(L, buf);
	}

	lua_close(L);
	return 0;
}
/// <summary>
/// c/c++调用lua函数
/// </summary>
/// <returns></returns>
int main04() {
	lua_State* L = luaL_newstate();
	luaL_openlibs(L);
	luaL_dofile(L, "Scripts/globalFunc.lua");

	//lua_getglobal(L, "func");
	/////添加参数
	//lua_pushnumber(L, 101);
	//lua_pushstring(L, "input");
	//lua_pcall(L, 2, 2, 0);

	//printf("The size of interaction stack %d\n", lua_gettop(L));

	/// 获取表中的方法
	/// 1. 压入表
	lua_getglobal(L, "tab");
	/// 2. 压入表中的方法
	lua_getfield(L, -1, "func");
	/// 3. 移除表(opt)
	lua_remove(L, -2);
	/// 4. 压入参数
	lua_pushnumber(L, 101);
	lua_pushstring(L, "input of table");
	/// 5. 调用
	lua_pcall(L, 2, 2, 0);

	printf("The size of interaction stack %d\n", lua_gettop(L));
	lua_close(L);
	return 0;
}

/// <summary>
/// 获取全局表
/// </summary>
/// <returns></returns>
int main03() {
	lua_State* L = luaL_newstate();
	luaL_openlibs(L);
	
	luaL_dofile(L, "Scripts/second.lua");

	lua_getglobal(L, "obj");
	/// 获取obj的name属性
	lua_pushstring(L, "name");
	lua_gettable(L, 1);
	if (lua_isstring(L, -1)) {
		string name = lua_tostring(L, -1);
		cout << "name :" << name << endl;
	}
	//lua_pop(L, 1);
	/// 获取obj的age属性
	lua_pushstring(L, "age");
	lua_gettable(L, 1);
	if (lua_isnumber(L, -1)) {
		int age = lua_tonumber(L, -1);
		printf("age: %d\n", age);
	}

	lua_getfield(L, 1, "gender");
	if (lua_isstring(L, -1)) {
		string gender = lua_tostring(L, -1);
		cout << "gender :" << gender << endl;
	}

	lua_close(L);

	return 0;
}
/// <summary>
/// 调用lua
/// </summary>
/// <returns></returns>
int main02() {
	// 创建 Lua 状态机 上下文
	lua_State* L = luaL_newstate();
	luaL_openlibs(L);  // 打开标准库

	luaL_dofile(L,"Scripts/frist.lua"); //加载 编译  执行 Lua 脚本文件 存在在状态机

	lua_getglobal(L, "name");
	lua_getglobal(L, "age");
	lua_getglobal(L, "gender");
	lua_getglobal(L, "org");


	if (lua_isnumber(L, 2)) {
		int num = lua_tonumber(L, 2);
		cout << "number : " << num << endl;
	}
	lua_remove(L, 2);  // <=> lua_rotate(L, 2, 2); lua_pop(L, 1);
	if (lua_isstring(L, -1)) {
		string str = lua_tostring(L, -1);
		cout << "string :" << str << endl;
	}


	lua_close(L);
	return 0;
}
/// <summary>
/// lua状态机与交互栈
/// </summary>
/// <returns></returns>
int main01() {
	// 创建 Lua 状态机 上下文
	lua_State* L = luaL_newstate();
	luaL_openlibs(L);  // 打开标准库

	// 执行 Lua 代码
	//luaL_dostring(L, "print('Hello from Lua in VS!')");

	lua_pushinteger(L, 1);
	lua_pushinteger(L, 2);
	lua_pushinteger(L, 3);
	lua_pushinteger(L, 4);
	stackDump(L);

	//printf("stack size = %d\n", lua_gettop(L));
	//lua_settop(L,5);
	//printf("stack size = %d\n", lua_gettop(L));


	//lua_pushvalue(L, 1);


	//lua_replace(L,2);

	//lua_rotate(L, 2, 2);

	//lua_pop(L, 3);

	//lua_insert(L, 1);

	//int number = lua_tonumber(L, -2);
	//cout << "number :" << number << endl;

	//lua_settop(L, 4);	/* set top to its current value */
	//lua_insert(L, 3);	/* move top element to the top */


	//lua_replace(L, -1); /* replace top element by the top element then pop */
	lua_rotate(L, 2, 2);	/* rotates by zero positions */

	// 展示交互栈
	stackDump(L);
	// 关闭 Lua 状态
	lua_close(L);

	return 0;
}