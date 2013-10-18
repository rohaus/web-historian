<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="ko" xml:lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="Content-Script-Type" content="text/javascript" />
<meta http-equiv="Content-Style-Type" content="text/css" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=880" />
<link rel="shortcut icon" type="image/x-icon" href="http://img.naver.net/static/www/favicon.ico" />
<title>네이버 :: 나의 경쟁력, 네이버</title>
<link rel="stylesheet" type="text/css" href="/css/main_v20131015.css?1" />
<link rel="stylesheet" type="text/css" href="/css/api_atcmp_v20130910.css" />
<!--[if IE]><style type="text/css">.cast_list li{white-space:normal;}</style><![endif]-->
<script type="text/javascript">
//<![CDATA[
document.domain = "naver.com";
history.navigationMode = 'compatible';
var nsc = "navertop.v3";
</script>
<script type="text/javascript" src="/js/c/nlog_20120319.min.js"></script>
<script type="text/javascript">
var isLogin = false; 
var strHost = "www.naver.com";
var isMobile = false;
var isMyCast = false;
var svr = "<!--cweb203.ntop-->";
var LogError=function(b){var a=new Image();a.src="http://cecs.naver.com/?m="+b+"&u="+document.location+"&l=1115"};DLScript={quSXI:new Array(),quS:new Array(),retry:0,isLoad:function(a){for(var b=this.quS.length-1;
b>=0;b--){if(this.quS[b]===a){return true}}return false},_runOnload:function(b,d,c){if(!d){return}var a=b.readyState;if(typeof a==="undefined"&&!b.onloadDone){b.onloadDone=true;(c)?setTimeout(d,100):b.onload=d;
return}if(("loaded"===a||"complete"===a)&&!b.onloadDone){b.onloadDone=true;setTimeout(d,100)}else{if(this.retry<10){this.retry++;setTimeout(function(){DLScript._runOnload(b,d,c)},10)}}},_createJSDom:function(c,b){var a=document.createElement("script");
if(b=="src"){a.src=c}else{a.text=c}return a},_appendJSDom:function(a){document.getElementsByTagName("head")[0].appendChild(a)},loadDS:function(b,d,c){if(!this.isLoad(b)){this.quS[this.quS.length]=b;var a=this._createJSDom(b,"src");
this._runOnload(a,d,c);this._appendJSDom(a)}else{if(d){setTimeout(d,100)}}},loadXI:function(c,i,g,d){if(!this.isLoad(c)){this.quS[DLScript.quS.length]=c;var h=this.quSXI.length;if(d){var a={response:null,onload:g,done:false};
DLScript.quSXI[h]=a}if(typeof window.localStorage!="undefined"){try{var b=window.localStorage.getItem(c+"_uid");var m=window.localStorage.getItem(c)}catch(j){if(j.description){LogError("[DL] localStorge get : "+j.description)
}}if(m&&i&&b==i){if(d){DLScript.quSXI[h].response=m;DLScript.injectScripts()}else{var f=DLScript._createJSDom(m,"text");DLScript._runOnload(f,g,true);DLScript._appendJSDom(f)}return}}var k=DLScript.getXHRObject();
if(!k){LogError("[DL] XHRObject is NULL");this.loadDS(c,g);return}k.onreadystatechange=function(){if(k.readyState==4){if(k.status==200||k.status==0){var o=k.responseText;try{if(typeof window.localStorage!="undefined"&&i){DLScript.clearLS();
window.localStorage.setItem(c,o);window.localStorage.setItem(c+"_uid",i)}}catch(p){if(p.description){LogError("[DL] localStorge set : "+p.description)}}if(d){DLScript.quSXI[h].response=o;DLScript.injectScripts()
}else{var n=DLScript._createJSDom(o,"text");DLScript._runOnload(n,g,true);DLScript._appendJSDom(n)}}else{LogError("[DL] status is not 200(0) - "+k.status);DLScript.removeUrl(c);DLScript.clearLS();setTimeout(g,100)
}}};var l="";if(i){l=(c.indexOf("?")>0)?"&"+i:"?"+i}k.open("GET",c+l,true);k.setRequestHeader("Content-Type","application/x-www-form-urlencoded; charset=utf-8");k.setRequestHeader("charset","utf-8");k.send("")
}else{if(g){setTimeout(g,100)}}},injectScripts:function(){var a=DLScript.quSXI.length;for(var c=0;c<a;c++){var d=DLScript.quSXI[c];if(!d.done){if(!d.response){break}else{d.done=true;var b=DLScript._createJSDom(d.response,"text");
DLScript._runOnload(b,d.onload,true);DLScript._appendJSDom(b)}}}},getXHRObject:function(){var c=false;try{c=new XMLHttpRequest()}catch(f){var b=["Msxml2.XMLHTTP","Microsoft.XMLHTTP","Msxml2.XMLHTTP.6.0","Msxml2.XMLHTTP.3.0"];
var a=b.length;for(var d=0;d<a;d++){try{c=new ActiveXObject(b[d])}catch(f){LogError("[DL] getXHRObject - "+f.description);continue}break}}finally{return c}},loadWS:function(a){document.write('<script src="'+a+'" type="text/javascript"><\/script>')
},clearLS:function(){if(typeof window.localStorage!="undefined"){try{window.localStorage.clear()}catch(a){if(a.description){LogError("[DL] clearLS : "+a.description)}}}},removeUrl:function(a){for(var b=this.quS.length-1;
b>=0;b--){if(this.quS[b]===a){this.quS[b]=""}}}};
DLScript.loadDS("/js/c/JEagleEyeClient_20120111.min.js?v=2");
function refreshLcs(etc) {if(document.cookie.indexOf("nrefreshx=1") != -1) {etc=etc?etc:{};etc["mrf"]="1";return etc;}return null;}
lcs_do(refreshLcs());
//]]>
</script>
</head>
<body>






<div id="u_skip">
<a href="#news_cast2" onclick="document.getElementById('news_cast2').tabIndex = -1;document.getElementById('news_cast2').focus();return false;"><span>뉴스스탠드 바로가기</span></a>
<a href="#open_cast" onclick="document.getElementById('open_cast').tabIndex = -1;document.getElementById('open_cast').focus();return false;"><span>오픈캐스트 바로가기</span></a>
<a href="#themecast" onclick="document.getElementById('themecast').tabIndex = -1;document.getElementById('themecast').focus();return false;"><span>주제별캐스트 바로가기</span></a>
<a href="#time_square" onclick="document.getElementById('time_square').tabIndex = -1;document.getElementById('time_square').focus();return false;"><span>타임스퀘어 바로가기</span></a>
<a href="#shop_cast" onclick="document.getElementById('shop_cast').tabIndex = -1;document.getElementById('shop_cast').focus();return false;"><span>쇼핑캐스트 바로가기</span></a>

<a href="#account" onclick="document.getElementById('account').tabIndex = -1;document.getElementById('account').focus();return false;"><span>로그인 바로가기</span></a>

