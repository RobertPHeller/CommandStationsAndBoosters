/* -*- javascript -*- 
     Copyright 2026 Robert Heller
     All Rights Reserved
     System        : $BUFFER_NAME$ : 
     Object Name   : $RCS_FILE$
     Revision      : $REVISION$
     Date          : 2026-03-18 13:32:23
     Created By    : Robert Heller, Robert Heller
     Created       : 2026-03-18 13:32:23

     Last Modified : <260320.0906>
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
  //console.log("*** SelectShortAddress()");
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
  //console.log("*** SelectLongAddress()");
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
  //console.log("*** UpdateAddress()");
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
  //console.log("*** UpdatePrimaryAddress()");
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
  //console.log("*** UpdateExtendedAddress()");
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
  //console.log("*** SelectAddressFormat()");
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
  //console.log("*** SelectDirection()");
  /* set loco dir
   * CV_29 bit 0: normal == 0, reverse == 1
   */
  var CV_29 = document.getElementById("CV29_Value");
  var CV_29s = document.getElementById("CV29_State");
  var dir = document.getElementById("direction");
  if (dir.value == "normal")
  {
    CV_29.value &= ~1;
  }
  else
  {
    CV_29.value |= 1;
  }
  CV_29s.innerHTML = "Edited";
}

CS_Service.SelectSpeedSteps = function () {
  //console.log("*** SelectSpeedSteps()");
  /* 14 vs 28/256 speed steps: CV_29 bit 1: 0 = 14, 1 = 28/256 */
  var CV_29 = document.getElementById("CV29_Value");
  var CV_29s = document.getElementById("CV29_State");
  var steps = document.getElementById("steps");
  if (steps.value == "14")
  {
    CV_29.value &= ~(1 << 1);
  }
  else
  {
    CV_29.value |= (1 << 1);
  }
  CV_29s.innerHTML = "Edited";
}

CS_Service.SelectPowerConversion = function () {
  //console.log("*** SelectPowerConversion()");
  /* CV_29 bit 2: 0 = NMRA Digital Only, 1 = DC conversion */
  var CV_29 = document.getElementById("CV29_Value");
  var CV_29s = document.getElementById("CV29_State");
  var power = document.getElementById("power");
  var otherpower = document.getElementById("power-source");
  otherpower.value = power.value;
  if (power.value = "dcc")
  {
    CV_29.value &= ~(1 << 2);
  }
  else
  {
    CV_29.value |= (1 << 2);
  }
  CV_29s.innerHTML = "Edited";
}

CS_Service.SelectKickStart = function () {
  //console.log("*** SelectKickStart()");
  /* CV 65 */
  var CV_65 = document.getElementById("CV65_Value");
  var CV_65s = document.getElementById("CV65_State");
  var kick = document.getElementById("kick");
  CV_65.value = kick.value;
  CV_65s.innerHTML = "Edited";
}

CS_Service.SelectAccelerationRate = function () {
  //console.log("*** SelectAccelerationRate()");
  /* CV 3 */
  var CV_3 = document.getElementById("CV3_Value");
  var CV_3s = document.getElementById("CV3_State");
  var accel = document.getElementById("accel");
  CV_3.value = accel.value;
  CV_3s.innerHTML = "Edited";
}

CS_Service.SelectDecelerationRate = function () {
  //console.log("*** SelectDecelerationRate()");
  /* CV 4 */
  var CV_4 = document.getElementById("CV4_Value");
  var CV_4s = document.getElementById("CV4_State");
  var decel = document.getElementById("decel");
  CV_4.value = decel.value;
  CV_4s.innerHTML = "Edited"; 
}

CS_Service.SelectMotorFreq = function () {
  //console.log("*** SelectMotorFreq()");
  /* CV 9 (PWM) */
  var CV_9 = document.getElementById("CV9_Value");
  var CV_9s  = document.getElementById("CV9_State"); 
  var freq = document.getElementById("freq");
  CV_9.value = freq.value; 
  CV_9s.innerHTML = "Edited";
}

