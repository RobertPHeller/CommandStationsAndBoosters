/* -*- javascript -*- 
     Copyright 2026 Robert Heller
     All Rights Reserved
     System        : $BUFFER_NAME$ : 
     Object Name   : $RCS_FILE$
     Revision      : $REVISION$
     Date          : 2026-03-18 13:32:23
     Created By    : Robert Heller, Robert Heller
     Created       : 2026-03-18 13:32:23

     Last Modified : <260318.2321>
     ID            : $Id$
     Source        : $Source$
     Description	
     Notes
*/
var ns4 = document.layers;
var ie4 = document.all;
var nn6 = document.getElementById && !document.all;

var CS_Service = {};

CS_Service.SelectShortAddress = function () {
  console.log("*** SelectShortAddress()");
  /* Selects short address.  Tasks when selected:
   * CV 29 bit 5 = 0
   * document.getElementById("address").value = document.getElementById("primary-address").value
   * CV  1 = short address = document.getElementById("address").value
   * document.getElementById("address-format")
   */
  var address = document.getElementById("address");
  var short_address = document.getElementById("primary-address");
  var CV_29 = document.getElementById("CV29_Value");
  var CV_29s = document.getElementById("CV29_State");
  var CV_1 = document.getElementById("CV1_Value");
  var CV_1s = document.getElementById("CV1_State");
  address.value = short_address.value;
  CV_29.value &= ~(1<<5);
  CV_29s.innerHTML = "Edited";
  CV_1.value = address.value & 0x0ff;
  CV_1s.innerHTML = "Edited";
  var sel = document.getElementById("address-format");
  sel.value = "short";
}

CS_Service.SelectLongAddress = function () {
  console.log("*** SelectLongAddress()");
  /* Selects long address.  Tasks when selected: 
   * CV 29 bit 5 = 1
   * document.getElementById("address").value = document.getElementById("extended-address").value
   * CV 17 = upper 6 bits of long address | 0xc0
   * CV 18 = lower 8 bits of long address
   */
  var address = document.getElementById("address");
  var extended_address = document.getElementById("extended-address");
  var CV_29 = document.getElementById("CV29_Value");
  var CV_29s = document.getElementById("CV29_State");
  var CV_17 = document.getElementById("CV17_Value");
  //console.log("*** SelectLongAddress(): CV_17 is "+CV_17);
  var CV_17s = document.getElementById("CV17_State");
  var CV_18 = document.getElementById("CV18_Value");
  var CV_18s = document.getElementById("CV18_State");
  address.value = extended_address.value;
  CV_29.value |= 1<<5;
  CV_29s.innerHTML = "Edited";
  var addr = address.value;
  var highbits = 0xc0 | ((addr >> 8)&0x3f);
  //console.log("*** SelectLongAddress(): highbits are "+highbits);
  CV_17.value = highbits;
  CV_17s.innerHTML = "Edited";
  CV_18.value = addr && 0xff;
  CV_18s.innerHTML = "Edited";
  var sel = document.getElementById("address-format");
  sel.value = "long";
}

CS_Service.UpdateAddress = function () {
  console.log("*** UpdateAddress()");
  /*
   * Update address case on "address-format"
   * if document.getElementById("address-format").value == "long", update:
   *   document.getElementById("extended-address").value
   *   CV_17, CV_17s, CV_18, CV_18s
   * else if document.getElementById("address-format").value == "short", update:
   *   document.getElementById("primary-address").value
   *   CV_1
   */
  var address = document.getElementById("address"); 
  var addr = address.value;
  if (document.getElementById("address-format").value == "long")
  {
    document.getElementById("extended-address").value = addr;
    var highbits = 0xc0 | ((addr >> 8)&0x3f);
    document.getElementById("CV17_Value").value = highbits;
    document.getElementById("CV17_State").innerHTML = "Edited";
    document.getElementById("CV18_Value").value = addr & 0x0ff;
    document.getElementById("CV18_State").innerHTML = "Edited";
  }
  else
  {
    document.getElementById("primary-address").value = addr & 0x0ff;
    document.getElementById("CV1_Value").value = addr & 0x0ff;
    document.getElementById("CV1_State").innerHTML = "Edited";
  }
     
}