</div>
<div id="wrap">
<div style="position:relative; width:880px; margin:0 auto; z-index:11;">
<div id="da_top"></div>
<div id="da_brand"></div>
<div id="da_hook_t"></div>
<div id="da_hook_b"></div>
<div id="da_stake"></div>
<div id="da_casthelp"></div>
<div id="da_expwide"></div>
</div>
<div id="header">
<div class="gnb">
<h2 class="blind">홈 유형 선택</h2>
<ul class="nav_hm">
<li id="nav_hm" class="m"><a href="http://www.naver.com/" onclick="clickcr(this,'HNB.cast','','',event);" accesskey="1" ><span class="nav_hm2_ly nav_hm2_ly1">네이버 홈</span></a></li>
<li id="nav_hm2" class="m2"><a href="http://se.naver.com/" onclick="clickcr(this,'HNB.search','','',event);" accesskey="2"><span class="nav_hm2_ly nav_hm2_ly2">가볍고 빠른 검색홈, <span>네이버SE</span></span></a></li>
<li id="nav_hm3" class="m3"><a href="http://me.naver.com/" onclick="clickcr(this,'HNB.desk','','',event);" accesskey="3"><span class="nav_hm2_ly nav_hm2_ly3">나만의 네이버 홈, <span>네이버me</span></span></a></li>
</ul>
<h2 class="blind">네이버 설정</h2>
<ul class="naver_set">
<li class="makeHomePage hide"><a href="#mkhome" id="mkhome" onclick="clickcr(this,'top.mkhome','','',event);this.style.behavior='url(#default#homepage)';this.setHomePage('http://www.naver.com');ToolBar.popup();return false;">네이버를 시작페이지로</a></li>
<li class="toolbar hide"><a href="http://cdn.naver.com/naver/toolbar/Naver_Toolbar.exe " onclick="clickcr(this,'top.toolbar','','',event);">툴바설치</a></li>
<li class="naverapp">
<a href="#" class="btn" onclick="clickcr(this,'top.app','','',event);Andro_MSG.toggle();return false;">네이버 앱 다운로드</a>
<div id="naverapply" class="ly_hnb hide">
<p class="tit">모바일 라이프의 경쟁력, <a href="http://campaign.naver.com/naverapp"><strong>네이버 앱</strong></a>을 설치하세요!</p>
<fieldset>
<legend>다운로드URL 문자받기</legend>
<span class="txtsm">다운로드URL 문자받기</span>
<label class="blind" for="app_phone">휴대폰번호 입력</label>
<input class="empty" type="text" value="" id="app_phone" />
<button type="button" class="btnsm"><span class="blind">보내기</span></button>
</fieldset>
<p class="desc">입력하신 번호는 저장되지 않고, 전송은 무료입니다.</p>
<p class="qr"><img src="http://img.naver.net/static/www/dl_qr_naver.png" width="68" height="84" alt="네이버 앱 QR코드" /></p>
<ul class="app">
<li class="f"><a href="#naver"><strong>네이버 앱</strong></a></li>
<li><a href="#map">지도</a></li>
<li><a href="#ndrive">N드라이브</a></li>
<li><a href="#books">북스</a></li>
<li><a href="#music">뮤직</a></li>
<li><a href="#line">라인</a></li>
<li><a href="#appstore">앱스토어</a><span class="new">new</span></li>
</ul>
<div class="cls"><a href="#close" title="네이버 앱 다운로드 레이어 닫기" onclick="clickcr(this,'top*m.close','','',event);Andro_MSG.close();return false;"><span class="blind">네이버 앱 다운로드 레이어 닫기</span></a></div>
</div>
</li>
</ul>
<h2 class="blind">패밀리 사이트</h2>
<div id="fms" class="fms">
<a href="http://happybean.naver.com/main/SectionMain.nhn" id="top.happybean" class="hb"><span class="ir">해피빈</span></a><span>|</span><a href="http://me2day.net" id="top.me2day" class="me2"><span class="ir">me2day</span></a><span>|</span><a href="http://jr.naver.com" id="top.jrnaver" class="ju"><span class="ir">쥬니버</span></a><span>|</span><a href="http://www.hangame.com" id="top.hangame" class="han"><span class="ir">한게임</span></a>
</div>
<div id="promotion8" style="display:none;height:41px;">
<img src="http://img.naver.net/static/www/up/2012/naver_homepage.png" width="880" height="31" alt="시작페이지" usemap="#sliding" />
<map id="promo_sliding" name="sliding">
<area shape="rect" coords="533,5,575,24" href="http://www.naver.com/" onclick="clickcr(this,'tsb.set','','',event);return HomePageSet.setHomePage();" alt="시작페이지 설정" />
<area shape="rect" coords="580,5,622,24" href="http://www.naver.com/" onclick="clickcr(this,'tsb.no','','',event);return HomePageSet.cancel();" alt="시작페이지 안하기" />
<area id="sethomepage_close" shape="rect" coords="855,5,875,23" href="#" alt="배너 닫기" onclick="clickcr(this,'tsb.close','','',event);return HomePageSet.cancel();" />
</map>
</div>
<script type="text/javascript">
//<![CDATA[
var slidingCookieName = "naverSetHomepage";
var slidingCookieExpDate = 1;
var slidingOneTimeLink = 1;
//]]>
</script>
</div>
<div class="lnb">
<h1>
<img src='http://img.naver.net/static/www/u/2013/0819/nmms_111143893.gif' alt='네이버' width='210' height='78' usemap='#logo_ss' />
<map id='logo_ss' name='logo_ss'>
<area shape='rect' coords='0,0,210,78' alt='네이버' href="http://www.naver.com/" onclick="clickcr(this, 'top.logo','78000C01_0000000C1572', '', event)"  />
</map>
</h1>
<hr />
<div id="search">
<form id="sform" name="sform" action="http://search.naver.com/search.naver" method="get">
<fieldset>
<legend>검색</legend>
<select id="where" name="where" title="검색 범위 선택" class="blind">
<option value="nexearch" selected="selected">통합검색</option>
<option value="post">블로그</option>
<option value="cafeblog">카페</option>
<option value="cafe">- 카페명</option>
<option value="article">- 카페글</option>
<option value="kin">지식iN</option>
<option value="news">뉴스</option>
<option value="web">사이트</option>
<option value="category">- 카테고리</option>
<option value="site">- 사이트</option>
<option value="movie">영화</option>
<option value="webkr">웹문서</option>
<option value="dic">사전</option>
<option value="100">- 백과사전</option>
<option value="endic">- 영어사전</option>
<option value="eedic">- 영영사전</option>
<option value="krdic">- 국어사전</option>
<option value="jpdic">- 일본어사전</option>
<option value="hanja">- 한자사전</option>
<option value="terms">- 용어사전</option>
<option value="book">책</option>
<option value="music">음악</option>
<option value="doc">전문자료</option>
<option value="shop">쇼핑</option>
<option value="local">지역</option>
<option value="video">동영상</option>
<option value="image">이미지</option>
<option value="mypc">내PC</option>
<optgroup label="스마트 파인더">
<option value="movie">영화</option>
<option value="auto">자동차</option>
<option value="game">게임</option>
<option value="health">건강</option>
<option value="people">인물</option>
</optgroup>
<optgroup label="네이버 랩">
<option>긍정부정검색</option>
</optgroup>
</select>
<span class="green_window"><input id="query" name="query" type="text" title="검색어 입력" class="input_text" tabindex="1" accesskey="s" style="ime-mode:active;" autocomplete="off" onclick="document.getElementById('fbm').value=1;"  /></span><button id="search_btn" type="submit" title="검색" tabindex="3" class="sch_smit" onmouseover="this.className='sch_smit over'" onmousedown="this.className='sch_smit down'" onmouseout="this.className='sch_smit'" onclick="clickcr(this,'sch.action','','',event);"><span class="ir">검색</span></button>
<input type="hidden" id="sm" name="sm" value="top_hty" />
<input type="hidden" id="fbm" name="fbm" value="0" />
<input type="hidden" id="acr" name="acr" value="" disabled="disabled" />
<input type="hidden" id="acq" name="acq" value="" disabled="disabled" />
<input type="hidden" id="qdt" name="qdt" value="" disabled="disabled" />
<input type="hidden" id="ie" name="ie" value="utf8" />
</fieldset>
</form>
<div id="nautocomplete" class="autocomplete">
<span class="btn_arw top"><a href="#" onclick="return false;" tabindex="2"><img src="http://sstatic.naver.com/search/images11/btn_atcmp_down_on.gif" width="13" height="11" title="자동완성 펼치기" alt="자동완성 펼치기" class="triangleImg" /></a></span>
</div>
<div class="reatcmp" id="autoFrame" style="width: 360px; background-color: rgb(255, 255, 255); display: none;">
<div class="api_atcmp_wrap _atcmp" style="display:none;">
<div class="_atcmp_answer_wrap"></div>
<div class="words nature">
<h3 class="tit">생각한대로 검색해 보세요 <span class="beta">Beta</span></h3>
<ul class="_nature"><li><a href="#" onclick="return false;">@txt@</a><span style="display:none" id="rank@rank@">@txt@</span></li></ul>
</div>
<div class="words">
<ul class="_resultBox"><li class="@url_class@"><a href="#" onclick="return false;" title="">@txt@</a><a href="@url@" target="_blank" class="mquick">바로이동</a><span style="display:none" id="rank@rank@">@in_txt@</span></li></ul>
<ul class="_resultBox"><li class="@url_class@"><a href="#" onclick="return false;" title="">@txt@</a><a href="@url@" target="_blank" class="mquick">바로이동</a><span style="display:none" id="rank@rank@">@in_txt@</span></li></ul>
<ul class="_resultBox"><li class="@url_class@"><a href="#" onclick="return false;" title="">@txt@</a><a href="@url@" target="_blank" class="mquick">바로이동</a><span style="display:none" id="rank@rank@">@in_txt@</span></li></ul>
<ul class="_resultBox"><li class="@url_class@"><a href="#" onclick="return false;" title="">@txt@</a><a href="@url@" target="_blank" class="mquick">바로이동</a><span style="display:none" id="rank@rank@">@in_txt@</span></li></ul>
</div>
<p class="func"><span class="fl"><a onclick="window.open(this.href, '_blank', 'width=970, height=600, toolbar=no, scrollbars=no, location=no, status=yes, menubar=no, resizable=no'); return false;" href="http://help.naver.com/ops/step2/faq.nhn?fcatid=184" target="_blank">도움말</a></span><span><em><a class="hisoff" href="javascript:;">검색어저장 켜기</a> |</em><a class="funoff" href="javascript:;"  onclick="smartSearch.unuse(); return false;">자동완성 끄기</a></span></p>
<img src="http://sstatic.naver.net/search/images11/img_atcmp15.gif" alt="기능을 다시 켤 때는 펼치기 버튼을 클릭하세요" width="218" height="23" class="help _help_tooltip1" style="display:none;"/>
</div>
<div class="api_atcmp_wrap _atcmpIng" style="display:none;">
<div class="words"><p class="msg">현재 자동완성 기능을 사용하고 계십니다.</p></div>
<p class="func"><span class="fl"><a onclick="window.open(this.href, '_blank', 'width=970, height=600, toolbar=no, scrollbars=no, location=no, status=yes, menubar=no, resizable=no'); return false;" href="http://help.naver.com/ops/step2/faq.nhn?fcatid=184" target="_blank">도움말</a></span><span><em><a class="hisoff" href="javascript:;">검색어저장 켜기</a> |</em><a class="funoff" href="javascript:;"  onclick="smartSearch.unuse(); return false;">자동완성 끄기</a></span></p>
<img src="http://sstatic.naver.net/search/images11/img_atcmp15.gif" alt="기능을 다시 켤 때는 펼치기 버튼을 클릭하세요" width="218" height="23" class="help _help_tooltip2" style="display:none;"/>
</div>
<div class="api_atcmp_wrap _atcmpStart" style="display:none;">
<div class="words"><p class="msg">자동완성 기능이 활성화되었습니다.</p></div>
<p class="func"><span class="fl"><a onclick="window.open(this.href, '_blank', 'width=970, height=600, toolbar=no, scrollbars=no, location=no, status=yes, menubar=no, resizable=no'); return false;" href="http://help.naver.com/ops/step2/faq.nhn?fcatid=184" target="_blank">도움말</a></span><span><em><a class="hisoff" href="javascript:;">검색어저장 켜기</a> |</em><a class="funoff" href="javascript:;"  onclick="smartSearch.unuse(); return false;">자동완성 끄기</a></span></p>
<img src="http://sstatic.naver.net/search/images11/img_atcmp15.gif" alt="기능을 다시 켤 때는 펼치기 버튼을 클릭하세요" width="218" height="23" class="help _help_tooltip3" style="display:none;"/>
</div>
<div class="api_atcmp_wrap _atcmpOff" style="display:none;">
<div class="words"><p class="msg">자동완성 기능이 꺼져 있습니다.</p></div>
<p class="func"><span class="fl"><a onclick="window.open(this.href, '_blank', 'width=970, height=600, toolbar=no, scrollbars=no, location=no, status=yes, menubar=no, resizable=no'); return false;" href="http://help.naver.com/ops/step2/faq.nhn?fcatid=184" target="_blank">도움말</a></span><span><em><a class="hisoff" href="javascript:;">검색어저장 켜기</a> |</em><a class="funoff" href="javascript:;">자동완성 켜기</a></span></p>
</div>
<div class="api_atcmp_wrap _keywords" style="display:none;">
<div class="my_words">
<div class="lst_tab">
<ul><li class="on _recentTab"><a href="javascript:;">최근검색어</a></li><li class="_myTab"><a href="javascript:;">내 검색어</a></li></ul>
</div>
<div class="words _recent">
<ul><li><a class="t@my@ _myBtn" title="내 검색어 등록" href="javascript:;">내 검색어 등록</a><a href="javascript:;">@txt@</a><em class="date">@date@</em><a href="javascript:;" class="btn_del _del" title="검색어삭제">삭제</a><span style="display:none">@in_txt@</span></li></ul>
<div class="info_words _recentNone" style="display:none">최근검색어 내역이 없습니다.</div>
<p class="msg _offMsg" style="display:none">검색어 저장 기능이 꺼져 있습니다.</p>
</div>
<div class="words _my" style="display:none">
<ul><li><a class="ton _myBtn" title="내 검색어 해제" href="javascript:;">내 검색어 해제</a><a href="javascript:;">@txt@</a></li></ul>
<div class="info_words _myNone" style="display:none">설정된 내 검색어가 없습니다.<br />최근검색어에서 <span class="star">내 검색어 등록</span>를 선택하여 자주 찾는 검색어를<br />내 검색어로 저장해 보세요.</div>
<p class="msg _offMsg" style="display:none">검색어 저장 기능이 꺼져 있습니다.</p>
</div>
<p class="noti _noti" style="display:none">공용 PC에서는 개인정보 보호를 위하여 반드시 로그아웃을 해 주세요.</p>
<p class="func _recentBtnGroup"><span class="fl"><a class="_delMode" href="javascript:;">기록 삭제</a></span><span><a class="_keywordOff" href="javascript:;">검색어저장 끄기</a> | <a class="_acOff" href="javascript:;">자동완성 끄기</a></span></p>
<p class="func _recentDelBtnGroup" style="display:none"><span class="fl"><a class="_delAll" href="javascript:;" title="최근 검색어 기록을 모두 삭제합니다.">기록 전체 삭제</a></span><span><a class="_delDone" href="javascript:;">완료</a></span></p>
<p class="func _myBtnGroup" style="display:none"><span class="fl"><a class="_delAll" href="javascript:;" title="설정된 내 검색어를 모두 삭제합니다.">기록 전체 삭제</a></span><span><a class="_keywordOff" href="javascript:;">검색어저장 끄기</a> | <a class="_acOff" href="javascript:;">자동완성 끄기</a></span></p>
<span class="help2 _help2" style="display:none">기능을 다시 켤 때는 펼치기 버튼을 클릭하세요</span>
<div class="ly_noti _maxLayer" style="display:none">
<span class="mask"></span>
<p><span class="ico"></span>내 검색어는 최대 <em>10</em>개 까지 저장할 수 있습니다.<br />추가하시려면 기존 내 검색어를 지워주세요. <a href="javascript:;" class="btn_clse _close">닫기</a></p>
</div>
</div>
</div>
<div class="_atcmp_answer_template" style="display:none;">
<script type="text/template" id="_atcmp_answer_1"><div class="srch_bx"><a href="javascript:;" class="tx_weight"><span class="results">@1@</span> <span class="s_num">@2@</span></a> <a href="javascript:;" class="tx_dup display_@3@"><em>다른 중복지역 보기</em></a></div></script>
<script type="text/template" id="_atcmp_answer_2"><div class="srch_bx"><a href="javascript:;" class="tx_weight"><span class="results">@1@</span> <span class="s_num">@2@</span></a> <a href="javascript:;" class="tx_dup display_@3@"><em>다른 중복지역 보기</em></a></div></script>
<script type="text/template" id="_atcmp_answer_3"><div class="srch_bx"><a href="javascript:;" class="lotto_bx"><span class="n@2@">@2@</span> <span class="n@3@">@3@</span> <span class="n@4@">@4@</span> <span class="n@5@">@5@</span> <span class="n@6@">@6@</span> <span class="n@7@">@7@</span> <span class="bonus">보너스번호</span> <span class="n@8@">@8@</span> <em class="tx_date">@1@회차 (@9@)</em></a></div></script>
<script type="text/template" id="_atcmp_answer_5"><div class="words srch_elect @close_class@">@contents@<div class="info_elect"><p><span class="_info">@info@</span>정보는 제<em>18</em>대 대통령 선거일까지 노출됩니다.<a href="http://help.naver.com/ops/step2/faq.nhn?faqId=21525" onclick="parent.smartSearch.getViewManager().helpElection(this); window.open(this.href, '_blank', 'width=970, height=600, toolbar=no, scrollbars=no, location=no, status=yes, menubar=no, resizable=no'); return false;"><img src="http://sstatic.naver.net/search/img2/btn_help.gif" width="12" height="12" alt="도움말" /></a></p><a href="#" class="btn" onclick="parent.smartSearch.getViewManager().toggleElection(this); return false;">선거정보 @close@</a></div></div></script>
<script type="text/template" id="_atcmp_answer_6"><div class="srch_bx2"><a href="javascript:;" class="annuity"><span class="lst_an"><span class="bx_an"><em class="first n@2@"><span>@2@</span></em><span class="dc">조</span><em class="n@3@"><span>@3@</span></em><em class="n@4@"><span>@4@</span></em><em class="n@5@"><span>@5@</span></em><em class="n@6@"><span>@6@</span></em><em class="n@7@"><span>@7@</span></em><em class="n@8@"><span>@8@</span></em></span><span class="bx_an"><em class="first n@9@"><span>@9@</span></em><span class="dc">조</span><em class="n@10@"><span>@10@</span></em><em class="n@11@"><span>@11@</span></em><em class="n@12@"><span>@12@</span></em><em class="n@13@"><span>@13@</span></em><em class="n@14@"><span>@14@</span></em><em class="n@15@"><span>@15@</span></em></span></span><em class="tx_date">@1@회차 (@16@)</em></a></div></script>
<script type="text/template" id="_atcmp_answer_7"><div class="srch_bx2"><a href="javascript:;" class="wtime"><span class="stit">@1@</span><span class="time">@2@</span></a></div></script>
<script type="text/template" id="_atcmp_answer_8"><div class="srch_bx2"><a href="javascript:;" class="ntel"><span class="stit">@1@</span><span class="num">@2@</span></a></div></script>
<script type="text/template" id="_atcmp_answer_9"><div class="srch_bx2"><a href="javascript:;" class="excng"><span class="detl"><span class="nation"><img src="http://sstatic.naver.net/keypage/lifesrch/exchange/ico_@8@1.gif" width="19" height="13" alt="" /> @1@</span><span class="num @7@"><strong>@2@</strong>원 <em>@6@ @4@ (@5@%)</em></span></span><em class="tx_date">@3@</em></a></div></script>
<script type="text/template" id="_atcmp_answer_10"><div class="srch_bx2"><a href="javascript:;" class="wtr"><img src="http://static.naver.net/m/weather/2011/im/wt170_@1@.png" width="64" height="51" alt="@4@" class="ico" /> <span class="detl"> <span class="tit">@2@</span> <span class="dsc"> <strong>@4@</strong> <em>@5@<span>℃</span></em> <span>/</span> <em class="tem">@6@<span>℃</span></em></span></span> <em class="tx_date">@3@</em></a></div></script>
<script type="text/template" id="_atcmp_answer_11"><div class="srch_bx2"><a href="javascript:;" class="wtr"><img src="http://static.naver.net/m/weather/2011/im/wt170_@2@.png" width="64" height="51" alt="@3@" class="ico" /> <span class="detl"> <span class="tit">@10@</span> <span class="dsc"> <strong>@3@</strong> <em class="@8@">@4@<span>℃</span></em> <span class="bar">|</span> <span class="rain">@5@ <em>@6@</em>@7@</span></span></span> <em class="tx_date">@1@</em></a></div></script>
<script type="text/template" id="_atcmp_answer_12"><div class="srch_bx2"><a href="javascript:;" class="tx_weight"><span class="tx_sec"><span class="results">@2@</span> <span class="num">@3@</span></span> <em class="tx_date">@1@</em></a></div></script>
<script type="text/template" id="_atcmp_answer_17"><div class="srch_bx"><a href="http://@5@" target="_blank" class="link_bx"><span class="tx_color2">@5@</span>사이트로 바로 이동</a></div></script>
<script type="text/template" id="_atcmp_answer_18"><div class="srch_bx"><a href="javascript:;" class="happy"><span class="ico_bean"></span><em class="stit">행복검색</em><span class="bar"></span><span class="txt">@1@</span></a></div></script>
</div>
</div>
<div id="search_link" class="search_link">
<h3 class="sl_ico"><span class="blind">질문형 검색어</span></h3>
<div id="qu_txt" class="qu_txt">
<script type="text/javascript">var qst_idx=0;</script>
<span><a href="http://search.naver.com/search.naver?sm=top_txt&amp;where=nexearch&amp;ie=utf8&amp;query=%EC%9E%90%EC%9C%A0%EB%A1%9C%20%EA%B0%80%EC%9A%94%EC%A0%9C%20%EA%B2%8C%EC%8A%A4%ED%8A%B8" onclick="clickcr(this, 'txt.search','78002101_0000000C1D9B', '', event, 1);"  title="자유로 가요제 게스트">자유로 가요제 게스트</a></span>
<span class="e"><a href="http://search.naver.com/search.naver?sm=top_txt&amp;where=nexearch&amp;ie=utf8&amp;query=%EC%B2%98%EC%9D%8C%20%EB%A7%8C%EB%82%9C%20%EC%97%AC%EB%8F%99%EC%83%9D" onclick="clickcr(this, 'txt.search','78002101_0000000C1D9C', '', event, 1);"  title="처음 만난 여동생">처음 만난 여동생</a></span>
<span class="e"><a href="http://search.naver.com/search.naver?sm=top_txt&amp;where=nexearch&amp;ie=utf8&amp;query=RS%EB%B0%94%EC%9D%B4%EB%9F%AC%EC%8A%A4%20%EA%B8%89%EC%A6%9D" onclick="clickcr(this, 'txt.search','78002101_0000000C1D9D', '', event, 1);"  title="RS바이러스 급증">RS바이러스 급증</a></span>