CS_Service.SelectBasicSpeed = function () {
  //console.log("*** SelectBasicSpeed()");
  /* CV 29 bit 4: 0 == basic speed */
  var CV_29 = document.getElementById("CV29_Value"); 
  var CV_29s = document.getElementById("CV29_State");
  CV_29.value &= ~(1 << 4);
  CV_29s.innerHTML = "Edited";
}

CS_Service.SelectVStart = function () {
  //console.log("*** SelectVStart()");
  /* CV 2 */
  var CV_2 = document.getElementById("CV2_Value");
  var CV_2s = document.getElementById("CV2_State");
  var vstart = document.getElementById("Vstart");
  CV_2.value = vstart.value; 
  CV_2s.innerHTML = "Edited";
}

CS_Service.SelectVMid = function () {
  //console.log("*** SelectVMid()");
  /* CV 6 */
  var CV_6 = document.getElementById("CV6_Value");
  var CV_6s = document.getElementById("CV6_State");
  var vmid = document.getElementById("Vmid");
  CV_6.value = vmid.value;
  CV_6s.innerHTML = "Edited";
}

CS_Service.SelectVHigh = function () {
  //console.log("*** SelectVHigh()");
  /* CV 5 */
  var CV_5 = document.getElementById("CV5_Value");
  var CV_5s = document.getElementById("CV5_State");
  var vhigh = document.getElementById("Vhigh");
  CV_5.value = vhigh.value;
  CV_5s.innerHTML = "Edited";
}

CS_Service.SelectSpeedTable = function () {
  //console.log("*** SelectSpeedTable()");
  /* CV_29 bit 4: 1 == speed table */
  var CV_29 = document.getElementById("CV29_Value"); 
  var CV_29s = document.getElementById("CV29_State");
  CV_29.value |= (1 << 4);
  CV_29s.innerHTML = "Edited";
}

CS_Service.SpeedTableBar = function(barnumber) {
  //console.log("*** SpeedTableBar("+barnumber+")");
  var bar = document.getElementById("b"+barnumber);
  var barVal = document.getElementById("b"+barnumber+"Value");
  var CV =  document.getElementById("CV"+(barnumber+65)+"_Value");
  var CVs =  document.getElementById("CV"+(barnumber+65)+"_State");
  var val = Number.parseInt(bar.value);
  CV.value = val;
  CVs.innerHTML = "Edited";
  barVal.innerHTML = val;
  //console.log("*** SpeedTableBar(): val is "+val);
  for (var next = barnumber+1; next <= 28; next++)
  {
    //console.log("*** SpeedTableBar(): next (going up) is "+next);
    var nextbar = document.getElementById("b"+next);
    var nextbarValue = document.getElementById("b"+next+"Value");
    var nextCV = document.getElementById("CV"+(next+65)+"_Value");
    var nextCVs = document.getElementById("CV"+(next+65)+"_State");
    //console.log("*** SpeedTableBar(): [up] nextbar.value is "+nextbar.value);
    if (val < Number.parseInt(nextbar.value)) break;
    nextbar.value = val;
    nextbarValue.innerHTML = val;
    nextCV.value = val;
    nextCVs.innerHTML = "Edited";
  }
  for (next = barnumber-1; next >= 1; next--)
  {
    //console.log("*** SpeedTableBar(): next (going down) is "+next);
    var nextbar = document.getElementById("b"+next);
    var nextbarValue = document.getElementById("b"+next+"Value");
    var nextCV = document.getElementById("CV"+(next+65)+"_Value");
    var nextCVs = document.getElementById("CV"+(next+65)+"_State");
    //console.log("*** SpeedTableBar(): [down] nextbar.value is "+nextbar.value);
    if (val > Number.parseInt(nextbar.value)) break;
    nextbar.value = val;
    nextbarValue.innerHTML = val;
    nextCV.value = val;
    nextCVs.innerHTML = "Edited";
  }
}

