// JavaScript Document


function playFlash(filename,width,height,id,trans,lock) {
	document.write('<object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://fpdownload.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=8,0,0,0" width="'+width+'" height="'+height+'" id="'+id+'" align="middle"><param name="allowScriptAccess" value="always" /><param name="movie" value="'+filename+'" /><param name="quality" value="high" /><param name="bgcolor" value="#ffffff" /><param name="wmode" value="'+trans+'" /><param name="menu" value="'+lock+'" /><embed src="'+filename+'" quality="high" bgcolor="#ffffff" width="'+width+'" height="'+height+'" name="'+id+'" align="middle" allowScriptAccess="always" type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer" /></object>')
}



<!--
function MM_swapImgRestore() { //v3.0
  var i,x,a=document.MM_sr; for(i=0;a&&i<a.length&&(x=a[i])&&x.oSrc;i++) x.src=x.oSrc;
}

function MM_preloadImages() { //v3.0
  var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
    var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
    if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
}

function MM_findObj(n, d) { //v4.0
  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
    d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
  if(!x && document.getElementById) x=document.getElementById(n); return x;
}

function MM_swapImage() { //v3.0
  var i,j=0,x,a=MM_swapImage.arguments; document.MM_sr=new Array; for(i=0;i<(a.length-2);i+=3)
   if ((x=MM_findObj(a[i]))!=null){document.MM_sr[j++]=x; if(!x.oSrc) x.oSrc=x.src; x.src=a[i+2];}
}
//-->




function FlashObject(swf, width, height, bgcolor, id, flashvars)
{
    var strFlashTag = new String();
    
    if (navigator.appName.indexOf("Microsoft") != -1)
    {
        strFlashTag += '<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" ';
        strFlashTag += 'codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=version=8,0,0,0" ';
        strFlashTag += 'id="' + id + '" width="' + width + '" height="' + height + '">';
        strFlashTag += '<param name="movie" value="' + swf + '"/>';
        
        if(flashvars != null) {strFlashTag += '<param name="flashvars" value="' + flashvars + '"/>'};
        strFlashTag += '<param name="quality" value="best"/>';
        //strFlashTag += '<param name="bgcolor" value="' + bgcolor + '"/>';
        strFlashTag += '<param name="menu" value="false"/>';
        strFlashTag += '<param name="salign" value="LT"/>';
        strFlashTag += '<param name="scale" value="noscale"/>';
        strFlashTag += '<param name="wmode" value="transparent"/>';
        strFlashTag += '<param name="allowScriptAccess" value="always"/>';
        strFlashTag += '</object>';
    }
    else
    {
        strFlashTag += '<embed src="' + swf + '" ';
        strFlashTag += 'quality="best" ';
        strFlashTag += 'bgcolor="' + bgcolor + '" ';
        strFlashTag += 'width="' + width + '" ';
        strFlashTag += 'height="' + height + '" ';
        strFlashTag += 'menu="false" ';
        strFlashTag += 'scale="noscale" ';
         strFlashTag += 'id="' + id + '" ';
        strFlashTag += 'salign="LT" ';
        strFlashTag += 'wmode="transparent" ';
        strFlashTag += 'allowScriptAccess="sameDomain" ';
        if(flashvars != null) {strFlashTag += 'flashvars="' + flashvars + '" '};
        strFlashTag += 'type="application/x-shockwave-flash" ';
        strFlashTag += 'pluginspage="http://www.macromedia.com/go/getflashplayer">';
        strFlashTag += '</embed>';
    }

 document.write(strFlashTag);
}



 function tgl(v){ //타겟의 id넘버를 받아서, 레이어를 토글하는 함수
  var a=document.getElementById('d'+v).style.display; //레이어의 display 속성
  document.getElementById('d'+v).style.display=(a=='none')?'block':'none'; //속성이 보임이면 감춤, 감춤이면 보임으로 레이어의 display 속성을 토글
 }



<!-- Begin
browserName = navigator.appName;
browserVer = parseInt(navigator.appVersion);

ns3up = (browserName == "Netscape" && browserVer >= 3);
ie4up = (browserName.indexOf("Microsoft") >= 0 && browserVer >= 4);

function doPic(imgName) {
if (ns3up || ie4up) {
imgOn = ("" + imgName);
document.mainpic.src = imgOn;
   }
}
//  End -->