</div>
<div class="page">
<a id="qst_prev" href="#" title="이전 검색어" class="pre"><span class="blind">이전 검색어</span></a>
<a id="qst_next" href="#" title="다음 검색어" class="next"><span class="blind">다음 검색어</span></a>
</div>
</div>
<!--NONE-->
</div>
<hr />
<div id="s_menu" class="s_menu">
<dl id="naver_menu" class="nmenu">
<dt class="blind">네이버 메뉴</dt>
<dd class="f"><a href="http://mail.naver.com/" id="svc.mail" class="mn_mail"><span></span>메일</a></dd>
<dd><a href="http://cafe.naver.com/" id="svc.cafe" class="mn_cafe"><span></span>카페</a></dd>
<dd><a href="http://section.blog.naver.com/" id="svc.blog" class="mn_blog"><span></span>블로그</a></dd>
<dd><a href="http://kin.naver.com/" id="svc.kin" class="mn_kin"><span></span>지식iN</a></dd>
<dd><a href="http://shopping.naver.com/" id="svc.shopping" class="mn_shopping"><span></span>쇼핑</a></dd>
</dl>
<dl class="fmenu" id="fmenu">
<dt class="blind">자주 쓰는 메뉴</dt>
<dd class="f"><a href="http://dic.naver.com" onclick="clickcr(this,'svc.defaultservice','dic','',event);" title="사전" class="mn_dic"><span></span>사전</a></dd>
<dd><a href="http://news.naver.com" onclick="clickcr(this,'svc.defaultservice','news','',event);" title="뉴스" class="mn_news"><span></span>뉴스</a></dd>
<dd><a href="http://stock.naver.com" onclick="clickcr(this,'svc.defaultservice','stock','',event);" title="증권" class="mn_stock"><span></span>증권</a></dd>
<dd><a href="http://land.naver.com" onclick="clickcr(this,'svc.defaultservice','land','',event);" title="부동산" class="mn_land"><span></span>부동산</a></dd>
<dd><a href="http://map.naver.com" onclick="clickcr(this,'svc.defaultservice','map','',event);" title="지도" class="mn_map"><span></span>지도</a></dd>
<dd><a href="http://movie.naver.com" onclick="clickcr(this,'svc.defaultservice','movie','',event);" title="영화" class="mn_movie"><span></span>영화</a></dd>
<dd><a href="http://music.naver.com" onclick="clickcr(this,'svc.defaultservice','music','',event);" title="뮤직" class="mn_music"><span></span>뮤직</a></dd>
<dd><a href="http://book.naver.com" onclick="clickcr(this,'svc.defaultservice','book','',event);" title="책" class="mn_book"><span></span>책</a></dd>
<dd><a href="http://comic.naver.com" onclick="clickcr(this,'svc.defaultservice','comic','',event);" title="웹툰" class="mn_comic"><span></span>웹툰</a></dd>