CS_Service.SpeedTableCheckbox = function(bar) {
  console.log("*** SpeedTableCheckbox()");
}

CS_Service.ServiceForceStraight = function () {
  //console.log("*** ServiceForceStraight()");
  var fraction = 255.0 / 27.0;
  for (var i = 1; i <= 28; i++)
  {
    var val = ((i-1)*fraction).toFixed();
    var bar = document.getElementById("b"+i);
    var barVal = document.getElementById("b"+i+"Value");
    var CV =  document.getElementById("CV"+(i+66)+"_Value"); 
    var CVs =  document.getElementById("CV"+(i+66)+"_State");
    CV.value = val;
    CVs.innerHTML = "Edited";
    barVal.innerHTML = val;
    bar.value = val;
  }
     
}

CS_Service.ServiceMatchEnds = function () {
  //console.log("*** ServiceMatchEnds()");
  var lowest = Number.parseInt(document.getElementById("b1").value);
  //console.log("*** ServiceMatchEnds(): lowest = "+lowest);
  var highest = Number.parseInt(document.getElementById("b28").value);
  //console.log("*** ServiceMatchEnds(): highest = "+highest);
  var fraction = (highest-lowest) / 27.0;
  //console.log("*** ServiceMatchEnds(): fraction = "+fraction);
  for (var i = 1; i <= 28; i++)
  {
    var val = (((i-1)*fraction)+lowest).toFixed();
    //console.log("*** ServiceMatchEnds(): @"+i+", val = "+val);
    var bar = document.getElementById("b"+i);
    var barVal = document.getElementById("b"+i+"Value");
    var CV =  document.getElementById("CV"+(i+66)+"_Value"); 
    var CVs =  document.getElementById("CV"+(i+66)+"_State");
    CV.value = val;
    CVs.innerHTML = "Edited";
    barVal.innerHTML = val;
    bar.value = val;
  }
  
}

CS_Service.ServiceConstantRatioCurve = function () {
  //console.log("*** ServiceConstantRatioCurve()");
  var first = Number.parseFloat(document.getElementById("b1").value);
  if (first < 1.0) first = 1.0;
  var last = Number.parseFloat(document.getElementById("b28").value);
  if (last < first + 1.0) last = first + 1.0;
  step = Math.log(last / first) / 27.0;
  //console.log("*** ServiceConstratioRatioCurve(): log ratio step is "+step);
  for (var i = 1; i <= 28; i++)
  {
    var val = Math.floor(first * Math.exp(step * (i-1))).toFixed();
    var bar = document.getElementById("b"+i);
    var barVal = document.getElementById("b"+i+"Value");
    var CV =  document.getElementById("CV"+(i+66)+"_Value"); 
    var CVs =  document.getElementById("CV"+(i+66)+"_State");
    CV.value = val;
    CVs.innerHTML = "Edited";
    barVal.innerHTML = val;
    bar.value = val;
  }
}

CS_Service.ServiceLogCurve = function () {
  //console.log("*** ServiceLogCurve()");
  var first = Number.parseFloat(document.getElementById("b1").value);
  var last = Number.parseFloat(document.getElementById("b28").value);
  if (last < first + 1.0) last = first + 1.0;
  var factor = 1.0 / 10.0;
  var ratio = Math.pow(1.0 - factor, 27.0);
  var limit = last + (last - first) * ratio;
  for (var i = 2; i <= 28; i++)
  {
    var previous = limit - (limit - first) * ratio / Math.pow(1. - factor, 27.0 - (i-1));
    var val = Math.floor(previous).toFixed();
    var bar = document.getElementById("b"+i);
    var barVal = document.getElementById("b"+i+"Value");
    var CV =  document.getElementById("CV"+(i+66)+"_Value"); 
    var CVs =  document.getElementById("CV"+(i+66)+"_State");
    CV.value = val;
    CVs.innerHTML = "Edited";
    barVal.innerHTML = val;
    bar.value = val;
  }
  
}

