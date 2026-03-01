/* -*- javascript -*- 
     Copyright 2025 Deepwoods Software
     All Rights Reserved
     System        : CS_JS : 
     Object Name   : $RCS_FILE$
     Revision      : $REVISION$
     Date          : Wed Feb 5 17:08:40 2025
     Created By    : Robert Heller, Deepwoods Software
     Created       : Wed Feb 5 17:08:40 2025

     Last Modified : <250207.1520>
     ID            : $Id$
     Source        : $Source$
     Description	
     Notes
*/
var ns4 = document.layers;
var ie4 = document.all;
var nn6 = document.getElementById && !document.all;

var CS = {};

CS.Load = function () {
}

CS.Save = function () {
}

CS.Service = function () {
}

CS.Help = function () {
    window.open('http://cs.deepsoft.com/help/','_blank');
}

CS.describeLoco = function () {
    locolistbox = document.getElementById('locolistbox');
    //console.log("locolistbox.selectedIndex is "+locolistbox.selectedIndex);
    if (locolistbox.selectedIndex < 0) return;
    address = Number.parseInt(locolistbox.options[locolistbox.selectedIndex].value).toString();
    if (address == "NaN") return;
    //console.log("address is "+address);
    var url = "/command/describe?address="+address;
    var method = "GET"
    var async = true;
    var request = new XMLHttpRequest();
    request.onreadystatechange = function() {
        if (request.readyState != 4) {
            return;
        }
        var status = parseInt(request.status);
        var errorInfo = null;
        var response = request.response;
        //console.log("status is "+status);
        //console.log("response is "+response);
        let pattern = /#describe#\s+/g;
        if (pattern.test(response)) {
            list = response.substring(pattern.lastIndex);
        } else {
            return;
        }
        //console.log("list is "+list);
        pattern = /\d+/g;
        address = pattern.exec(list);
        //console.log("address is "+address);
        document.getElementById('address').value = address;
        steps   = pattern.exec(list);
        //console.log("steps is "+steps);
        document.getElementById('steps').value = steps;
        list = list.substring(pattern.lastIndex);
        //console.log("list is now "+list);
        pattern = /{[^}]*}/g;
        name = pattern.exec(list);
        //console.log("name is '"+name+"'");
        document.getElementById('name').value = name.substring(1,name.length-1);
        descr = pattern.exec(list).toString();
        //console.log("descr is '"+descr+"'");
        document.getElementById('description').value = descr.substring(1,descr.length-1);
        list = list.substring(pattern.lastIndex);
        //console.log("list is now "+list);
        direction = /[FR]/.exec(list);
        //console.log("direction is "+direction);
        speed = /\d+/.exec(list);
        //console.log("speed is "+speed);
        document.getElementById('speed').value = speed+" "+direction;
        pattern = /{[^}]*}/g;
        functions = pattern.exec(list);
        //console.log("functions is "+functions);
        for (i=0;i<=28;i++) {
            f = /(false|true)/g.exec(functions);
            if (f == "true") {
                document.getElementById('functionlight_'+i).src='/images/on.png';
            } else {
                document.getElementById('functionlight_'+i).src='/images/off.png';
            }
        }
        list = list.substring(pattern.lastIndex);
        //console.log("list is now "+list);
        controller = /\d+/.exec(list);
        //console.log("controller is "+controller);
        document.getElementById('controller').value = controller;
        consist = /{[^}]*}/.exec(list).toString();
        //console.log("consist is "+consist);
        document.getElementById('consist').value = consist.substring(1,consist.length-1);
    }
    request.open(method, url, async);
    request.send();
}

CS.deleteLoco = function () {
    locolistbox = document.getElementById('locolistbox');
    //console.log("locolistbox.selectedIndex is "+locolistbox.selectedIndex);
    if (locolistbox.selectedIndex < 0) return;
    address = Number.parseInt(locolistbox.options[locolistbox.selectedIndex].value).toString();
    if (address == "NaN") return;
    //console.log("address is "+address);
    var url = "/command/undefine?address="+address;
    var method = "GET"
    var async = true;
    var request = new XMLHttpRequest();
    request.onreadystatechange = function() {
        if (request.readyState != 4) {
            return;
        }
        var status = parseInt(request.status);
        var errorInfo = null;
        var response = request.response;
    }
    request.open(method, url, async);
    request.send();
    CS.RefreshLocoList();
}

CS.addLoco = function () {
    document.getElementById('overlayForModals').style.display = "block";
    document.getElementById('addNewLocoModal').classList.add('show');
    window.addEventListener('click',CS.addNewLocoModalHide,'once');
}

CS.addNewLocoModalHide = function () {
    if (!document.getElementById('addNewLocoModal').contains(event.target)) {
        document.getElementById('overlayForModals').style.display = "none";
        document.getElementById('addNewLocoModal').classList.remove('show');
    }
}