</dl>
<div id="hmenu" class="hmenu">
<div id="new_service" class="hmenu_w">
<dl style="margin-top:0px">
<dt class="blind">신규 서비스</dt>
<dd><img src="http://img.naver.net/static/w9/blank.gif" alt="" width="16" height="16" class="dodolpop" /><a href="http://pop.dodol.com/" class="mn_dodolpop" title="도돌팝"><span></span>도돌팝</a></dd>
<dd><img src="http://img.naver.net/static/w9/blank.gif" alt="" width="16" height="16" class="midnight" /><a href="http://12app.naver.com" class="mn_midnight" title="열두시"><span></span>열두시</a></dd>
<dd><img src="http://img.naver.net/static/w9/blank.gif" alt="" width="16" height="16" class="dodolcover" /><a href="http://cover.dodol.com/" class="mn_dodolcover" title="도돌커버"><span></span>도돌커버</a></dd>
<dd><img src="http://img.naver.net/static/w9/blank.gif" alt="" width="16" height="16" class="interview" /><a href="http://www.interview-us.com/" class="mn_interview" title="인터뷰"><span></span>인터뷰</a></dd>
<dd><img src="http://img.naver.net/static/w9/blank.gif" alt="" width="16" height="16" class="line" /><a href="http://campaign.naver.com/line" class="mn_line" title="라인"><span></span>라인</a></dd>
<dd><img src="http://img.naver.net/static/w9/blank.gif" alt="" width="16" height="16" class="shootingprice" /><a href="http://shootingprice.naver.com/" class="mn_shootingprice" title="슈팅프라이스"><span></span>슈팅프라이스</a></dd>
<dd><img src="http://img.naver.net/static/w9/blank.gif" alt="" width="16" height="16" class="baseball" /><a href="http://sports.news.naver.com/sports/index.nhn?category=baseball" class="mn_baseball" title="프로야구"><span></span>프로야구</a></dd>
<dd><img src="http://img.naver.net/static/w9/blank.gif" alt="도돌팝" width="16" height="16" class="dodolpop" /><a href="http://pop.dodol.com/" class="mn_dodolpop" title="도돌팝"><span></span>도돌팝</a></dd>
</dl>
</div>
<a href="more.html" id="svcmore_h" title="주요서비스 더보기" class="svcm"><span></span>더보기</a>
</div>
</div>
<div class="rankup">
<dl id="ranklist" class="ranklist">
<dt id="rankTitle">실시간 급상승 검색어</dt>
<dd>
<ol style="margin-top:0px;" id="realrank">
<li  value="1" class="up"><a href="http://search.naver.com/search.naver?where=nexearch&amp;query=%EC%B7%A8%EB%93%9D%EC%84%B8&amp;sm=top_lve&amp;ie=utf8" title="취득세">취득세<span class="tx">상승</span><span class="ic"></span><span class="rk">150</span></a></li>
<li  value="2" class="up"><a href="http://search.naver.com/search.naver?where=nexearch&amp;query=%EC%9C%88%EB%8F%84%EC%9A%B08.1&amp;sm=top_lve&amp;ie=utf8" title="윈도우8.1">윈도우8.1<span class="tx">상승</span><span class="ic"></span><span class="rk">114</span></a></li>
<li  value="3" class="up"><a href="http://search.naver.com/search.naver?where=nexearch&amp;query=%EB%B6%80%EC%82%B0%EA%B3%BC%ED%95%99%EA%B8%B0%EC%88%A0%EB%8C%80%ED%95%99%EA%B5%90&amp;sm=top_lve&amp;ie=utf8" title="부산과학기술대학교">부산과학기술대..<span class="tx">상승</span><span class="ic"></span><span class="rk">291</span></a></li>
<li  value="4" class="up"><a href="http://search.naver.com/search.naver?where=nexearch&amp;query=%EC%84%A4%EB%A6%AC&amp;sm=top_lve&amp;ie=utf8" title="설리">설리<span class="tx">상승</span><span class="ic"></span><span class="rk">99</span></a></li>
<li  value="5" class="up"><a href="http://search.naver.com/search.naver?where=nexearch&amp;query=%EC%B5%9C%EC%9E%90&amp;sm=top_lve&amp;ie=utf8" title="최자">최자<span class="tx">상승</span><span class="ic"></span><span class="rk">123</span></a></li>
<li  value="6" class="up"><a href="http://search.naver.com/search.naver?where=nexearch&amp;query=%EC%9C%A0%ED%98%9C%EB%A6%AC&amp;sm=top_lve&amp;ie=utf8" title="유혜리">유혜리<span class="tx">상승</span><span class="ic"></span><span class="rk">378</span></a></li>
<li  value="7" class="up"><a href="http://search.naver.com/search.naver?where=nexearch&amp;query=%EC%95%84%EC%9D%B4%ED%8F%B05s+%EC%98%88%EC%95%BD&amp;sm=top_lve&amp;ie=utf8" title="아이폰5s 예약">아이폰5s 예..<span class="tx">상승</span><span class="ic"></span><span class="rk">75</span></a></li>
<li  value="8" class="up"><a href="http://search.naver.com/search.naver?where=nexearch&amp;query=%EB%8F%99%EC%96%91%EB%AF%B8%EB%9E%98%EB%8C%80%ED%95%99&amp;sm=top_lve&amp;ie=utf8" title="동양미래대학">동양미래대학<span class="tx">상승</span><span class="ic"></span><span class="rk">234</span></a></li>
<li  value="9" class="up"><a href="http://search.naver.com/search.naver?where=nexearch&amp;query=%EC%9E%90%EC%9C%A0%EB%A1%9C+%EA%B0%80%EC%9A%94%EC%A0%9C&amp;sm=top_lve&amp;ie=utf8" title="자유로 가요제">자유로 가요제<span class="tx">상승</span><span class="ic"></span><span class="rk">285</span></a></li>
<li  value="10" class="up"><a href="http://search.naver.com/search.naver?where=nexearch&amp;query=%EC%9E%84%EC%A3%BC%EC%9D%80&amp;sm=top_lve&amp;ie=utf8" title="임주은">임주은<span class="tx">상승</span><span class="ic"></span><span class="rk">168</span></a></li>
<li id="lastrank" value="1" class="up"><a href="http://search.naver.com/search.naver?where=nexearch&amp;query=%EC%B7%A8%EB%93%9D%EC%84%B8&amp;sm=top_lve&amp;ie=utf8" title="취득세">취득세<span class="tx">상승</span><span class="ic"></span><span class="rk">150</span></a></li>
</ol>
<noscript>
<form action="http://search.naver.com/search.naver">
<input type="hidden" name="where" value="nexearch" />
<select name="query">
<option value="취득세">1위: 취득세</option>
<option value="윈도우8.1">2위: 윈도우8.1</option>
<option value="부산과학기술대학교">3위: 부산과학기술대학교</option>
<option value="설리">4위: 설리</option>
<option value="최자">5위: 최자</option>
<option value="유혜리">6위: 유혜리</option>
<option value="아이폰5s 예약">7위: 아이폰5s 예약</option>
<option value="동양미래대학">8위: 동양미래대학</option>
<option value="자유로 가요제">9위: 자유로 가요제</option>
<option value="임주은">10위: 임주은</option>
</select>
<input type="hidden" name="ie" value="utf8" />
<input type="submit" value="검색" />
</form>
</noscript>
</dd>
</dl>
</div>
</div>
</div>
<hr />
<div id="container">
<div id="column_left">
<div id="ad_top"><iframe id="f595100" name="f595100" src="http://nv1.ad.naver.com/adshow?unit=002AG&nrefreshx=0" title="광고" width="595" height="100" marginheight="0" marginwidth="0" scrolling="no" frameborder="0">광고 : <a href="http://nv1.ad.naver.com/adshow?unit=002AG&nrefreshx=0">http://nv1.ad.naver.com/adshow?unit=002AG&nrefreshx=0</a></iframe></div>
<div id="news_cast2" class="cast2">
<div class="newscast_top">
<div class="cast_flash">
<h3><a href="http://news.naver.com/main/list.nhn?mode=LPOD&amp;mid=sec&amp;sid1=001&amp;sid2=140&amp;oid=001&amp;isYeonhapFlash=Y">연합뉴스</a></h3>
<div id="flash_news" class="cast_atc2">
<ul>
<li><a href="http://news.naver.com/main/list.nhn?mode=LPOD&amp;mid=sec&amp;sid1=001&amp;sid2=140&amp;oid=001&amp;isYeonhapFlash=Y&amp;aid=0006543505">"라오스 여객기 사고현장서 한국인 시신 못찾아"</a></li>
</ul>
</div>
</div>
<ul class="cast_link">
<li><a href="http://news.naver.com/" onclick="clickcr(this, 'ncy.newshome', '', '', event)" style="color:#339900"><strong>네이버뉴스</strong></a></li><li>|<a href="http://news.naver.com/main/main.nhn?mode=LSD&amp;mid=shm&amp;sid1=106" onclick="clickcr(this, 'ncy.entertainment', '', '', event)">연예</a></li><li>|<a href="http://sports.news.naver.com/sports/new/main/index.nhn" onclick="clickcr(this, 'ncy.sports', '', '', event)">스포츠</a></li><li>|<a href="http://news.naver.com/main/main.nhn?mode=LSD&amp;mid=shm&amp;sid1=101" onclick="clickcr(this, 'ncy.economy', '', '', event)">경제</a></li><li>|<a href="http://newspaper.naver.com/home/index.nhn" onclick="clickcr(this, 'ncy.special2', '', '', event)"><strong>오늘의신문</strong></a></li>
</ul>
</div>