CS_Service.ServiceShiftLeft = function () {
  //console.log("*** ServiceShiftLeft()");
  var val = Number.parseInt(document.getElementById("b28").value);
  for (var i = 27; i >= 1; i--)
  {
    var nextval = Number.parseInt(document.getElementById("b"+i).value);
    var bar = document.getElementById("b"+i);
    var barVal = document.getElementById("b"+i+"Value");
    var CV =  document.getElementById("CV"+(i+66)+"_Value"); 
    var CVs =  document.getElementById("CV"+(i+66)+"_State");
    CV.value = val;
    CVs.innerHTML = "Edited";
    barVal.innerHTML = val;
    bar.value = val;
    val = nextval;

  }
}

CS_Service.ServiceShiftRight = function () {
  //console.log("*** ServiceShiftRight()");
  var val = Number.parseInt(document.getElementById("b1").value);
  for (var i = 2; i <= 28; i++)
  {
    var nextval = Number.parseInt(document.getElementById("b"+i).value);
    var bar = document.getElementById("b"+i);
    var barVal = document.getElementById("b"+i+"Value");
    var CV =  document.getElementById("CV"+(i+66)+"_Value"); 
    var CVs =  document.getElementById("CV"+(i+66)+"_State");
    CV.value = val;
    CVs.innerHTML = "Edited";
    barVal.innerHTML = val;
    bar.value = val;
    val = nextval;
  }
}

CS_Service.SelectFunctionMap = function(funct,wire,forward=true) {
  //console.log("*** SelectFunctionMap("+funct+","+wire+","+forward+")");
  var CVNum = 0;
  var shiftOffset = 0;
  var checkbox;
  switch (funct)
  {
  case 0:
    if (forward) {
      CVNum = 33;
      shiftOffset = -1;
      checkbox = document.getElementById("F0_f-"+wire);
    }
    else
    {
      CVNum = 34;
      shiftOffset = -1;
      checkbox = document.getElementById("F0_r-"+wire);
    }
    break;
  case 1:
    CVNum = 35;
    shiftOffset = -1;
    checkbox = document.getElementById("F1-"+wire);
    break;
  case 2:
    CVNum = 36;
    shiftOffset = -1;
    checkbox = document.getElementById("F2-"+wire);
    break;
  case 3:
    CVNum = 37;
    shiftOffset = -1;
    checkbox = document.getElementById("F3-"+wire);
    break;
  case 4:
    CVNum = 38;
    shiftOffset = -4;
    checkbox = document.getElementById("F4-"+wire);
    break;
  case 5:
    CVNum = 39;
    shiftOffset = -4;
    checkbox = document.getElementById("F5-"+wire);
    break;
  case 6:
    CVNum = 40;
    shiftOffset = -4;
    checkbox = document.getElementById("F6-"+wire);
    break;
  default:
    return;
    break;
  }
  var CV = document.getElementById("CV"+CVNum+"_Value");
  var CVs = document.getElementById("CV"+CVNum+"_State");
  //console.log("*** SelectFunctionMap(), checkbox.checked is '"+checkbox.checked+"')");
  if (checkbox.checked) {
    /* checked */
    CV.value |= (1 << (wire+shiftOffset));
  }
  else
  {
    CV.value &= ~(1 << (wire+shiftOffset));
  }
  CVs.innerHTML = "Edited";
}

CS_Service.SelectDitchLightHold = function () { 
  console.log("*** SelectDitchLightHold()");
  /* CV 118? */
  var CV = document.getElementById("CV118_Value");
  var CVs = document.getElementById("CV118_State");
  var ditch = document.getElementById("ditch-light-hold");
  CV.value = ditch.value;
  CVs.innerHTML = "Edited";
}