CS_Service.UpdatePrimaryAddress = function () {
  console.log("*** UpdatePrimaryAddress()");
  var address = document.getElementById("primary-address");
  var addr = address.value;
  if (document.getElementById("address-format").value == "short")
  {
    document.getElementById("address").value = addr;
    document.getElementById("CV1_Value").value = addr & 0x0ff;
    document.getElementById("CV1_State").innerHTML = "Edited";
  }
    
}

CS_Service.UpdateExtendedAddress = function () {
  console.log("*** UpdateExtendedAddress()");
  var address = document.getElementById("extended-address");
  var addr = address.value;
  if (document.getElementById("address-format").value == "long")
  {
    document.getElementById("address").value = addr;
    var highbits = 0xc0 | ((addr >> 8)&0x3f);
    document.getElementById("CV17_Value").value = highbits;
    document.getElementById("CV17_State").innerHTML = "Edited";
    document.getElementById("CV18_Value").value = addr & 0x0ff;
    document.getElementById("CV18_State").innerHTML = "Edited";
  }
}

CS_Service.SelectAddressFormat = function () {
  console.log("*** SelectAddressFormat()");
  if (document.getElementById("address-format").value == "long")
  {
    /* Selects long address.  Tasks when selected: 
     * CV 29 bit 5 = 1
     * document.getElementById("address").value = document.getElementById("extended-address").value
     * CV 17 = upper 6 bits of long address | 0xc0
     * CV 18 = lower 8 bits of long address
     */
    var address = document.getElementById("address");
    var extended_address = document.getElementById("extended-address");
    var CV_29 = document.getElementById("CV29_Value");
    var CV_29s = document.getElementById("CV29_State");
    var CV_17 = document.getElementById("CV17_Value");
    //console.log("*** SelectLongAddress(): CV_17 is "+CV_17);
    var CV_17s = document.getElementById("CV17_State");
    var CV_18 = document.getElementById("CV18_Value");
    var CV_18s = document.getElementById("CV18_State");
    address.value = extended_address.value;
    CV_29.value |= 1<<5;
    CV_29s.innerHTML = "Edited";
    var addr = address.value;
    var highbits = 0xc0 | ((addr >> 8)&0x3f);
    //console.log("*** SelectLongAddress(): highbits are "+highbits);
    CV_17.value = highbits;
    CV_17s.innerHTML = "Edited";
    CV_18.value = addr && 0xff;
    CV_18s.innerHTML = "Edited";
    document.getElementById("short").checked = false;
    document.getElementById("long").checked = true;
    
  }
  else
  {
    /* Selects short address.  Tasks when selected:
     * CV 29 bit 5 = 0
     * document.getElementById("address").value = document.getElementById("primary-address").value
     * CV  1 = short address = document.getElementById("address").value
     * document.getElementById("address-format")
     */
    var address = document.getElementById("address");
    var short_address = document.getElementById("primary-address");
    var CV_29 = document.getElementById("CV29_Value");
    var CV_29s = document.getElementById("CV29_State");
    var CV_1 = document.getElementById("CV1_Value");
    var CV_1s = document.getElementById("CV1_State");
    address.value = short_address.value;
    CV_29.value &= ~(1<<5);
    CV_29s.innerHTML = "Edited";
    CV_1.value = address.value & 0x0ff;
    CV_1s.innerHTML = "Edited";
    document.getElementById("short").checked = true;
    document.getElementById("long").checked = false;
  }
}

CS_Service.SelectDirection = function () {
  console.log("*** SelectDirection()");
}

CS_Service.SelectSpeedSteps = function () {
  console.log("*** SelectSpeedSteps()");
}

CS_Service.SelectPowerConversion = function () {
  console.log("*** SelectPowerConversion()");
}

CS_Service.SelectKickStart = function () {
  console.log("*** SelectKickStart()");
}

CS_Service.SelectAccelerationRate = function () {
  console.log("*** SelectAccelerationRate()");
}

CS_Service.SelectDecelerationRate = function () {
  console.log("*** SelectDecelerationRate()");
}

CS_Service.SelectMotorFreq = function () {
  console.log("*** SelectMotorFreq()");
}

CS_Service.SelectBasicSpeed = function () {
  console.log("*** SelectBasicSpeed()");
}

CS_Service.SelectVStart = function () {
  console.log("*** SelectVStart()");
}