<div class="cast_cnt">
<div class="cast_cnt_top">
<h2><a id="news_h" name="news_h" class="h_news" href="http://newsstand.naver.com/" target="_blank" onclick="clickcr(this,'nsd.title','','',event);"><span class="ir">뉴스스탠드</span></a></h2>
<a href="http://newsstand.naver.com/config.html" class="newss_set" target="_blank" onclick="clickcr(this,'nsd.set','','',event);"><span class="ir">설정</span></a>
<p class="ss_mes">언론사를 선택하면 MY언론사로 저장됩니다.</p>
<div class="cast_type2">

<div class="nctg">
<a href="#" class="btn_nctg">주요언론사</a>
<ul class="cpress_lst hide">
<li class="on"><a href="#ct1">주요언론사</a></li>
<li><a href="#ct2">종합지</a></li>
<li><a href="#ct3">방송/통신</a></li>
<li><a href="#ct4">경제지</a></li>
<li><a href="#ct5">인터넷</a></li>
<li><a href="#ct6">IT/영자지</a></li>
<li><a href="#ct7">스포츠/연예</a></li>
<li><a href="#ct8">매거진/전문지</a></li>
<li><a href="#ct9">지역지</a></li>
</ul>
</div>

</div>
</div>
<div class="cast2_article">
<div class="newss_lst">
<div class="newss">
<ul>

<li id="NS_057"><a href="http://newsstand.naver.com/057" target="_blank" class="newssa"><img src="http://img.naver.net/static/newsstand/up/2013/0409/nsd163758547.gif" width="77" height="77" alt="MBN" /></a>
</li>
<li id="NS_372"><a href="http://newsstand.naver.com/372" target="_blank" class="newssa"><img src="http://img.naver.net/static/newsstand/up/2013/0409/nsd16110689.gif" width="77" height="77" alt="월스트리트저널" /></a>
</li>
<li id="NS_040"><a href="http://newsstand.naver.com/040" target="_blank" class="newssa"><img src="http://img.naver.net/static/newsstand/up/2013/0108/nsd92244365.gif" width="77" height="77" alt="코리아타임스" /></a>
</li>
<li id="NS_086"><a href="http://newsstand.naver.com/086" target="_blank" class="newssa"><img src="http://img.naver.net/static/newsstand/up/2013/0409/nsd162522149.gif" width="77" height="77" alt="석간 내일신문" /></a>
</li>
<li id="NS_015"><a href="http://newsstand.naver.com/015" target="_blank" class="newssa"><img src="http://img.naver.net/static/newsstand/up/2013/0409/nsd162034351.gif" width="77" height="77" alt="한국경제" /></a>
<a href="http://newspaper.naver.com/viewer/index.nhn?pressCode=0015" class="today" title="오늘의 신문 보기" target="_blank">오늘의 신문 보기</a></li>
<li id="NS_031"><a href="http://newsstand.naver.com/031" target="_blank" class="newssa"><img src="http://img.naver.net/static/newsstand/up/2012/1119/nsd113110902.gif" width="77" height="77" alt="아이뉴스24" /></a>
</li>
<li id="NS_032"><a href="http://newsstand.naver.com/032" target="_blank" class="newssa"><img src="http://img.naver.net/static/newsstand/up/2012/1118/nsd16500796.gif" width="77" height="77" alt="경향신문" /></a>
</li>
<li id="NS_014"><a href="http://newsstand.naver.com/014" target="_blank" class="newssa"><img src="http://img.naver.net/static/newsstand/up/2013/0123/nsd141641302.gif" width="77" height="77" alt="파이낸셜뉴스" /></a>
<a href="http://newspaper.naver.com/viewer/index.nhn?pressCode=0014" class="today" title="오늘의 신문 보기" target="_blank">오늘의 신문 보기</a></li>
<li id="NS_081"><a href="http://newsstand.naver.com/081" target="_blank" class="newssa"><img src="http://img.naver.net/static/newsstand/up/2013/0531/nsd101040456.gif" width="77" height="77" alt="서울신문" /></a>
</li>
<li id="NS_366"><a href="http://newsstand.naver.com/366" target="_blank" class="newssa"><img src="http://img.naver.net/static/newsstand/up/2012/1116/nsd19334215.gif" width="77" height="77" alt="조선비즈" /></a>
</li>
<li id="NS_293"><a href="http://newsstand.naver.com/293" target="_blank" class="newssa"><img src="http://img.naver.net/static/newsstand/up/2012/1118/nsd16353971.gif" width="77" height="77" alt="블로터닷넷" /></a>
</li>
<li id="NS_214"><a href="http://newsstand.naver.com/214" target="_blank" class="newssa"><img src="http://img.naver.net/static/newsstand/up/2013/0531/nsd104440562.gif" width="77" height="77" alt="MBC" /></a>
</li>


</ul>
</div>
</div>
<div class="cpg nss_pg">
<span></span>

<a href="#ns_prev" class="pre" title="이전 뉴스스탠드">이전 뉴스스탠드</a><a href="#ns_next" class="next" title="다음 뉴스스탠드">다음 뉴스스탠드</a>

</div>
</div>
</div>
</div>

<!--ERROR in nvrandom : cannot read the file : center_banner.html.09-->
<!--NONE-->
<div id="open_cast" class="opcast">
<div class="opcast_cnt">
<h2><a href="http://opencast.naver.com/" id="open_h" name="open_h" class="h_open"><span class="ir">오픈캐스트</span></a></h2>
<!-- Opencast Type -->
<ul class="opcast_type">
<li class="on"><a href="#S1">종합</a></li>
<li><a href="#S10">라이프/취미</a></li>
<li><a href="#S20">문화/엔터</a></li>
<li><a href="#S30">IT/비즈/학습</a></li>
<li><a href="#S40">여행</a></li>
<li><a href="#S50">요리</a></li>
<li>
<a href="#S99">MY캐스트</a>
<div class="ly_oc" style="display:none"></div>
</li>
</ul>
<!-- //Opencast Type -->
<!-- Opencast Recommand Type -->
<!-- [D] : 열렸을경우 opcast_rectype_open 추가 -->
<div class="opcast_rectype">
<!-- [D] : span에 상단에서 선택한 분류 삽입 -->
<h3>
<a href="#" id="op_list_on"><span class="blind">전체</span> 캐스트목록</a>
<span class="no_type" style="display:none" id="op_list_off"><span class="blind">전체</span> 캐스트목록<span class="blind">이 없습니다.</span></span>
</h3>
<!-- [D] : display:none,block 으로 제어 -->
<div class="ly_rectype" style="display:none">
<!-- Jindo Scroll : scroll7 -->
<div id="scroll7" class="">
<div class="scrollbar-box">
<div class="scrollbar-content" style="top: 0px;">
<ul class="rectype_lst">
</ul>
</div>
</div>
<div class="scrollbar-v scrollbar-show">
<div class="scrollbar-button-up rollover"></div>
<div class="scrollbar-track rollover" style="height:118px">
<div class="scrollbar-thumb rollover" style="top: 0px; height: 50px;"><img src="http://img.naver.net/static/w9/blank.gif" width="1" height="1" alt="" class="scrollbar-thumb-body" style="height:48px" /></div>
</div>
<div class="scrollbar-button-down rollover"></div>
</div>
</div>
<!-- //Jindo Scroll : scroll7 -->
</div>
</div>
<!-- //Opencast Recommand Type -->
<div id="opencast_contents">
<!-- Opencast Article -->

<div class="opcast_article">
<h4><a href="http://opencast.naver.com/CU399/1822"><span class="blind">감성지수 36.5 -</span> 감성이 성장하는 오늘의 이야기 <em>No.1822</em></a></h4>
<div class="opatc_cnt">
<p class="th">
<a href="http://blog.naver.com/cre_scent_/10177915729" class="th_a" target="_blank">
<img src="http://img.naver.net/thumb.opencast/opencast01/n/a/naver_story/20131017/1759389742269.jpg?type=f10060" width="100" height="60" alt="출연했다 하면 흥행!" title="출연했다 하면 흥행!" />
<span class="th_tit">출연했다 하면 흥행!</span>
</a>
</p>
<ul class="txt_lst">
<li><a href="http://blog.naver.com/rtd217/20197281958" target="_blank">이젠 추억의 게임이 된 스타크래프트의 프로 선수들 이야기</a></li>
<li><a href="http://blog.naver.com/siwan930/150177732394" target="_blank">오늘 밤 응답하라 1994! 미리 예습하는 1994년의 대한민국</a></li>
<li><a href="http://blog.naver.com/dejavu_79/130177923520" target="_blank">걸그룹의 시작! S.E.S.와 원더걸스 등 세대별 걸그룹 비교</a></li>
<li><a href="http://newslibrary.naver.com/viewer/index.nhn?articleId=1991052400209230001&editNo=2&printCount=1&publishDate=1991-05-24&officeId=00020&pageNo=30&printNo=21482&publishType=00020" target="_blank">출연 요청 쇄도에 고민 많던 그녀, 첫 출연과 달라진 점은?</a></li>
</ul>
</div>
<div class="opcast_alert opcast_alert2" style="display:none"></div>
</div>
<div class="opcast_set">
<h3 class="blind">구독설정</h3>
<p class="os_tit">
<a href="http://opencast.naver.com/CU399"><strong title="감성지수 36.5">감성지수 36.5</strong><br /><em>83,455</em>명 구독</a>
</p>
<div class="os_act">
<a href="http://opencast.naver.com/CU399?action=subscribe&from=nhome" title="구독하기" class="btn_subs" onclick="clickcr(this,'occ.subscribe','','',event,1);return OpenCast.subscribe('CU399')">구독하기</a>
</div>
<div class="ly_subs" style="display:none"></div>
</div>

<!-- //Opencast Article -->
<!-- Opencast Paging -->
<div class="cpg opcast_pg">
<span></span>
<a href="#" class="pre" title="이전 오프캐스트">이전 오픈캐스트</a><a href="#" class="next" title="다음 오픈캐스트">다음 오픈캐스트</a>
</div>
<!-- //Opencast Paging -->
</div>
<div class="opcast_alert" style="display:none"></div>
</div>
</div>
<div id="themecast" class="cast3">
<h2 class="blind">주제형캐스트</h2>
<div id="themecast_cate" class="s_cate">
 <span class="tcb_lif"><a href="#tcb_lif"><span class="ir">라이프</span></a></span> <span class="tcb_spo"><a href="#tcb_spo"><span class="ir">스포츠</span></a></span> <span class="tcb_ecn"><a href="#tcb_ecn"><span class="ir">경제</span></a></span> <span class="tcb_msc"><a href="#tcb_msc"><span class="ir">뮤직</span></a></span> <span class="tcb_mov"><a href="#tcb_mov"><span class="ir">영화</span></a></span> <span class="tcb_cmc"><a href="#tcb_cmc"><span class="ir">웹툰</span></a></span> <span class="tcb_fun"><a href="#tcb_fun"><span class="ir">FUN</span></a></span> <span class="tcb_bok"><a href="#tcb_bok"><span class="ir">책</span></a></span> <span class="tcb_ncs"><a href="#tcb_ncs" class="on"><span class="ir">네이버캐스트</span></a></span> <span class="tcb_ato"><a href="#tcb_ato"><span class="ir">자동차/테크</span></a></span> <span class="tcb_gam"><a href="#tcb_gam"><span class="ir">게임</span></a></span> <span class="tcb_pub"><a href="#tcb_pub"><span class="ir">공익/나눔</span></a></span> 
