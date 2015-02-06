// ================================================================================
// ================================================================================
// ==========Proxy SP / ADBlock Plus Mod for FireFox 信息==========
// @编写：           jiayiming@gmail.com     QQ:416399437
// @最后更新时间：   2013-03-10
// @版本：           蛋疼测试版
// ==========Proxy SP / ADBlock Plus Mod 信息==========
// ================================================================================
// ================================================================================
//Config Zone/全局设置区域：
//重要说明：修改全局设置中的值可以选择是否启用相应功能。值为"0"表示禁用，值为"1"表示启用。
//正则规则修改方式：一行一条规则，除了最后一行之外的换行必须使用英文逗号“,”来结尾。每条规则必须以"/"开始和结尾表示规则为正则，并且在结尾处的"/"的后加上一个小写的"i"，表示规则强制使用小写，可以防止漏杀。
//通配符规则修改方式：一行一条规则，除了最后一行之外的换行必须使用英文逗号“,”来结尾。每条规则必须写在一对英文双引号中。
//
// 是否启用自动正则代理
        var ifProxyRegex = 1;
// 是否启用自动通配符代理
        var ifProxyWildcard = 1;

//
//
//==============================全局变量开始==============================
var AllClear = "DIRECT";                  //放行
var AdBlock = "PROXY 127.0.0.1:2012";            //屏蔽广告的错误代理
var GoHttpProxy = "PROXY 127.0.0.1:8087";   //HTTP代理（格式："PROXY IP地址:端口"）
var GoSocksProxy = "SOCKS 127.0.0.1:7070";   //Socks V5代理（格式："SOCKS IP地址:端口"）
//==============================全局变量结束==============================


//==============================主函数@@@代理/过滤###开始==============================
function FindProxyForURL(url, host){
//获取小写地址
        url = url.toLowerCase();

//正则代理
        if (ifProxyRegex==1)  for (i in Proxy_Regex_List)  {  if(Proxy_Regex_List[i].test(url))  return GoHttpProxy;  };
//通配符代理
        if (ifProxyWildcard==1)  for (i in Proxy_Wildcard_List)  {  if(shExpMatch(url,Proxy_Wildcard_List[i].toLowerCase()))  return GoHttpProxy;  };
        return AllClear;
}
//==============================主函数@@@代理/过滤###结束==============================


//==============================代理名单开始==============================
//正则代理名单
var Proxy_Regex_List = new Array(
//---------------Google Service
/\.google\.com|\.googleusercontent\.com|\.gstatic\.com|\.googleapis\.com|\.googlecode\.|\.ggpht\.com/i,
/youtube\.com|\.ytimg\.com|googlevideo\.com|\.youtube-nocookie\.com/i,
/\.appspot\./i,
//---------------SNS
/twitter\.com|twimg\.com|facebook\.com|fbcdn\.net/i,
//---------------网盘
/\.mediafire\.com|megaupload\.com/i
);

//通配符代理名单
var Proxy_Wildcard_List = new Array(
"*.blogbus.com*",
"*.blogspot.com*",
"*.nyaa.eu/?page=download*",
"*.mobile01.com*",
"*chrome.angrybirds.com*",
"*d4e.org*"
);
//==============================代理名单结束==============================
