var ddsmoothmenu={mobilemediaquery:"screen and (max-width: 700px)",arrowimages:{down:['downarrowclass','',23],right:['rightarrowclass','',6],left:['leftarrowclass','']},transition:{overtime:300,outtime:300},mobiletransition:200,shadow:false,showhidedelay:{showdelay:100,hidedelay:200},zindexvalue:1000,closeonnonmenuclick:true,closeonmouseout:false,overarrowre:/(?=\.(gif|jpg|jpeg|png|bmp))/i,overarrowaddtofilename:'_over',detecttouch:!!('ontouchstart'in window)||!!('ontouchstart'in document.documentElement)||!!window.ontouchstart||(!!window.Touch&&!!window.Touch.length)||!!window.onmsgesturechange||(window.DocumentTouch&&window.document instanceof window.DocumentTouch),detectwebkit:navigator.userAgent.toLowerCase().indexOf("applewebkit")>-1,detectchrome:navigator.userAgent.toLowerCase().indexOf("chrome")>-1,ismobile:navigator.userAgent.match(/(iPad)|(iPhone)|(iPod)|(android)|(webOS)/i)!=null,idevice:/ipad|iphone/i.test(navigator.userAgent),detectie6:(function(){var ie;return(ie=/MSIE (\d+)/.exec(navigator.userAgent))&&ie[1]<7;})(),detectie9:(function(){var ie;return(ie=/MSIE (\d+)/.exec(navigator.userAgent))&&ie[1]>8;})(),ie9shadow:function(){},css3support:typeof document.documentElement.style.boxShadow==='string'||(!document.all&&document.querySelector),prevobjs:[],menus:null,mobilecontainer:{$main:null,$topulsdiv:null,$toggler:null,hidetimer:null},mobilezindexvalue:2000,executelink:function($,prevobjs,e){var prevscount=prevobjs.length,link=e.target;while(--prevscount>-1){if(prevobjs[prevscount]===this){prevobjs.splice(prevscount,1);if(link.href!==ddsmoothmenu.emptyhash&&link.href&&$(link).is('a')&&!$(link).children('span.'+ddsmoothmenu.arrowimages.down[0]+', span.'+ddsmoothmenu.arrowimages.right[0]).length){if(link.target&&link.target!=='_self'){window.open(link.href,link.target);}else{window.location.href=link.href;}e.stopPropagation();}}}},repositionv:function($subul,$link,newtop,winheight,doctop,method,menutop){menutop=menutop||0;var topinc=0,doclimit=winheight+doctop;$subul.css({top:newtop,display:'block'});while($subul.offset().top<doctop){$subul.css({top:++newtop});++topinc;}if(!topinc&&$link.offset().top+$link.outerHeight()<doclimit&&$subul.data('height')+$subul.offset().top>doclimit){$subul.css({top:doctop-$link.parents('ul').last().offset().top-$link.position().top});}method==='toggle'&&$subul.css({display:'none'});if(newtop!==menutop){$subul.addClass('repositionedv');}return[topinc,newtop];},updateprev:function($,prevobjs,$curobj){var prevscount=prevobjs.length,prevobj,$indexobj=$curobj.parents().add(this);while(--prevscount>-1){if($indexobj.index((prevobj=prevobjs[prevscount]))<0){$(prevobj).trigger('click',[1]);prevobjs.splice(prevscount,1);}}prevobjs.push(this);},subulpreventemptyclose:function(e){var link=e.target;if(link.href===ddsmoothmenu.emptyhash&&$(link).parent('li').find('ul').length<1){e.preventDefault();e.stopPropagation();}},getajaxmenu:function($,setting,nobuild){var $menucontainer=$('#'+setting.contentsource[0]);$menucontainer.html("Loading Menu...");$.ajax({url:setting.contentsource[1],async:true,dataType:'html',error:function(ajaxrequest){setting.menustate="error"
$menucontainer.html('Error fetching content. Server Response: '+ajaxrequest.responseText);},success:function(content){setting.menustate="fetched"
$menucontainer.html(content).find('#'+setting.mainmenuid).css('display','block');!!!nobuild&&ddsmoothmenu.buildmenu($,setting);}});},getajaxmenuMobile:function($,setting){setting.mobilemenustate='fetching'
$.ajax({url:setting.contentsource[1],async:true,dataType:'html',error:function(ajaxrequest){setting.mobilemenustate='error'
alert("Error fetching Ajax content "+ajaxrequest.responseText)},success:function(content){var $ul=$(content).find('>ul')
setting.mobilemenustate='fetched'
ddsmoothmenu.buildmobilemenu($,setting,$ul);}});},closeall:function(e){var smoothmenu=ddsmoothmenu,prevscount;if(!smoothmenu.globaltrackopen){return;}if(e.type==='mouseleave'||((e.type==='click'||e.type==='touchstart')&&smoothmenu.menus.index(e.target)<0)){prevscount=smoothmenu.prevobjs.length;while(--prevscount>-1){$(smoothmenu.prevobjs[prevscount]).trigger('click');smoothmenu.prevobjs.splice(prevscount,1);}}},emptyhash:$('<a href="#"></a>').get(0).href,togglemobile:function(action,duration){if(!this.mobilecontainer.$main)return
clearTimeout(this.mobilecontainer.hidetimer)
var $mobilemenu=this.mobilecontainer.$main
var duration=duration||this.mobiletransition
if($mobilemenu.css('visibility')=='hidden'&&(!action||action=='open')){$mobilemenu.css({left:'-100%',visibility:'visible'}).animate({left:0},duration)
this.mobilecontainer.$toggler.addClass('open')}else if($mobilemenu.css('visibility')=='visible'&&(!action||action!='open')){$mobilemenu.animate({left:'-100%'},duration,function(){this.style.visibility='hidden'})
this.mobilecontainer.$toggler.removeClass('open')}return false},buildmobilemenu:function($,setting,$ul){function flattenuls($mainul,cloneulBol,callback,finalcall){var callback=callback||function(){}
var finalcall=finalcall||function(){}
var $headers=$mainul.find('ul').parent()
var $mainulcopy=cloneulBol?$mainul.clone():$mainul
var $flattened=jQuery(document.createDocumentFragment())
var $headers=$mainulcopy.find('ul').parent()
for(var i=$headers.length-1;i>=0;i--){var $header=$headers.eq(i)
var $subul=$header.find('>ul').prependTo($flattened)
callback(i,$header,$subul)}$mainulcopy.prependTo($flattened)
finalcall($mainulcopy)
return $flattened}var $mainmenu=$('#'+setting.mainmenuid)
var $mainul=$ul
var $topulref=null
var flattened=flattenuls($mainul,false,function(i,$header,$subul){$subul.addClass("submenu")
var $breadcrumb=$('<li class="breadcrumb" />').html('<img src="'+ddsmoothmenu.arrowimages.left[1]+'" class="'+ddsmoothmenu.arrowimages.left[0]+'" />'+$header.text()).prependTo($subul)
$header.find('a:eq(0)').append('<img src="'+ddsmoothmenu.arrowimages.right[1]+'" class="'+ddsmoothmenu.arrowimages.right[0]+'" />')
$header.on('click',function(e){var $headermenu=$(this).parent('ul')
$headermenu=$headermenu.hasClass('submenu')?$headermenu:$headermenu.parent()
$headermenu.css({zIndex:ddsmoothmenu.mobilezindexvalue++,left:0}).animate({left:'-100%'},ddsmoothmenu.mobiletransition)
$subul.css({zIndex:ddsmoothmenu.mobilezindexvalue++,left:'100%'}).animate({left:0},ddsmoothmenu.mobiletransition)
e.stopPropagation()
e.preventDefault()})
$breadcrumb.on('click',function(e){var $headermenu=$header.parent('ul')
$headermenu=$headermenu.hasClass('submenu')?$headermenu:$headermenu.parent()
$headermenu.css({zIndex:ddsmoothmenu.mobilezindexvalue++,left:'-100%'}).animate({left:0},ddsmoothmenu.mobiletransition)
$subul.css({zIndex:ddsmoothmenu.mobilezindexvalue++,left:0}).animate({left:'100%'},ddsmoothmenu.mobiletransition)
e.stopPropagation()
e.preventDefault()})},function($topul){$topulref=$topul})
if(!this.mobilecontainer.$main){var $maincontainer=$('<div class="ddsmoothmobile"><div class="topulsdiv"></div></div>').appendTo(document.body)
$maincontainer.css({zIndex:this.mobilezindexvalue++,left:'-100%',visibility:'hidden'}).on('click',function(e){ddsmoothmenu.mobilecontainer.hidetimer=setTimeout(function(){ddsmoothmenu.togglemobile('close',0)},50)
e.stopPropagation()}).on('touchstart',function(e){e.stopPropagation()})
var $topulsdiv=$maincontainer.find('div.topulsdiv')
var $mobiletoggler=$('#ddsmoothmenu-mobiletoggle').css({display:'block'})
$mobiletoggler.on('click',function(e){ddsmoothmenu.togglemobile()
e.stopPropagation()}).on('touchstart',function(e){e.stopPropagation()})
var hidemobilemenuevent=/(iPad|iPhone|iPod)/g.test(navigator.userAgent)?'touchstart':'click'
$(document.body).on(hidemobilemenuevent,function(e){if(!$maincontainer.is(':animated'))ddsmoothmenu.togglemobile('close',0)})
this.mobilecontainer.$main=$maincontainer
this.mobilecontainer.$topulsdiv=$topulsdiv
this.mobilecontainer.$toggler=$mobiletoggler}else{var $maincontainer=this.mobilecontainer.$main
var $topulsdiv=this.mobilecontainer.$topulsdiv}$topulsdiv.append($topulref).css({zIndex:this.mobilezindexvalue++})
$maincontainer.append(flattened)
setting.mobilemenustate='done'},buildmenu:function($,setting){var detecttruetouch=(this.detecttouch&&!this.detectchrome)||(this.detectchrome&&this.ismobile)
var smoothmenu=ddsmoothmenu;smoothmenu.globaltrackopen=smoothmenu.closeonnonmenuclick||smoothmenu.closeonmouseout;var zsub=0;var prevobjs=smoothmenu.globaltrackopen?smoothmenu.prevobjs:[];var $mainparent=$("#"+setting.mainmenuid).removeClass("ddsmoothmenu ddsmoothmenu-v").addClass(setting.classname||"ddsmoothmenu");setting.repositionv=setting.repositionv!==false;var $mainmenu=$mainparent.find('>ul');var method=(detecttruetouch)?'toggle':setting.method==='toggle'?'toggle':'hover';var $topheaders=$mainmenu.find('>li>ul').parent();var orient=setting.orientation!='v'?'down':'right',$parentshadow=$(document.body);$mainmenu.click(function(e){e.target.href===smoothmenu.emptyhash&&e.preventDefault();});if(method==='toggle'){if(smoothmenu.globaltrackopen){smoothmenu.menus=smoothmenu.menus?smoothmenu.menus.add($mainmenu.add($mainmenu.find('*'))):$mainmenu.add($mainmenu.find('*'));}if(smoothmenu.closeonnonmenuclick){if(orient==='down'){$mainparent.click(function(e){e.stopPropagation();});}$(document).unbind('click.smoothmenu').bind('click.smoothmenu',smoothmenu.closeall);if(smoothmenu.idevice){document.removeEventListener('touchstart',smoothmenu.closeall,false);document.addEventListener('touchstart',smoothmenu.closeall,false);}}else if(setting.closeonnonmenuclick){if(orient==='down'){$mainparent.click(function(e){e.stopPropagation();});}$(document).bind('click.'+setting.mainmenuid,function(e){$mainmenu.find('li>a.selected').parent().trigger('click');});if(smoothmenu.idevice){document.addEventListener('touchstart',function(e){$mainmenu.find('li>a.selected').parent().trigger('click');},false);}}if(smoothmenu.closeonmouseout){var $leaveobj=orient==='down'?$mainparent:$mainmenu;$leaveobj.bind('mouseleave.smoothmenu',smoothmenu.closeall);}else if(setting.closeonmouseout){var $leaveobj=orient==='down'?$mainparent:$mainmenu;$leaveobj.bind('mouseleave.smoothmenu',function(){$mainmenu.find('li>a.selected').parent().trigger('click');});}if(!$('style[title="ddsmoothmenushadowsnone"]').length){$('head').append('<style title="ddsmoothmenushadowsnone" type="text/css">.ddsmoothmenushadowsnone{display:none!important;}</style>');}var shadowstimer;$(window).bind('resize scroll',function(){clearTimeout(shadowstimer);var $selected=$mainmenu.find('li>a.selected').parent(),$shadows=$('.ddshadow').addClass('ddsmoothmenushadowsnone');$selected.eq(0).trigger('click');$selected.trigger('click');if(!window.matchMedia||(window.matchMedia&&!setting.mobilemql.matches))shadowstimer=setTimeout(function(){$shadows.removeClass('ddsmoothmenushadowsnone');},100);});}$topheaders.each(function(){var $curobj=$(this).css({zIndex:(setting.zindexvalue||smoothmenu.zindexvalue)+zsub--});var $subul=$curobj.children('ul:eq(0)').css({display:'block'}).data('timers',{});var $link=$curobj.children("a:eq(0)").css({paddingRight:smoothmenu.arrowimages[orient][2]}).append('<span style="display: block;" class="'+smoothmenu.arrowimages[orient][0]+'"></span>');var dimensions={w:$link.outerWidth(),h:$curobj.innerHeight(),subulw:$subul.outerWidth(),subulh:$subul.outerHeight()};var menutop=orient==='down'?dimensions.h:0;$subul.css({top:menutop});function restore(){$link.removeClass('selected');}method==='toggle'&&$subul.click(smoothmenu.subulpreventemptyclose);$curobj[method](function(e){if(!$curobj.data('headers')){smoothmenu.buildsubheaders($,$subul,$subul.find('>li>ul').parent(),setting,method,prevobjs);$curobj.data('headers',true).find('>ul').each(function(i,ul){var $ul=$(ul);$ul.data('height',$ul.outerHeight());}).css({display:'none',visibility:'visible'});}method==='toggle'&&smoothmenu.updateprev.call(this,$,prevobjs,$curobj);clearTimeout($subul.data('timers').hidetimer);$link.addClass('selected');$subul.data('timers').showtimer=setTimeout(function(){var menuleft=orient==='down'?0:dimensions.w;var menumoved=menuleft,newtop,doctop,winheight,topinc=0;var offsetLeft=$curobj.offset().left
menuleft=(offsetLeft+menuleft+dimensions.subulw>$(window).width())?(orient==='down'?-dimensions.subulw+dimensions.w:-dimensions.w):menuleft;if(orient==='right'&&menuleft<0){var scrollX=window.pageXOffset||(document.documentElement||document.body.parentNode||document.body).scrollLeft
if(offsetLeft-dimensions.subulw<0)menuleft=0}menumoved=menumoved!==menuleft;$subul.css({top:menutop}).removeClass('repositionedv');if(setting.repositionv&&$link.offset().top+menutop+$subul.data('height')>(winheight=$(window).height())+(doctop=$(document).scrollTop())){newtop=(orient==='down'?0:$link.outerHeight())-$subul.data('height');topinc=smoothmenu.repositionv($subul,$link,newtop,winheight,doctop,method,menutop)[0];}$subul.css({left:menuleft,width:dimensions.subulw}).stop(true,true).animate({height:'show',opacity:'show'},smoothmenu.transition.overtime,function(){this.style.removeAttribute&&this.style.removeAttribute('filter');});if(menumoved){$subul.addClass('repositioned');}else{$subul.removeClass('repositioned');}if(setting.shadow){if(!$curobj.data('$shadow')){$curobj.data('$shadow',$('<div></div>').addClass('ddshadow toplevelshadow').prependTo($parentshadow).css({zIndex:$curobj.css('zIndex')}));}smoothmenu.ie9shadow($curobj.data('$shadow'));var offsets=$subul.offset();var shadowleft=offsets.left;var shadowtop=offsets.top;$curobj.data('$shadow').css({overflow:'visible',width:dimensions.subulw,left:shadowleft,top:shadowtop}).stop(true,true).animate({height:dimensions.subulh},smoothmenu.transition.overtime);}},smoothmenu.showhidedelay.showdelay);},function(e,speed){var $shadow=$curobj.data('$shadow');if(method==='hover'){restore();}else{smoothmenu.executelink.call(this,$,prevobjs,e);}clearTimeout($subul.data('timers').showtimer);$subul.data('timers').hidetimer=setTimeout(function(){$subul.stop(true,true).animate({height:'hide',opacity:'hide'},speed||smoothmenu.transition.outtime,function(){method==='toggle'&&restore();});if($shadow){if(!smoothmenu.css3support&&smoothmenu.detectwebkit){$shadow.children('div:eq(0)').css({opacity:0});}$shadow.stop(true,true).animate({height:0},speed||smoothmenu.transition.outtime,function(){if(method==='toggle'){this.style.overflow='hidden';}});}},smoothmenu.showhidedelay.hidedelay);});$subul.css({display:'none'});});},buildsubheaders:function($,$subul,$headers,setting,method,prevobjs){$subul.css('display','block');$headers.each(function(){var smoothmenu=ddsmoothmenu;var $curobj=$(this).css({zIndex:$(this).parent('ul').css('z-index')});var $subul=$curobj.children('ul:eq(0)').css({display:'block'}).data('timers',{}),$parentshadow;method==='toggle'&&$subul.click(smoothmenu.subulpreventemptyclose);var $link=$curobj.children("a:eq(0)").append('<span style="display: block;" class="'+smoothmenu.arrowimages['right'][0]+'"></span>');var dimensions={w:$link.outerWidth(),subulw:$subul.outerWidth(),subulh:$subul.outerHeight()};$subul.css({top:0});function restore(){$link.removeClass('selected');}$curobj[method](function(e){if(!$curobj.data('headers')){smoothmenu.buildsubheaders($,$subul,$subul.find('>li>ul').parent(),setting,method,prevobjs);$curobj.data('headers',true).find('>ul').each(function(i,ul){var $ul=$(ul);$ul.data('height',$ul.height());}).css({display:'none',visibility:'visible'});}method==='toggle'&&smoothmenu.updateprev.call(this,$,prevobjs,$curobj);clearTimeout($subul.data('timers').hidetimer);$link.addClass('selected');$subul.data('timers').showtimer=setTimeout(function(){var menuleft=dimensions.w;var menumoved=menuleft,newtop,doctop,winheight,topinc=0;var offsetLeft=$curobj.offset().left
menuleft=(offsetLeft+menuleft+dimensions.subulw>$(window).width())?-dimensions.w:menuleft;if(menuleft<0){var scrollX=window.pageXOffset||(document.documentElement||document.body.parentNode||document.body).scrollLeft
if(offsetLeft-dimensions.subulw<scrollX)menuleft=0}menumoved=menumoved!==menuleft;$subul.css({top:0}).removeClass('repositionedv');if(setting.repositionv&&$link.offset().top+$subul.data('height')>(winheight=$(window).height())+(doctop=$(document).scrollTop())){newtop=$link.outerHeight()-$subul.data('height');topinc=smoothmenu.repositionv($subul,$link,newtop,winheight,doctop,method);newtop=topinc[1];topinc=topinc[0];}$subul.css({left:menuleft,width:dimensions.subulw}).stop(true,true).animate({height:'show',opacity:'show'},smoothmenu.transition.overtime,function(){this.style.removeAttribute&&this.style.removeAttribute('filter');});if(menumoved){$subul.addClass('repositioned');}else{$subul.removeClass('repositioned');}if(setting.shadow){if(!$curobj.data('$shadow')){$parentshadow=$curobj.parents("li:eq(0)").data('$shadow');$curobj.data('$shadow',$('<div></div>').addClass('ddshadow').prependTo($parentshadow).css({zIndex:$parentshadow.css('z-index')}));}var offsets=$subul.offset();var shadowleft=menuleft;var shadowtop=$curobj.position().top-(newtop?$subul.data('height')-$link.outerHeight()-topinc:0);if(smoothmenu.detectwebkit&&!smoothmenu.css3support){$curobj.data('$shadow').css({opacity:1});}$curobj.data('$shadow').css({overflow:'visible',width:dimensions.subulw,left:shadowleft,top:shadowtop}).stop(true,true).animate({height:dimensions.subulh},smoothmenu.transition.overtime);}},smoothmenu.showhidedelay.showdelay);},function(e,speed){var $shadow=$curobj.data('$shadow');if(method==='hover'){restore();}else{smoothmenu.executelink.call(this,$,prevobjs,e);}clearTimeout($subul.data('timers').showtimer);$subul.data('timers').hidetimer=setTimeout(function(){$subul.stop(true,true).animate({height:'hide',opacity:'hide'},speed||smoothmenu.transition.outtime,function(){method==='toggle'&&restore();});if($shadow){if(!smoothmenu.css3support&&smoothmenu.detectwebkit){$shadow.children('div:eq(0)').css({opacity:0});}$shadow.stop(true,true).animate({height:0},speed||smoothmenu.transition.outtime,function(){if(method==='toggle'){this.style.overflow='hidden';}});}},smoothmenu.showhidedelay.hidedelay);});});},initmenu:function(setting){if(setting.mobilemql.matches){jQuery(function($){var $mainmenu=$('#'+setting.mainmenuid)
$mainmenu.css({display:'none'})
if(!setting.$mainulclone){setting.$mainulclone=$mainmenu.find('>ul').clone()}var mobilemenustate=setting.mobilemenustate
if(setting.contentsource=="markup"&&!mobilemenustate){ddsmoothmenu.buildmobilemenu($,setting,setting.$mainulclone)}else if(setting.contentsource!="markup"&&(!mobilemenustate||mobilemenustate=="error")){ddsmoothmenu.getajaxmenuMobile($,setting)}else{$('#ddsmoothmenu-mobiletoggle').css({display:'block'})}})
return}else{var menustate=setting.menustate
if(menustate&&menustate!="error"){var $mainmenu=$('#'+setting.mainmenuid)
$mainmenu.css({display:'block'})
if(this.mobilecontainer.$main){this.togglemobile('close',0)}$('#ddsmoothmenu-mobiletoggle').css({display:'none'})
return}}if(this.detectie6&&parseFloat(jQuery.fn.jquery)>1.3){this.initmenu=function(setting){if(typeof setting.contentsource=="object"){jQuery(function($){ddsmoothmenu.getajaxmenu($,setting,'nobuild');});}return false;};jQuery('link[href*="ddsmoothmenu"]').attr('disabled',true);jQuery(function($){alert('You Seriously Need to Update Your Browser!\n\nDynamic Drive Smooth Navigational Menu Showing Text Only Menu(s)\n\nDEVELOPER\'s NOTE: This script will run in IE 6 when using jQuery 1.3.2 or less,\nbut not real well.');$('link[href*="ddsmoothmenu"]').attr('disabled',true);});return this.initmenu(setting);}var mainmenuid='#'+setting.mainmenuid,right,down,stylestring=['</style>\n'],stylesleft=setting.arrowswap?4:2;function addstyles(){if(stylesleft){return;}if(typeof setting.customtheme=="object"&&setting.customtheme.length==2){var mainselector=(setting.orientation=="v")?mainmenuid:mainmenuid+', '+mainmenuid;stylestring.push([mainselector,' ul li a {background:',setting.customtheme[0],';}\n',mainmenuid,' ul li a:hover {background:',setting.customtheme[1],';}'].join(''));}stylestring.push('\n<style type="text/css">');stylestring.reverse();jQuery('head').append(stylestring.join('\n'));}if(setting.arrowswap){right=ddsmoothmenu.arrowimages.right[1].replace(ddsmoothmenu.overarrowre,ddsmoothmenu.overarrowaddtofilename);down=ddsmoothmenu.arrowimages.down[1].replace(ddsmoothmenu.overarrowre,ddsmoothmenu.overarrowaddtofilename);jQuery(new Image()).bind('load error',function(e){setting.rightswap=e.type==='load';if(setting.rightswap){stylestring.push([mainmenuid,' ul li a:hover .',ddsmoothmenu.arrowimages.right[0],', ',mainmenuid,' ul li a.selected .',ddsmoothmenu.arrowimages.right[0],' { background-image: url(',this.src,');}'].join(''));}--stylesleft;addstyles();}).attr('src',right);jQuery(new Image()).bind('load error',function(e){setting.downswap=e.type==='load';if(setting.downswap){stylestring.push([mainmenuid,' ul li a:hover .',ddsmoothmenu.arrowimages.down[0],', ',mainmenuid,' ul li a.selected .',ddsmoothmenu.arrowimages.down[0],' { background-image: url(',this.src,');}'].join(''));}--stylesleft;addstyles();}).attr('src',down);}jQuery(new Image()).bind('load error',function(e){if(e.type==='load'){stylestring.push([mainmenuid+' ul li a .',ddsmoothmenu.arrowimages.right[0],' { background: url(',this.src,') no-repeat;width:',this.width,'px;height:',this.height,'px;}'].join(''));}--stylesleft;addstyles();}).attr('src',ddsmoothmenu.arrowimages.right[1]);jQuery(new Image()).bind('load error',function(e){if(e.type==='load'){stylestring.push([mainmenuid+' ul li a .',ddsmoothmenu.arrowimages.down[0],' { background: url(',this.src,') no-repeat;width:',this.width,'px;height:',this.height,'px;}'].join(''));}--stylesleft;addstyles();}).attr('src',ddsmoothmenu.arrowimages.down[1]);setting.shadow=this.detectie6&&(setting.method==='hover'||setting.orientation==='v')?false:setting.shadow||this.shadow;jQuery(document).ready(function($){var $mainmenu=$('#'+setting.mainmenuid)
$mainmenu.css({display:'block'})
if(ddsmoothmenu.mobilecontainer.$main){ddsmoothmenu.togglemobile('close',0)}$('#ddsmoothmenu-mobiletoggle').css({display:'none'})
if(!setting.$mainulclone){setting.$mainulclone=$mainmenu.find('>ul').clone()}if(setting.shadow&&ddsmoothmenu.css3support){$('body').addClass('ddcss3support');}if(typeof setting.contentsource=="object"){ddsmoothmenu.getajaxmenu($,setting);}else{ddsmoothmenu.buildmenu($,setting);}setting.menustate="initialized"});},init:function(setting){setting.mobilemql=(window.matchMedia)?window.matchMedia(this.mobilemediaquery):{matches:false,addListener:function(){}}
this.initmenu(setting)
setting.mobilemql.addListener(function(){ddsmoothmenu.initmenu(setting)})}};if((function($){var clicktogglable=false;try{$('<a href="#"></a>').toggle(function(){},function(){clicktogglable=true;}).trigger('click').trigger('click');}catch(e){}return!clicktogglable;})(jQuery)){(function(){var toggleDisp=jQuery.fn.toggle;jQuery.extend(jQuery.fn,{toggle:function(fn,fn2){if(!jQuery.isFunction(fn)||!jQuery.isFunction(fn2)){return toggleDisp.apply(this,arguments);}var args=arguments,guid=fn.guid||jQuery.guid++,i=0,toggler=function(event){var lastToggle=(jQuery._data(this,"lastToggle"+fn.guid)||0)%i;jQuery._data(this,"lastToggle"+fn.guid,lastToggle+1);event.preventDefault();return args[lastToggle].apply(this,arguments)||false;};toggler.guid=guid;while(i<args.length){args[i++].guid=guid;}return this.click(toggler);}});})();}if(ddsmoothmenu.detectie9){(function($){function incdec(v,how){return parseInt(v)+how+'px';}ddsmoothmenu.ie9shadow=function($elem){var getter=document.defaultView.getComputedStyle($elem.get(0),null),curshadow=getter.getPropertyValue('box-shadow').split(' '),curmargin={top:getter.getPropertyValue('margin-top'),left:getter.getPropertyValue('margin-left')};$('head').append(['\n<style title="ie9shadow" type="text/css">','.ddcss3support .ddshadow {','\tbox-shadow: '+incdec(curshadow[0],1)+' '+incdec(curshadow[1],1)+' '+curshadow[2]+' '+curshadow[3]+';','}','.ddcss3support .ddshadow.toplevelshadow {','\topacity: '+($('.ddcss3support .ddshadow').css('opacity')-0.1)+';','\tmargin-top: '+incdec(curmargin.top,-1)+';','\tmargin-left: '+incdec(curmargin.left,-1)+';','}','</style>\n'].join('\n'));ddsmoothmenu.ie9shadow=function(){};};var jqheight=$.fn.height,jqwidth=$.fn.width;$.extend($.fn,{height:function(){var obj=this.get(0);if(this.length<1||arguments.length||obj===window||obj===document){return jqheight.apply(this,arguments);}return parseFloat(document.defaultView.getComputedStyle(obj,null).getPropertyValue('height'));},innerHeight:function(){if(this.length<1){return null;}var val=this.height(),obj=this.get(0),getter=document.defaultView.getComputedStyle(obj,null);val+=parseInt(getter.getPropertyValue('padding-top'));val+=parseInt(getter.getPropertyValue('padding-bottom'));return val;},outerHeight:function(bool){if(this.length<1){return null;}var val=this.innerHeight(),obj=this.get(0),getter=document.defaultView.getComputedStyle(obj,null);val+=parseInt(getter.getPropertyValue('border-top-width'));val+=parseInt(getter.getPropertyValue('border-bottom-width'));if(bool){val+=parseInt(getter.getPropertyValue('margin-top'));val+=parseInt(getter.getPropertyValue('margin-bottom'));}return val;},width:function(){var obj=this.get(0);if(this.length<1||arguments.length||obj===window||obj===document){return jqwidth.apply(this,arguments);}return parseFloat(document.defaultView.getComputedStyle(obj,null).getPropertyValue('width'));},innerWidth:function(){if(this.length<1){return null;}var val=this.width(),obj=this.get(0),getter=document.defaultView.getComputedStyle(obj,null);val+=parseInt(getter.getPropertyValue('padding-right'));val+=parseInt(getter.getPropertyValue('padding-left'));return val;},outerWidth:function(bool){if(this.length<1){return null;}var val=this.innerWidth(),obj=this.get(0),getter=document.defaultView.getComputedStyle(obj,null);val+=parseInt(getter.getPropertyValue('border-right-width'));val+=parseInt(getter.getPropertyValue('border-left-width'));if(bool){val+=parseInt(getter.getPropertyValue('margin-right'));val+=parseInt(getter.getPropertyValue('margin-left'));}return val;}});})(jQuery);}