<!--
function div(i)
{
	if(i=="1")
	{
		document.getElementById("view1").style.display="block";
		document.getElementById("view2").style.display ="none";
		document.getElementById("view3").style.display="none";
		document.getElementById("view4").style.display ="none";
		document.getElementById("view5").style.display ="none";
		document.getElementById("view6").style.display ="none";
		document.getElementById("view7").style.display ="none";
		document.getElementById("view8").style.display ="none";
		document.getElementById("view9").style.display ="none";
	}
	else if(i=="2")
	{
		document.getElementById("view1").style.display="none";
		document.getElementById("view2").style.display ="block";
		document.getElementById("view3").style.display="none";
		document.getElementById("view4").style.display ="none";
		document.getElementById("view5").style.display ="none";
		document.getElementById("view6").style.display ="none";
		document.getElementById("view7").style.display ="none";
		document.getElementById("view8").style.display ="none";
		document.getElementById("view9").style.display ="none";
	}
	else if(i=="3")
	{
		document.getElementById("view1").style.display="none";
		document.getElementById("view2").style.display ="none";
		document.getElementById("view3").style.display="block";
		document.getElementById("view4").style.display ="none";
		document.getElementById("view5").style.display ="none";
		document.getElementById("view6").style.display ="none";
		document.getElementById("view7").style.display ="none";
		document.getElementById("view8").style.display ="none";
		document.getElementById("view9").style.display ="none";
	}
	else if(i=="4")
	{
		document.getElementById("view1").style.display="none";
		document.getElementById("view2").style.display ="none";
		document.getElementById("view3").style.display="none";
		document.getElementById("view4").style.display ="block";
		document.getElementById("view5").style.display ="none";
		document.getElementById("view6").style.display ="none";
		document.getElementById("view7").style.display ="none";
		document.getElementById("view8").style.display ="none";
		document.getElementById("view9").style.display ="none";
	}
	else if(i=="5")
	{
		document.getElementById("view1").style.display="none";
		document.getElementById("view2").style.display ="none";
		document.getElementById("view3").style.display="none";
		document.getElementById("view4").style.display ="none";
		document.getElementById("view5").style.display ="block";
		document.getElementById("view6").style.display ="none";
		document.getElementById("view7").style.display ="none";
		document.getElementById("view8").style.display ="none";
		document.getElementById("view9").style.display ="none";
	}
	else if(i=="6")
	{
		document.getElementById("view1").style.display="none";
		document.getElementById("view2").style.display ="none";
		document.getElementById("view3").style.display="none";
		document.getElementById("view4").style.display ="none";
		document.getElementById("view5").style.display ="none";
		document.getElementById("view6").style.display ="block";
		document.getElementById("view7").style.display ="none";
		document.getElementById("view8").style.display ="none";
		document.getElementById("view9").style.display ="none";
	}
	else if(i=="7")
	{
		document.getElementById("view1").style.display="none";
		document.getElementById("view2").style.display ="none";
		document.getElementById("view3").style.display="none";
		document.getElementById("view4").style.display ="none";
		document.getElementById("view5").style.display ="none";
		document.getElementById("view6").style.display ="none";
		document.getElementById("view7").style.display ="block";
		document.getElementById("view8").style.display ="none";
		document.getElementById("view9").style.display ="none";
	}
	else if(i=="8")
	{
		document.getElementById("view1").style.display="none";
		document.getElementById("view2").style.display ="none";
		document.getElementById("view3").style.display="none";
		document.getElementById("view4").style.display ="none";
		document.getElementById("view5").style.display ="none";
		document.getElementById("view6").style.display ="none";
		document.getElementById("view7").style.display ="none";
		document.getElementById("view8").style.display ="block";
		document.getElementById("view9").style.display ="none";
	}
	else if(i=="9")
	{
		document.getElementById("view1").style.display="none";
		document.getElementById("view2").style.display ="none";
		document.getElementById("view3").style.display="none";
		document.getElementById("view4").style.display ="none";
		document.getElementById("view5").style.display ="none";
		document.getElementById("view6").style.display ="none";
		document.getElementById("view7").style.display ="none";
		document.getElementById("view8").style.display ="none";
		document.getElementById("view9").style.display ="block";
	}
}
//-->

<!--          
        function clickblock(num)  
        {  
                for (i=1;i<5;i++)  {      //5라는 수는 줄수보다 1 더한값을 적어주세요//
                 var left_menu=eval("block"+i+".style");                                                    
                 if (num==i) {  
                  if (left_menu.display=="block") { 
       left_menu.display="none";   
                  }else{  
                   left_menu.display="block";
                  }  
                 }else {
      left_menu.display="none";
     }  
                }  
        }  
//-->  

<!--
var win=null;
function NewWindow(mypage,myname,w,h,scroll,pos)
{
if(pos=="random")
{LeftPosition=(screen.width)?Math.floor(Math.random()*(screen.width-w)):100;TopPosition=(screen.height)?Math.floor(Math.random()*((screen.height-h)-75)):100;
}
if(pos=="center")
{LeftPosition=(screen.width)?(screen.width-w)/2:100;TopPosition=(screen.height)?(screen.height-h)/2:100;}
else if((pos!="center" && pos!="random") || pos==null){LeftPosition=0;TopPosition=20}
settings='width='+w+',height='+h+',top='+TopPosition+',left='+LeftPosition+',scrollbars='+scroll+',location=no,directories=no,status=no,menubar=no,toolbar=no,resizable=no';
win=window.open(mypage,myname,settings);}
// -->