CS_Service.SelectVMid = function () {
  console.log("*** SelectVMid()");
}

CS_Service.SelectVHigh = function () {
  console.log("*** SelectVHigh()");
}

CS_Service.SelectSpeedTable = function () {
  console.log("*** SelectSpeedTable()");
}

CS_Service.SpeedTableBar = function(bar) {
  console.log("*** SpeedTableBar()");
}

CS_Service.SpeedTableCheckbox = function(bar) {
  console.log("*** SpeedTableCheckbox()");
}

CS_Service.ServiceForceStraight = function () {
  console.log("*** ServiceForceStraight()");
}

CS_Service.ServiceMatchEnds = function () {
  console.log("*** ServiceMatchEnds()");
}

CS_Service.ServiceConstantRatioCurve = function () {
  console.log("*** ServiceConstantRatioCurve()");
}

CS_Service.ServiceLogCurve = function () {
  console.log("*** ServiceLogCurve()");
}

CS_Service.ServiceShiftLeft = function () {
  console.log("*** ServiceShiftLeft()");
}

CS_Service.ServiceShiftRight = function () {
  console.log("*** ServiceShiftRight()");
}

CS_Service.SelectFunctionMap = function(funct,wire,forward=true) {
  console.log("*** SelectFunctionMap()");
}

CS_Service.SelectDitchLightHold = function () { 
  console.log("*** SelectDitchLightHold()");
}

CS_Service.SelectLightingEffectsPage = function () {
  console.log("*** SelectLightingEffectsPage()");
}

CS_Service.SelectOutputEffectGenerated = function (output) {
  console.log("*** SelectOutputEffectGenerated()");
}

CS_Service.SelectOutputActive = function (output) { 
  console.log("*** SelectOutputActive()");
}

CS_Service.SelectOutputConnected = function (output) {
  console.log("*** SelectOutputConnected()");
}

CS_Service.SelectPowerSourceConversion = function () {
  console.log("*** SelectPowerSourceConversion()");
}

CS_Service.SelectConsistAddress = function () {
  console.log("*** SelectConsistAddress()");
}

CS_Service.SelectDirectionInConsist = function () {
  console.log("*** SelectDirectionInConsist()");
}

CS_Service.SetConsistAccelerationAdj = function () {
  console.log("*** SetConsistAccelerationAdj()");
}

CS_Service.SetConsistAccelerationAdjSign = function () {
  console.log("*** SetConsistAccelerationAdjSign()");
}

CS_Service.SetConsistDecelerationAdj = function () {
  console.log("*** SetConsistDecelerationAdj()");
}

CS_Service.SetConsistDecelerationAdjSign = function () {
  console.log("*** SetConsistDecelerationAdjSign()");
}

CS_Service.SelectConsistRespondFunction = function (fun,forward=false) {                            $
     console.log("*** SelectConsistRespondFunction()");
}

CS_Service.SelectAdvancedAck = function () {
  console.log("*** SelectAdvancedAck()");
}

CS_Service.ReadCV = function (cv) {
  console.log("*** ReadCV()");
}

CS_Service.WriteCV = function (cv) {
  console.log("*** WriteCV()");
}

CS_Service.CompareCV = function (cv) {
  console.log("*** CompareCV()");
}

CS_Service.ReadChagesOnSheet = function () {
  console.log("*** ReadChagesOnSheet()");
}

CS_Service.WriteChagesOnSheet = function () {
  console.log("*** WriteChagesOnSheet()");
}

CS_Service.CompareChagesOnSheet = function () {
  console.log("*** CompareChagesOnSheet()");
}

CS_Service.ReadFullSheet = function () {
  console.log("*** ReadFullSheet()");
}

CS_Service.WriteFullSheet = function () {
  console.log("*** WriteFullSheet()");
}

CS_Service.CompareFullSheet = function () {
  console.log("*** CompareFullSheet()");
}

CS_Service.ReadChagesOnAllSheets = function () {
  console.log("*** ReadChagesOnAllSheets()");
}

CS_Service.WriteChagesOnAllSheets = function () {
  console.log("*** WriteChagesOnAllSheets()");
}

CS_Service.ReadAllSheets = function () {
  console.log("*** ReadAllSheets()");
}

CS_Service.WriteAllSheets = function () {
  console.log("*** WriteAllSheets()");
}

