function FindProxyForURL(url, host){
var Proxy="PROXY 127.0.0.1:8087";//代理地址和端口
var Wujie="PROXY 127.0.0.1:9666";//代理地址和端口
var ADBlink="PROXY 255.255.255.0:3421";//屏蔽广告（该部分支持通配符）
var Direct="PROXY 127.0.0.1:8000;DIRECT";
var OChost="PROXY 59.151.106.253:80";//Operachina跳转

var OCright = new Array(
"operachina.com",
"bbs.operachina.com",
"mini.operachina.com",
"portal.operachina.com",
"press.operachina.com",
"redir.operachina.com",
"static.operachina.com",
"wiki.operachina.com",
"www.operachina.com");

var patterns = new Array(
//软件官网
"cheatengine.org",
//媒体
"nytimes.com",
"tmagazine.com",
//国际互联网服务
"blogger.com",
"blogspot.com");

var patterns2 = new Array(
//下面可以添加上面代理不管的网站地址
"baidu.com"
);

var WJsite = new Array(
"dongtaiwang.com",
"edoors.com",
"epochtimes.com",
"ntdtv.com",
"soundofhope.org",
"wujieliulan.com",
"www.aboluowang.com",
"www.newsancai.com",
"www.renminbao.com",
"www.secretchina.com");

var Blackhole="PROXY 255.255.255.0:3421";//屏蔽广告，代理黑洞设置
if (typeof(navigator) != 'undefined'
	&& navigator.appVersion.indexOf("Mac") != -1) {
    Blackhole = "PROXY 0.0.0.0:3421";}
var adblocklist = new Array(
"/ad/",
"/ad?.",
"/adpolestar/",
"/ads/",
"/adsense/",
"/adserver/",
"/adv/",
"/advertise/",
"/cpro/",
"/ggao/",
"/guanggao/",
"/pagead/",
"/promotion/",
"/syndication/",
"2o7.net",
"51yes.com",
"acs.56.com",
"acs86.com",
"ad-plus.cn",
"admaster.",
"admaster.com",
"adsame.com",
"adsfactor.net",
"allyes.cn",
"allyes.com",
"atm.youku.com",
"aty.sohu.com",
"biz5.sandai.net",
"c.cnzz.com",
"cb.baidu.com",
"cbjs.baidu.com",
"cbsi.com",
"chanet.com.cn",
"chinauma.net",
"cnzz.com",
"cnzz.net",
"cpro.baidustatic.com",
"crs.baidu.com",
"datamaster.com",
"doubleclick.net",
"duiwai.baidu.com*
"effectivemeasure.net",
"erebor.douban.com",
"google-analytics.com",
"googleadservices.",
"googleadsserving.cn",
"googlesyndication.com",
"googletagservices.",
"hm.baidu.com",
"images.sohu.com",
"imrworldwide.",
"irs01.com",
"irs09.com",
"j.wit.qq.com",
"jsqmt.qq.com",
"kkpgv2.xunlei.com",
"l.qq.com",
"linezing.com",
"log.kukuplay.com",
"mediav.com",
"miaozhen.com",
"pagechoice.net",
"pingjs.qq.com",
"pos.baidu.com",
"pub.aplus.pptv.com",
"pub.mop.com",
"resource.dl.kukuplay.com",
"resource.redirect.kukuplay.com",
"revsci.net",
"scorecardresearch.com",
"serving-sys.com",
"share.baidu.com",
"shenduchuanmei.com",
"tajs.qq.com",
"tanx.com",
"tcss.qq.com",
"union.youdao.com",
"users.51.la",
"wauee.com",
"wrating.com"
);

for (i in OCright) {
    if(shExpMatch(host.toLowerCase(),"*" + OCright[i].toLowerCase() + "*")){return OChost;};
	};
for (i in WJsite) {
    if(shExpMatch(host.toLowerCase(),"*" + WJsite[i].toLowerCase() + "*")){return Wujie;};
	};	
for (i in patterns) {
	if(shExpMatch(host.toLowerCase(),"*" + patterns[i].toLowerCase() + "*")){return Proxy;};
	};
for (i in patterns2) {
	if(shExpMatch(host.toLowerCase(),"*" + patterns2[i].toLowerCase() + "*")){return Direct;};
	};	
for (i in adblocklist) {
	if(shExpMatch(url, adblocklist[i])){return ADBlink;};
	};
	return "DIRECT";
};