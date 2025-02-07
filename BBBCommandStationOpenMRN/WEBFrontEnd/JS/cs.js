/* -*- javascript -*- 
     Copyright 2025 Deepwoods Software
     All Rights Reserved
     System        : CS_JS : 
     Object Name   : $RCS_FILE$
     Revision      : $REVISION$
     Date          : Wed Feb 5 17:08:40 2025
     Created By    : Robert Heller, Deepwoods Software
     Created       : Wed Feb 5 17:08:40 2025

     Last Modified : <250206.2157>
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
}

CS.deleteLoco = function () {
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
    var address = document.getElementById('newaddress').value;
    var stepsSel= document.getElementById('newsteps');
    var steps   = stepsSel.options[stepsSel.selectedIndex].value;
    var name    = document.getElementById('newname').value;
    var descr   = document.getElementById('newdescription').value;
    console.log('address = '+address+', steps = '+steps+', name = "'+name+'", descr = "'+descr+'"');
    CS.addNewLocoModalClose();
}