<span class="tcb_end"></span>
</div>
<div id="rolling" class="rolling">
<div class="s_article">
<h3 class="blind">네이버캐스트</h3>

<div class="cast_cnts">
<ul class="tc_thmb">
<li class="f">
<h4>
<a href="http://navercast.naver.com/list.nhn?pc=1&amp;category_id=74&amp;category_type=series" onclick="clickcr(this,'tcb_ncs.title','','',event)">
<img src="http://img.naver.net/static/www/up/2012/0904/mat_153646527.gif" height="12" alt="인물과 역사" />
</a>
</h4>
<p>
<a href="http://navercast.naver.com/contents.nhn?contents_id=38920" onclick="clickcr(this,'tcb_ncs.content','7802D801_000000019BB3','', event);">
<img src="http://img.naver.net/ncc.phinf/20131017_6/jkjkiii_13819940639301xRjr_JPEG/thumbnail.jpg?type=f120_80" width="120" height="80" alt="잊혀진 제국, 히타이트" />
<strong>소리 소문 없이 사라진
<br />오리엔트 최강국
</strong>
<span class="stit">뜻밖의 세계사
</span>
<span class="cont">잊혀진 제국, 히타이트
</span>
<span class="mask_bd"></span>
</a>
</p>
</li>
<li >
<h4>
<a href="http://navercast.naver.com/list.nhn?pc=1&amp;category_id=2&amp;category_type=series" onclick="clickcr(this,'tcb_ncs.title','','',event)">
<img src="http://img.naver.net/static/www/up/2012/0904/mat_153729893.gif" height="12" alt="아름다운 한국" />
</a>
</h4>
<p>
<a href="http://navercast.naver.com/contents.nhn?contents_id=38893" onclick="clickcr(this,'tcb_ncs.content','7802D801_000000019BB4','', event);">
<img src="http://img.naver.net/ncc.phinf/20131017_237/sm841004_13819715228728NBz9_JPEG/thum.jpg?type=f120_80" width="120" height="80" alt="정읍 샘고을 시장" />
<strong>재래시장에서 맛보는
<br />팥죽 한 그릇의 인심
</strong>
<span class="stit">대한민국 구석구석
</span>
<span class="cont">정읍 샘고을 시장
</span>
<span class="mask_bd"></span>
</a>
</p>
</li>
<li >
<h4>
<a href="http://photo.naver.com/today/" onclick="clickcr(this,'tcb_ncs.title','','',event)">
<img src="http://img.naver.net/static/www/up/2012/0904/mat_1664109.gif" height="12" alt="오늘의 포토" />
</a>
</h4>
<p>
<a href="http://photo.naver.com/view/2013092315242883105?param=20131018&amp;postType=photo&amp;view=today" onclick="clickcr(this,'tcb_ncs.content','7802D801_000000019BB5','', event);">
<img src="http://img.naver.net/static/www/up/2013/1011/mat_145630860c.jpg" width="120" height="80" alt="우리 자기가 있어 행복해..." />
<strong>늘 옆에 우리 자기가
<br />있어 행복해...
</strong>
<span class="stit">photo by  돌아이
</span>
<span class="cont">박형근 심사위원 선정작
</span>
<span class="mask_bd"></span>
</a>
</p>
</li>
<li >
<h4>
<a href="http://navercast.naver.com/list.nhn?pc=1&amp;category_id=65&amp;category_type=series" onclick="clickcr(this,'tcb_ncs.title','','',event)">
<img src="http://img.naver.net/static/www/up/2012/0904/mat_154740952.gif" height="12" alt="오늘의 클래식" />
</a>
</h4>
<p>
<a href="http://navercast.naver.com/contents.nhn?contents_id=38659" onclick="clickcr(this,'tcb_ncs.content','7802D801_000000019BB6','', event);">
<img src="http://img.naver.net/ncc.phinf/20131015_190/jkjkiii_1381815738701txXsO_JPEG/thumbnail.jpg?type=f120_80" width="120" height="80" alt="프로코피예프" />
<strong>15년의 공백을 깬
<br />프로코피예프의 작품
</strong>
<span class="stit">명곡 명연주
</span>
<span class="cont">교향곡 제5번
</span>
<span class="mask_bd"></span>
</a>
</p>
</li>
</ul>
</div>

<div class="cast_cnts fl">
<ul class="tc_theme tc_theme2">
<li class="p">
<a href="http://navercast.naver.com/contents.nhn?contents_id=37869" onclick="clickcr(this,'tcb_ncs.content','7802D801_000000019BC4','', event);">
<img src="http://img.naver.net/ncc.phinf/20131017_204/dlunar_1382003010033WQHpA_JPEG/thumb02.jpg?type=f120_80" width="120" height="80" alt="전기 스위치 및 콘센트 교체" />
<strong>적당한 시기에
<br />교체해야 안전해요
</strong>
<span class="cont">전기 스위치 및
<br />콘센트 교체 방법
</span>
<span class="mask_bd"></span>
</a>
</li>
<li class="p">
<a href="http://navercast.naver.com/contents.nhn?contents_id=38758" onclick="clickcr(this,'tcb_ncs.content','7802D801_000000019BC5','', event);">
<img src="http://img.naver.net/static/www/up/2013/1017/mat_18102024c.jpg" width="120" height="80" alt="알제리 라이 음악" />
<strong>이국적인 색채감의
<br />개성 강한 음악
</strong>
<span class="cont">알제리를 대표하는
<br />&#039;라이&#039; 들어보세요
</span>
<span class="mask_bd"></span>
</a>
</li>
</ul>
</div>

<div class="cast_cnts fr">
<ul class="tc_theme tc_theme4" >
<li class="p">
<a href="http://terms.naver.com/entry.nhn?docId=1976854&amp;cid=98&amp;categoryId=105" onclick="clickcr(this,'tcb_ncs.content','7802D801_000000019B96','', event);">
<img src="http://img.naver.net/static/www/up/2013/1017/mat_16326633c.jpg" width="90" height="60" alt="미다스 왕" />
<strong>무엇이든 금으로 변한다,
<br />&#039;황금 손&#039;을 가진 미다스 왕
</strong>
<span class="cont">탐욕의 대명사, 사금의 원조
</span>
<span class="mask_bd"></span>
</a>
</li>
<li><a href="http://terms.naver.com/entry.nhn?docId=1977456&amp;cid=708&amp;categoryId=4892"  onclick="clickcr(this,'tcb_ncs.content','7802D801_000000019B97','', event);">
<span class="cate">[어류]
</span>
<span>&#039;봄 주꾸미&#039;와 &#039;가을 낙지&#039;, 뭐가 다를까?
</span></a></li>
<li><a href="http://terms.naver.com/entry.nhn?docId=930354&amp;cid=515&amp;categoryId=1164"  onclick="clickcr(this,'tcb_ncs.content','7802D801_000000019B98','', event);">
<span class="cate">[금융]
</span>
<span>디폴트 고비 넘긴 미국, &#039;디폴트&#039;란 뭘까
</span></a></li>
<li><a href="http://terms.naver.com/entry.nhn?docId=948705&amp;cid=680&amp;categoryId=1403"  onclick="clickcr(this,'tcb_ncs.content','7802D801_000000019B99','', event);">
<span class="cate">[여행]
</span>
<span>전통 목선 &#039;테우&#039;를 탈 수 있는 쇠소깍
</span></a></li>
<li><a href="http://terms.naver.com/entry.nhn?docId=1540116&amp;cid=3068&amp;categoryId=3068"  onclick="clickcr(this,'tcb_ncs.content','7802D801_000000019B9A','', event);">
<span class="cate">[과학]
</span>
<span>화재 종류에 따라 소화기도 달라진다
</span></a></li>
<li><a href="http://terms.naver.com/entry.nhn?docId=1825754&amp;cid=710&amp;categoryId=710"  onclick="clickcr(this,'tcb_ncs.content','7802D801_000000019B9B','', event);">
<span class="cate">[등산]
</span>
<span>높은 산에서 밥을 잘 지으려면?
</span></a></li>
</ul>
</div>

<div class="go_svc" >
<dl >
<dt>
<img src="http://img.naver.net/static/www/cast_moreview.png" width="62" height="13" alt="주제별 더보기" />
</dt>
<dd class="f">
<a href="http://navercast.naver.com/" onclick="clickcr(this,'tcb_ncs.link','d_navercast','',event)">네이버캐스트홈</a>
</dd>
<dd >
<a href="http://navercast.naver.com/list.nhn?pc=1&amp;category_id=18&amp;category_type=series&amp;list_type=all" onclick="clickcr(this,'tcb_ncs.link','pd_science','',event)">오늘의 과학</a>
</dd>
<dd >
<a href="http://navercast.naver.com/list.nhn?pc=1&amp;category_id=74&amp;category_type=series&amp;list_type=all" onclick="clickcr(this,'tcb_ncs.link','pd_person.history','',event)">인물과 역사</a>
</dd>
<dd >
<a href="http://navercast.naver.com/list.nhn?cid=28&amp;category_id=28" onclick="clickcr(this,'tcb_ncs.link','pd_literature','',event)">오늘의 문학</a>
</dd>
<dd >
<a href="http://terms.naver.com/" onclick="clickcr(this,'tcb_ncs.link','d_terms','',event)">지식백과</a>
</dd>
</dl>
</div>
</div>
</div>
<div class="cast_set_btn"><a href="#" title="선호주제설정"><span></span>선호주제설정</a></div>
<div class="cast_set" style="display:none"></div>
<div id="themecast_page" class="cpg nv_pg">
<span></span>
<a href="#" class="pre" title="이전 주제형캐스트">이전 주제형캐스트</a><a href="#" class="next" title="다음 주제형캐스트">다음 주제형캐스트</a>
</div>
</div>
<div id="svcmore" class="svcmore hide"></div>
</div>
<div id="column_right">