CS_Service.SelectLightingEffectsPage = function () {
  console.log("*** SelectLightingEffectsPage()");
  /* CV 119? */
  var CV = document.getElementById("CV119_Value");
  var CVs = document.getElementById("CV119_State");
  var lighteffects = document.getElementById("light-effects-page");
  CV.value = lighteffects.value;
  CVs.innerHTML = "Edited";
}

CS_Service.SelectOutputEffectGenerated = function (output) {
  //console.log("*** SelectOutputEffectGenerated()");
  var sel = document.getElementById("O"+output+"_effect");
  var CV = document.getElementById("CV"+(119+output)+"_Value");
  var CVs = document.getElementById("CV"+(119+output)+"_State");
  var val = CV.value & 0b10000011;
  if (sel.value == "standard")
  {
    val |= 0; //   000000
  }
  else if (sel.value == "mars")
  {
    val |= 8; //          001000
  }
  else if (sel.value == "rotary")
  {
    val |= 12; //      001100
  }
  else if (sel.value == "gyralight")
  {
    val |= 16; // 010000
  }
  else if (sel.value == "double")
  {
    val |= 20; //     010100
  }
  else if (sel.value == "A")
  {
    val |= 24; //              011000
  }
  else if (sel.value == "B")
  {
    val |= 28; //              011100
  }
  else if (sel.value == "dim")
  {
    val |= 32; //          100000
  }
  CV.value = val;
  CVs.innerHTML = "Edited";
}

CS_Service.SelectOutputActive = function (output) { 
  //console.log("*** SelectOutputActive()");
  var sel = document.getElementById("O"+output+"_active");
  var CV = document.getElementById("CV"+(119+output)+"_Value");
  var CVs = document.getElementById("CV"+(119+output)+"_State");
  var val = CV.value & 0b11111100;
  if (sel.value == "both")
  {
    val |= 0; //          00
  }
  else if (sel.value == "forward")
  {
    val |= 1; //        01
  }
  else if (sel.value == "reverse")
  {
    val |= 2; //        10
  }
  CV.value = val;
  CVs.innerHTML = "Edited";
}

CS_Service.SelectOutputConnected = function (output) {
  //console.log("*** SelectOutputConnected()");
  var sel = document.getElementById("O"+output+"_connected");
  var CV = document.getElementById("CV"+(119+output)+"_Value");
  var CVs = document.getElementById("CV"+(119+output)+"_State");
  var val = CV.value & 0b01111111;
  if (sel.value == "incand")
  {
    val |= 0; //      00000000
  }
  else if (sel.value == "led")
  {
    val |= 128; //        10000000
  }
  CV.value = val;
  CVs.innerHTML = "Edited";
}

CS_Service.SelectPowerSourceConversion = function () {
  //console.log("*** SelectPowerSourceConversion()");
  /* CV_29 bit 2: 0 = NMRA Digital Only, 1 = DC conversion */
  var CV_29 = document.getElementById("CV29_Value");
  var CV_29s = document.getElementById("CV29_State");
  var power = document.getElementById("power-source");
  var otherpower = document.getElementById("power");
  otherpower.value = power.value;
  if (power.value = "dcc")
  {
    CV_29.value &= ~(1 << 2);
  }
  else
  {
    CV_29.value |= (1 << 2);
  }
  CV_29s.innerHTML = "Edited";
}

CS_Service.SelectConsistAddress = function () {
  //console.log("*** SelectConsistAddress()");
  /* CV19 */
  var CV =  document.getElementById("CV19_Value");
  var CVs =  document.getElementById("CV19_State");
  var consist_address =  document.getElementById("consist-address");
  var olddir = CV.value & 0b10000000;
  CV.value = (consist_address.value & 0b01111111) | olddir;
  CVs.innerHTML = "Edited";
}

CS_Service.SelectDirectionInConsist = function () {
  //console.log("*** SelectDirectionInConsist()");
  var CV =  document.getElementById("CV19_Value");
  var CVs =  document.getElementById("CV19_State");
  var sel = document.getElementById("direction-in-consist");
  if (sel.value == "normal")
  {
    CV.value &= 0b01111111;
  }
  else
  {
    CV.value |= 0b10000000;
  }
  CVs.innerHTML = "Edited";
}