CS.addNewLocoModalClose = function () {
    document.getElementById('overlayForModals').style.display = "none";
    document.getElementById('addNewLocoModal').classList.remove('show');
}

    
CS.addNewLoco = function () {
    var address = Number.parseInt(document.getElementById('newaddress').value,10).toString();
    if (address == "NaN") return;
    var stepsSel= document.getElementById('newsteps');
    var steps   = Number.parseInt(stepsSel.options[stepsSel.selectedIndex].value,10).toString();
    if (steps == "NaN") return;
    var name    = encodeURIComponent(document.getElementById('newname').value);
    var descr   = encodeURIComponent(document.getElementById('newdescription').value);
    console.log('address = '+address+', steps = '+steps+', name = "'+name+'", descr = "'+descr+'"');
    CS.addNewLocoModalClose();
    var url = "/command/define?address="+address+"&steps="+steps+"&name="+name+"&description="+descr
    var method = "GET"
    var async = true;
    var request = new XMLHttpRequest();
    request.onreadystatechange = function() {
        if (request.readyState != 4) {
            return;
        }
        var status = parseInt(request.status);
        var errorInfo = null;
        var response = request.response;
        console.log("status is "+status);
        console.log("response is "+response);
    }
    request.open(method, url, async);
    request.send();
    CS.RefreshLocoList();
}

CS.RefreshLocoList = function () {
    locolistbox = document.getElementById('locolistbox');
    locolistbox.innerHTML = "";
    var url = "/command/list";
    var method = "GET"
    var async = true;
    var request = new XMLHttpRequest();
    request.onreadystatechange = function() {
        if (request.readyState != 4) {
            return;
        }
        var status = parseInt(request.status);
        var errorInfo = null;
        var response = request.response;
        //console.log("status is "+status);
        //console.log("response is "+response);
        let pattern = /^.*#list#\s*/g;
        if (pattern.test(response)) {
            //console.log("(/#list#\s*/g) pattern.lastIndex is "+pattern.lastIndex);
            list = response.substring(pattern.lastIndex);
            //console.log("list is '"+list+"'");
        } else {
            return
        }
        pattern = /\s/g;
        start = 0;
        while (pattern.test(list)) {
            //console.log("start is "+start);
            //console.log("(/\s/g) pattern.lastIndex is "+pattern.lastIndex);
            address = list.substring(start,pattern.lastIndex-1);
            start = pattern.lastIndex;
            //console.log("address is "+address);
            locolistbox.innerHTML += '<option value="'+address+'">'+address+"</option>";
        }
    }
    request.open(method, url, async);
    request.send();
}    

CS.StatusRefresh = function () {
    var url = "/command/status";
    var method = "GET"
    var async = true;
    var request = new XMLHttpRequest();
    request.onreadystatechange = function() {
        if (request.readyState != 4) {
            return;
        }
        var status = parseInt(request.status);
        var errorInfo = null; 
        var response = request.response; 
        //console.log("status is "+status);  
        //console.log("response is "+response);
        let pattern = /#status#/g;
        if (pattern.test(response)) {
            response = response.substring(pattern.lastIndex);
        } else {
            return;
        }
        pattern = /\s[^\s]+/g;
        document.getElementById('mains_current').innerHTML = pattern.exec(response);
        document.getElementById('programming_current').innerHTML = pattern.exec(response);
        document.getElementById('heatsink_temp').innerHTML = pattern.exec(response);
        mainsEn     = pattern.exec(response);
        if (mainsEn) {
            document.getElementById('mains_enabled').src = "/images/on.png";
        } else {
            document.getElementById('mains_enabled').src = "/images/off.png";
        }
        mainsTF     = pattern.exec(response);
        if (mainsTF) {
            document.getElementById('mains_therm').src = "/images/on.png";
        } else {
            document.getElementById('mains_therm').src = "/images/off.png";
        }
        mainsOC     = pattern.exec(response);
        if (mainsOC) {
            document.getElementById('mains_over').src = "/images/on.png";
        } else {
            document.getElementById('mains_over').src = "/images/off.png";
        }
        progEn      = pattern.exec(response);
        if (progEn) {
            document.getElementById('programming_enabled').src = "/images/on.png";
        } else {
            document.getElementById('programming_enabled').src = "/images/off.png";
        }
        progTF      = pattern.exec(response);
        if (progTF) {
            document.getElementById('programming_therm').src = "/images/on.png";
        } else {
            document.getElementById('programming_therm').src = "/images/off.png";
        }
        progOC      = pattern.exec(response);
        if (progOC) {
            document.getElementById('programming_over').src = "/images/on.png";
        } else {
            document.getElementById('programming_over').src = "/images/off.png";
        }
        fanOn       = pattern.exec(response);
        if (fanOn) {
            document.getElementById('heatsink_fan').src = "/images/on.png";
        } else {
            document.getElementById('heatsink_fan').src = "/images/off.png";
        }
        AlarmOn     = pattern.exec(response);
        if (AlarmOn) {
            document.getElementById('heatsink_alarm').src = "/images/on.png";
        } else {
            document.getElementById('heatsink_alarm').src = "/images/off.png";
        }
    }
    request.open(method, url, async);
    request.send();
}