<div id="account">
<h2 class="blind"><a href="#account_h" id="account_h" name="account_h">로그인</a></h2>
<div class="login">
<iframe id="loginframe" name="loginframe" tabindex="4" src="http://static.nid.naver.com/login.nhn?svc=me&amp;url=http%3A%2F%2Fwww.naver.com&amp;t=20120425" title="로그인" width="280" height="99" marginheight="0" marginwidth="0" scrolling="no" frameborder="0">로그인: <a href="http://static.nid.naver.com/loginbox.nhn">http://static.nid.naver.com/loginbox.nhn</a></iframe>
</div>

</div>


<div id="ie55" style="display:none;"></div>
<div id="ad_branding_hide"></div>
<div id="time_square">
<h2 class="blind"><a href="#time_h" id="time_h" name="time_h">타임스퀘어</a></h2>

<div class="tsq">
<h3 class="tsq_h">투데이</h3>
<div class="tsq_status">
<a href="http://calendar.naver.com" class="date" onclick="clickcr(this,'squ.date','','',event);" title="캘린더이동"><em>10.18.</em>(금)</a>
<span class="bar">|</span>
<a href="http://tvguide.naver.com" class="qlink">TV편성</a>
</div>
<div id="ws_tsq" class="tsq_slide">
<h4 class="blind">뉴스/이슈</h4>
<div class="tsq_news_wrap">
<ul class="tsq_list">
<li>
<a href="http://newspaper.naver.com/home/index.nhn" onclick="clickcr(this, 'squ.theme','78005501_0000000C16AB', '', event)"  class="tit">신문1면</a>
<a href="http://newspaper.naver.com/?articleId=2013101800080001001" onclick="clickcr(this, 'squ.text','78005501_0000000C16AA', '', event)"  title="세종시·혁신도시 전매제한 1년→3년">세종시·혁신도시 전매제한 1년→3년</a>
</li>
<li>
<a href="http://news.naver.com/main/hotissue/sectionList.nhn?mid=hot&amp;sid1=110&amp;cid=933879" onclick="clickcr(this, 'squ.theme','78005501_0000000C16AF', '', event)"  class="tit">학습</a>
<a href="http://news.naver.com/main/hotissue/sectionList.nhn?mid=hot&amp;sid1=110&amp;cid=933879" onclick="clickcr(this, 'squ.text','78005501_0000000C16AE', '', event)"  title="영어로 듣는 뉴스">영어로 듣는 뉴스</a>
<span class="bar">|</span>
<a href="http://news.naver.com/main/hotissue/sectionList.nhn?mid=hot&amp;sid1=110&amp;gid=934267" onclick="clickcr(this, 'squ.text','78005501_0000000C16B0', '', event)"  title="주간 시사상식">주간 시사상식</a>
</li>
<li>
<a href="http://sports.news.naver.com" onclick="clickcr(this, 'squ.theme','78005501_0000000C16AD', '', event)"  class="tit">스포츠</a>
<a href="http://sports.news.naver.com/sports/index.nhn?category=worldbaseball" onclick="clickcr(this, 'squ.text','78005501_0000000C16AC', '', event)"  title="[TV중계] 보스턴 vs 디트로이트"><strong>[TV중계] 보스턴 vs 디트로이트</strong></a>
</li><!-- EMPTY --></ul>
<dl class="tsq_finan">
<dt><a href="http://finance.naver.com/" class="tit" onclick="clickcr(this,'stk.stock','','',event)">증시</a></dt>
<dd class="finan">
<a href="http://finance.naver.com/sise/sise_index.nhn?code=KOSPI" onclick="clickcr(this,'stk.kospi','','',event);">
코스피
<strong class="val">2043.69</strong>
<span class="up">
<span class="mk">상승</span>
<em class="gap">3.08</em>
</span>
</a>
</dd>
<dd class="finan hide">
<a href="http://finance.naver.com/sise/sise_index.nhn?code=KOSDAQ" onclick="clickcr(this,'stk.kosdaq','','',event);">
코스닥
<strong class="val">524.37</strong>
<span class="up">
<span class="mk">상승</span>
<em class="gap">2.85</em>
</span>
</a>
</dd>
<dd class="finan_search">
<fieldset>
<form action="http://finance.naver.com/search/search.nhn" method="get">
<legend>주가검색</legend>
<input type="hidden" name="command" value="main" />
<input type="hidden" name="ref" value="top_search" />
<input type="hidden" name="encoding" value="UTF-8" />
<input type="text" name="query" title="검색어" value="주가" class="input_finan" onfocus="TS.FinanInput.onFocus();"><button type="submit" class="btn_finan" onclick="clickcr(this,'stk.reference','','',event);TS.FinanInput.onClick();return false;">검색</button>
</form>
</fieldset>
</dd>
</dl>
</div>
</div>
<div class="cpg timesquare_pg">
<span><strong>1</strong>/3</span>
<a href="#" class="pre" title="이전 타임스퀘어">이전 타임스퀘어</a><a href="#" class="next" title="다음 타임스퀘어">다음 타임스퀘어</a>
</div>
<div class="tsq_wg">
<a href="#" class="tsq_wg_open" onclick="clickcr(this,'tsw.open','','',event);TimeSquare.Wiget.open();return false;">생활위젯 레이어 열기</a>
<div class="ly_tsq_wg" style="display:none"></div>
</div>
</div>
</div>
<div id="ad_branding">
<iframe id="f280150" name="f280150" src="http://nv2.ad.naver.com/adshow?unit=002AK&nrefreshx=0" title="광고" width="280" height="150" marginheight="0" marginwidth="0" scrolling="no" frameborder="0">광고 : <a href="http://nv2.ad.naver.com/adshow?unit=002AK&nrefreshx=0">http://nv2.ad.naver.com/adshow?unit=002AK&nrefreshx=0</a></iframe>
</div>
<iframe src="http://castbox.shopping.naver.com/index.nhn" id="shop_cast" class="shop_cast" title="쇼핑캐스트" width="280" height="478" marginheight="0" marginwidth="0" scrolling="no" frameborder="0">쇼핑캐스트 : <a href="http://castbox.shopping.naver.com/index.nhn">http://castbox.shopping.naver.com/index.nhn</a></iframe>

<div id="marketing_v2">
<h2 class="blind"><a href="#marketing_h" id="marketing_h" name="marketing_h">마케팅 센터</a></h2>
<ul>
<li><a href="http://news.naver.com/main/ent/live.nhn?liveId=7" onclick="clickcr(this, 'mob*i.bigbanner','78030F01_0000000C1CA8', '', event)" target="_blank"><img src="http://img.naver.net/static/www/u/2013/1015/nmms_203447113.jpg" width="280" height="197" alt="진짜 서인국이 당신에게 말을 겁니다! 라인 스타채팅 신청하기" /></a></li>
</ul>
</div>

</div>
</div>
<hr />
<div id="footer">
<dl class="notice">
<dt><a href="/NOTICE" class="h_notice"><span class="ir">공지사항</span></a></dt>
<dd><a href="http://www.naver.com/NOTICE/read/1100001014/10000000000028876196" onclick="clickcr(this, 'ntc.notice','78011B01_0000000C0D43', '', event)" >사명 변경에 대해 알려드립니다.</a></dd>

</dl>
<p class="svc_all">
<a href="more.html" id="ntc.svcmap" class="h_site"><span class="ir">서비스 전체보기</span></a>
</p>
<dl class="policy">
<dt class="blind">네이버 정책 및 약관</dt>
<dd class="f"><a href="http://www.nhncorp.com/" target="_blank" id="plc.intronhn">회사소개</a></dd>
<dd><a href="http://mktg.naver.com/marketing_center.html" id="plc.adinfo">광고</a></dd>
<dd><a href="https://submit.naver.com/" id="plc.search">검색등록</a></dd>
<dd><a href="http://www.nhncorp.com/proposal/guide.nhn" target="_blank" id="plc.contact">제휴제안</a></dd>
<dd><a href="rules/service.html" id="plc.service">이용약관</a></dd>
<dd><a href="rules/privacy.html" id="plc.privacy"><strong>개인정보취급방침</strong></a></dd>
<dd><a href="rules/youthpolicy.html" id="plc.youth">청소년보호정책</a></dd>
<dd><a href="rules/spamcheck.html" id="plc.policy">네이버 정책</a></dd>
<dd><a href="http://help.naver.com/main.jsp" id="plc.helpcenter">고객센터</a></dd>
</dl>
<address>&copy; <strong><a href="http://www.nhncorp.com/" target="_blank">NAVER Corp.</a></strong></address>

