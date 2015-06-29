	var maxsize = 0.5*1024*1024;//500K  
    var errMsg = "上传的附件文件不能超过500K！！！";  
    var tipMsg = "您的浏览器暂不支持计算上传文件的大小，确保上传文件不要超过500K，建议使用IE、FireFox、Chrome浏览器。";  
    var  browserCfg = {};  
    var ua = window.navigator.userAgent;  
    if (ua.indexOf("MSIE")>=1){  
        browserCfg.ie = true;  
    }else if(ua.indexOf("Firefox")>=1){  
        browserCfg.firefox = true;  
    }else if(ua.indexOf("Chrome")>=1){  
        browserCfg.chrome = true;  
    }  
    function checkfile(elementId){  
        try{  
            var obj_file = document.getElementById(elementId);  
            if(obj_file.value==""){  
                alert("请先选择上传文件");  
                return;  
            }  
            var filesize = 0;  
            if(browserCfg.firefox || browserCfg.chrome ){  
                filesize = obj_file.files[0].size;  
            }else if(browserCfg.ie){  
                var obj_img = document.getElementById('tempimg');  
                obj_img.dynsrc=obj_file.value;  
                filesize = obj_img.fileSize;  
            }else{  
                alert(tipMsg);  
            return;  
            }  
            if(filesize==-1){  
                alert(tipMsg);  
                return false;  
            }else if(filesize>maxsize){  
                alert(errMsg);  
                return false;  
            }else{  
                return true;  
            }  
        }catch(e){  
            alert(e);  
        }  
    } 