CS_Service.SetConsistAccelerationAdj = function () {
  //console.log("*** SetConsistAccelerationAdj()");
  /* CV23 */
  var CV =  document.getElementById("CV23_Value");
  var CVs =  document.getElementById("CV23_State");
  var val = document.getElementById("accel-adj").value & 0b01111111;;
  var sign = CV.value & 0b10000000;
  CV.value = sign | val;
  CVs.innerHTML = "Edited";
}

CS_Service.SetConsistAccelerationAdjSign = function () {
  //console.log("*** SetConsistAccelerationAdjSign()");
  /* CV23 */ 
  var CV =  document.getElementById("CV23_Value");
  var CVs =  document.getElementById("CV23_State");
  var sel =  document.getElementById("accel-sign");
  if (sel.value == "+")
  {
    CV.value &= 0b01111111;
  }
  else
  {
    CV.value |= 0b10000000;
  }
}

CS_Service.SetConsistDecelerationAdj = function () {
  //console.log("*** SetConsistDecelerationAdj()");
  /* CV24 */
  var CV =  document.getElementById("CV24_Value");
  var CVs =  document.getElementById("CV24_State");
  var val = document.getElementById("decel-adj").value & 0b01111111;;
  var sign = CV.value & 0b10000000;
  CV.value = sign | val;
  CVs.innerHTML = "Edited";
}

CS_Service.SetConsistDecelerationAdjSign = function () {
  //console.log("*** SetConsistDecelerationAdjSign()");
  /* CV24 */
  var CV =  document.getElementById("CV24_Value");
  var CVs =  document.getElementById("CV24_State");
  var sel =  document.getElementById("decel-sign");
  if (sel.value == "+")
  {
    CV.value &= 0b01111111;
  }
  else
  {
    CV.value |= 0b10000000;
  }
}

CS_Service.SelectConsistRespondFunction = function (fun,forward=false) {
  //console.log("*** SelectConsistRespondFunction("+fun+","+forward+")");
  var selname;
  var bitno;
  var cvnum;
  if (fun == 0)
  {
    if (forward)
    {
      selname = "consist-F0F";
      bitno = 0;
      cvnum = 22;
    }
    else
    {
      selname = "consist-F0R";
      bitno = 1;
      cvnum = 22;
    }
  }
  else
  {
    selname = "consist-F"+fun;
    bitno = fun-1;
    cvnum = 21;
  }
  /* CV21 / CV22 */
  var CV =  document.getElementById("CV"+cvnum+"_Value");
  var CVs =  document.getElementById("CV"+cvnum+"_State");
  var bitval = Number.parseInt(document.getElementById(selname).value);
  if (bitval == 0)
  {
    CV.value &= ~(1 << bitno);
  }
  else
  {
    CV.value |= (1 << bitno);
  }
  CVs.innerHTML = "Edited";
}

CS_Service.SelectAdvancedAck = function () {
  //console.log("*** SelectAdvancedAck()");
  /* CV29, bit 3 */
  var CV =  document.getElementById("CV29_Value"); 
  var CVs =  document.getElementById("CV29_State"); 
  var sel = document.getElementById("advanced-ack");
  if (sel == "disabled")
  {
    CV.value &= ~(1 << 3);
  }
  else
  {
    CV.value |= (1 << 3);
  }
  CVs.innerHTML = "Edited";
}

CS_Service.EditCV = function (cv) {
  console.log("*** EditCV("+cv+")");
}

CS_Service.ReadCV = function (cv) {
  console.log("*** ReadCV("+cv+")");
}

CS_Service.WriteCV = function (cv) {
  console.log("*** WriteCV("+cv+")");
}

CS_Service.CompareCV = function (cv) {
  console.log("*** CompareCV("+cv+")");
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