</div>
</div>
<div id="dim" style="display:none;"></div>
<script type="text/javascript">
//<![CDATA[
function stripOutCommentBlock(str) {
return str.replace(/\/\*/, '').replace(/\*\//, '').replace(/var(.+)=/gi , '$1=');
}
function loadModule(id) {
var codeElement = document.getElementById(id),
code = codeElement.innerHTML;
eval(stripOutCommentBlock(code));
}
var isOnload = false;
var ntop1 = "/js/c/ntop1_20131017.min.js";
var ntop2 = "/js/c/ntop2_20130828.min.js";
var ntop3 = "/js/c/ntop3_20131010.min.js?2";
DLScript.loadWS("/js/c/jindo.all.2013030601.min.js");
DLScript.loadWS(ntop1); DLScript.loadWS(ntop2); DLScript.loadWS(ntop3);
function loadJS() {
if(!isOnload) {
isOnload = true;
ready1();
ready2();
ready3();
}
}
function dlerr(msg,id) {
if(id){var q=DLScript.quSXI[id];var s=(q)?q.response:"";var l=s.length;var msg="data : "+s.substring(l-30)+"("+l+")";}
JEagleEyeClient.sendError("[DL] "+msg+" retry",{message: msg});
}
function ready1() {
if(typeof CommonFn == 'undefined') {
DLScript.loadXI(ntop1,0130,run1,true); dlerr("ready1");
} else { run1(); }
}
function run1() {
var ckeys = $Cookie().keys();
for(var i=0;i<ckeys.length;i++) {
var re = new RegExp("mp_[a-zA-Z0-9_-]+_mixpanel");
if(re.test(ckeys[i])) { $Cookie().remove(ckeys[i],"naver.com"); JEagleEyeClient.sendError("[mixpanel] " + ckeys[i]);}
}
CommonFn.init();
NMS._onWindowLoad();
newSmartSearch();
}
function ready2() {
if(typeof NewsStand == 'undefined') {
DLScript.loadXI(ntop2,0130,run2,true); dlerr("ready2");
} else { run2(); }
var coin = $$.getSingle('.mn_coin');
if (coin) {
coin.href = 'https://bill.naver.com/pay/index.nhn';
}
var bill = $$.getSingle('.mn_bill');
if (bill) {
bill.href = 'https://bill.naver.com/pay/index.nhn';
}
}
function run2() {
RealTimeRank.init();
ServiceMenu.init(CommonFn.BaseURL);
NewsStand.init(myNewsInfo, myNewsStand);
NewsCast.FlashNewsRoll.init("flash_news", quickNews);
}
//]]>
</script>
<script type="text/javascript">
//<![CDATA[

function ready3() {
if(typeof OpenCast == 'undefined') {
DLScript.loadXI(ntop3,0130,run3,true);
dlerr("ready3");
} else { run3(); }
}
function run3() {
HomePageSet.init();
Question.init(qst_idx);

var sUserMenuList=""; 

$Cookie().remove('cc_menu',"naver.com");$Cookie().remove('cc_page');

OpenCast.init();
Themecast.init(themecast_menu);
AdMobile.init();
TimeSquare.init();
}
window.onload = loadJS;
setTimeout(loadJS,3000);
//]]>
</script>
<script id="newsLazy" type="text/javascript">
//<![CDATA[

var myNewsInfo="" ; var ncast = "(none)"; 

var myNewsStand = ""; 

var newspaperUrl = "newspaper.naver.com";
var newsStandUrl = "newsstand.naver.com";
var userInfoUrl  = "userinfo.www.naver.com";
var opencastUrl  = "opencast.naver.com";
var opencastNTopUrl = "navertop.opencast.naver.com";

try { quickNews = { "M": [ ], "N": [ ["\"라오스 여객기 사고현장서 한국인 시신 못찾아\"","http://news.naver.com/main/list.nhn?mode=LPOD&amp;mid=sec&amp;sid1=001&amp;sid2=140&amp;oid=001&amp;isYeonhapFlash=Y&amp;aid=0006543505"], ["日 총무상 야스쿠니 참배…초당파 의원 159명도","http://news.naver.com/main/list.nhn?mode=LPOD&amp;mid=sec&amp;sid1=001&amp;sid2=140&amp;oid=001&amp;isYeonhapFlash=Y&amp;aid=0006543834"], ["\"美업체 시험통과시 신고리3호기 내년말 준공\"","http://news.naver.com/main/list.nhn?mode=LPOD&amp;mid=sec&amp;sid1=001&amp;sid2=140&amp;oid=001&amp;isYeonhapFlash=Y&amp;aid=0006543712"], ["'재판 결과에 불만' 서울고법 현판에 인분 칠","http://news.naver.com/main/list.nhn?mode=LPOD&amp;mid=sec&amp;sid1=001&amp;sid2=140&amp;oid=001&amp;isYeonhapFlash=Y&amp;aid=0006543785"], ["전국체전 '역동적 도시' 인천서 개막","http://news.naver.com/main/list.nhn?mode=LPOD&amp;mid=sec&amp;sid1=001&amp;sid2=140&amp;oid=001&amp;isYeonhapFlash=Y&amp;aid=0006543718"], ["\"후쿠시마원전 주변 지하수 방사성농도 급상승\"","http://news.naver.com/main/list.nhn?mode=LPOD&amp;mid=sec&amp;sid1=001&amp;sid2=140&amp;oid=001&amp;isYeonhapFlash=Y&amp;aid=0006543598"], ["비수도권 외국인 직접투자 3년만에 '반토막'","http://news.naver.com/main/list.nhn?mode=LPOD&amp;mid=sec&amp;sid1=001&amp;sid2=140&amp;oid=001&amp;isYeonhapFlash=Y&amp;aid=0006543630"], ["\"일본역사교과서 오류 시정사업 부실…성과 전무\"","http://news.naver.com/main/list.nhn?mode=LPOD&amp;mid=sec&amp;sid1=001&amp;sid2=140&amp;oid=001&amp;isYeonhapFlash=Y&amp;aid=0006543563"], ["국감 닷새째…동양사태·역사왜곡 공방","http://news.naver.com/main/list.nhn?mode=LPOD&amp;mid=sec&amp;sid1=001&amp;sid2=140&amp;oid=001&amp;isYeonhapFlash=Y&amp;aid=0006543536"], ["美국무부 \"케네스 배 가족 정기접촉..전화회의도\"","http://news.naver.com/main/list.nhn?mode=LPOD&amp;mid=sec&amp;sid1=001&amp;sid2=140&amp;oid=001&amp;isYeonhapFlash=Y&amp;aid=0006543534"] ] };  } catch (e) { LogError("[JSON] quickNews : " + e.description); }
//]]>
</script>
<script id="timesquareLazy" type="text/javascript">
//<![CDATA[
try { tsNormal = {"data": [{"type": "N","shortcut":{"name":"TV편성", "url":"http://tvguide.naver.com"}, "html": "<h4 class='blind'>뉴스/이슈</h4><div class='tsq_news_wrap'><ul class='tsq_list'><li><a href=&quot;http://newspaper.naver.com/home/index.nhn&quot; onclick=&quot;clickcr(this, 'squ.theme','78005501_0000000C16AB', '', event)&quot;  class='tit'>신문1면</a> <a href=&quot;http://newspaper.naver.com/?articleId=2013101800080001001&quot; onclick=&quot;clickcr(this, 'squ.text','78005501_0000000C16AA', '', event)&quot; >세종시·혁신도시 전매제한 1년→3년</a> </li><li><a href=&quot;http://news.naver.com/main/hotissue/sectionList.nhn?mid=hot&amp;sid1=110&amp;cid=933879&quot; onclick=&quot;clickcr(this, 'squ.theme','78005501_0000000C16AF', '', event)&quot;  class='tit'>학습</a> <a href=&quot;http://news.naver.com/main/hotissue/sectionList.nhn?mid=hot&amp;sid1=110&amp;cid=933879&quot; onclick=&quot;clickcr(this, 'squ.text','78005501_0000000C16AE', '', event)&quot; >영어로 듣는 뉴스</a> <span class='bar'>|</span> <a href=&quot;http://news.naver.com/main/hotissue/sectionList.nhn?mid=hot&amp;sid1=110&amp;gid=934267&quot; onclick=&quot;clickcr(this, 'squ.text','78005501_0000000C16B0', '', event)&quot; >주간 시사상식</a> </li><li><a href=&quot;http://sports.news.naver.com&quot; onclick=&quot;clickcr(this, 'squ.theme','78005501_0000000C16AD', '', event)&quot;  class='tit'>스포츠</a> <a href=&quot;http://sports.news.naver.com/sports/index.nhn?category=worldbaseball&quot; onclick=&quot;clickcr(this, 'squ.text','78005501_0000000C16AC', '', event)&quot; ><strong>[TV중계] 보스턴 vs 디트로이트</strong></a> </li></ul></div>"},{"type": "L","shortcut":{"name":"날씨", "url":"http://weather.naver.com/"}, "html": "<h4 class='blind'>생활</h4><div class='tsq_life_wrap'><div class='tsq_weather'></div><ul class='tsq_list'><li><a href=&quot;http://weather.naver.com/&quot; onclick=&quot;clickcr(this, 'squ.theme','78005501_0000000C167E', '', event)&quot;  class='tit'>날씨</a> <a href=&quot;http://search.naver.com/search.naver?where=nexearch&amp;query=%EC%98%A4%EB%8A%98%EB%82%A0%EC%94%A8&amp;sm=top_tsi&quot; onclick=&quot;clickcr(this, 'squ.text','78005501_0000000C167E', '', event)&quot; >낮부터 추위 풀려, 주말 선선</a> <span class='bar'>|</span> <a href=&quot;http://search.naver.com/search.naver?where=nexearch&amp;query=%EC%84%9C%EC%9A%B8+%EB%82%A0%EC%94%A8&amp;sm=top_tsi&quot; onclick=&quot;clickcr(this, 'squ.text','78005501_0000000C1680', '', event)&quot; >지역날씨</a> </li><li><a href=&quot;http://search.naver.com/search.naver?where=nexearch&amp;query=%B6%EC%BA%B0%BF%EE%BC%BC&amp;sm=top_tsi&quot; onclick=&quot;clickcr(this, 'squ.theme','78005501_0000000C1681', '', event)&quot;  class='tit'>운세</a> <a href=&quot;http://search.naver.com/search.naver?where=nexearch&amp;query=%B6%EC%BA%B0%BF%EE%BC%BC&amp;sm=top_tsi&quot; onclick=&quot;clickcr(this, 'squ.text','78005501_0000000C1681', '', event)&quot; >띠별 운세</a> <span class='bar'>|</span> <a href=&quot;http://search.naver.com/search.naver?where=nexearch&amp;query=%EB%B3%84%EC%9E%90%EB%A6%AC+%EC%9A%B4%EC%84%B8&amp;sm=top_tsi&quot; onclick=&quot;clickcr(this, 'squ.text','78005501_0000000C1683', '', event)&quot; >별자리</a> <span class='bar'>|</span> <a href=&quot;http://search.naver.com/search.naver?where=nexearch&amp;query=%EC%83%9D%EB%85%84%EC%9B%94%EC%9D%BC+%EC%9A%B4%EC%84%B8&amp;sm=top_tsi&quot; onclick=&quot;clickcr(this, 'squ.text','78005501_0000000C1684', '', event)&quot; >생년월일 운세</a> </li></ul></div>"},{"type": "E","shortcut":{"name":"금융", "url":"http://finance.naver.com/"}, "html": "<h4 class='blind'>경제</h4><div class='tsq_eco_wrap'><ul class='tsq_list'><li><a href=&quot;http://finance.naver.com/&quot; onclick=&quot;clickcr(this, 'squ.theme','78005501_0000000C1666', '', event)&quot;  class='tit'>증시</a> <a href=&quot;http://finance.naver.com/&quot; onclick=&quot;clickcr(this, 'squ.text','78005501_0000000C1666', '', event)&quot; >관심은 경기와 실적, 그리고 환율</a> </li><li><a href=&quot;http://land.naver.com&quot; onclick=&quot;clickcr(this, 'squ.theme','78005501_0000000C1668', '', event)&quot;  class='tit'>부동산</a> <a href=&quot;http://land.naver.com/news/?prsco_id=417&amp;arti_id=0000016827&quot; onclick=&quot;clickcr(this, 'squ.text','78005501_0000000C1668', '', event)&quot; >&quot;살아보고 결정하세요&quot; 알고 보니…</a> </li></ul></div>"}]}  } catch (e) { LogError("[JSON] sqare.json.11 : " + e.description); }
//]]>
</script>
<script id="etcCastLazy" type="text/javascript">
//<![CDATA[
try {
themecast_menu = [ "tcb_lif" ,"tcb_spo" ,"tcb_ecn" ,"tcb_msc" ,"tcb_mov" ,"tcb_cmc" ,"tcb_fun" ,"tcb_bok" ,"tcb_ncs" ,"tcb_ato" ,"tcb_gam" ,"tcb_pub" ];
}catch(e) {LogError("[JSON] theme_menu : " + e.description); }
//]]>
</script>

</body>
</html>
