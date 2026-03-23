/* -*- javascript -*- 
     Copyright 2026 Robert Heller
     All Rights Reserved
     System        : $BUFFER_NAME$ : 
     Object Name   : $RCS_FILE$
     Revision      : $REVISION$
     Date          : 2026-03-18 13:32:23
     Created By    : Robert Heller, Robert Heller
     Created       : 2026-03-18 13:32:23

     Last Modified : <260322.1615>
     ID            : $Id$
     Source        : $Source$
     Description	
     Notes
*/

let CS_Service = {};

function add_class(element, word)
{
  //console.log("*** add_class("+element+",'"+word+"')");
  element.classList.add(word);
}

function remove_class(element, word)
{
  //console.log("*** remove_class("+element+",'"+word+"')");
  element.classList.remove(word);
}
  

CS_Service.SelectShortAddress = function () {
  //console.log("*** SelectShortAddress()");
  /* Selects short address.  Tasks when selected:
   * CV 29 bit 5 = 0
   * document.getElementById("address").value = document.getElementById("primary-address").value
   * CV  1 = short address = document.getElementById("address").value
   * document.getElementById("address-format")
   */
  let address = document.getElementById("address");
  let short_address = document.getElementById("primary-address");
  let CV_29 = document.getElementById("CV29_Value");
  let CV_29s = document.getElementById("CV29_State");
  let CV_1 = document.getElementById("CV1_Value");
  let CV_1s = document.getElementById("CV1_State");
  address.value = short_address.value;
  CV_29.value &= ~(1<<5);
  CV_29s.innerHTML = "Edited";
  add_class(CV_29,"edited");
  CV_1.value = address.value & 0x0ff;
  add_class(CV_1,"edited");
  CV_1s.innerHTML = "Edited";
  let sel = document.getElementById("address-format");
  add_class(sel,"edited");
  sel.value = "short";
  add_class(document.getElementById("short"),"edited");
  add_class(document.getElementById("long"),"edited");
}

CS_Service.SelectLongAddress = function () {
  //console.log("*** SelectLongAddress()");
  /* Selects long address.  Tasks when selected: 
   * CV 29 bit 5 = 1
   * document.getElementById("address").value = document.getElementById("extended-address").value
   * CV 17 = upper 6 bits of long address | 0xc0
   * CV 18 = lower 8 bits of long address
   */
  let address = document.getElementById("address");
  let extended_address = document.getElementById("extended-address");
  let CV_29 = document.getElementById("CV29_Value");
  let CV_29s = document.getElementById("CV29_State");
  let CV_17 = document.getElementById("CV17_Value");
  //console.log("*** SelectLongAddress(): CV_17 is "+CV_17);
  let CV_17s = document.getElementById("CV17_State");
  let CV_18 = document.getElementById("CV18_Value");
  let CV_18s = document.getElementById("CV18_State");
  address.value = extended_address.value;
  CV_29.value |= 1<<5;
  add_class(CV_29,"edited");
  CV_29s.innerHTML = "Edited";
  let addr = address.value;
  let highbits = 0xc0 | ((addr >> 8)&0x3f);
  //console.log("*** SelectLongAddress(): highbits are "+highbits);
  CV_17.value = highbits;
  add_class(CV_17,"edited");
  CV_17s.innerHTML = "Edited";
  CV_18.value = addr && 0xff;
  add_class(CV_18,"edited");
  CV_18s.innerHTML = "Edited";
  let sel = document.getElementById("address-format");
  sel.value = "long";
  add_class(sel,"edited");
  add_class(document.getElementById("short"),"edited");
  add_class(document.getElementById("long"),"edited");
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
  let address = document.getElementById("address"); 
  let addr = address.value;
  if (document.getElementById("address-format").value == "long")
  {
    document.getElementById("extended-address").value = addr;
    let highbits = 0xc0 | ((addr >> 8)&0x3f);
    document.getElementById("CV17_Value").value = highbits;
    add_class(document.getElementById("CV17_Value"),"edited");
    document.getElementById("CV17_State").innerHTML = "Edited";
    document.getElementById("CV18_Value").value = addr & 0x0ff;
    add_class(document.getElementById("CV18_Value"),"edited");
    document.getElementById("CV18_State").innerHTML = "Edited";
  }
  else
  {
    document.getElementById("primary-address").value = addr & 0x0ff;
    document.getElementById("CV1_Value").value = addr & 0x07f;
    add_class(document.getElementById("CV1_Value"),"edited");
    document.getElementById("CV1_State").innerHTML = "Edited";
  }
     
}

CS_Service.UpdatePrimaryAddress = function () {
  //console.log("*** UpdatePrimaryAddress()");
  let address = document.getElementById("primary-address");
  let addr = address.value;
  if (document.getElementById("address-format").value == "short")
  {
    document.getElementById("address").value = addr;
    document.getElementById("CV1_Value").value = addr & 0x07f;
    add_class(document.getElementById("CV1_Value"),"edited");
    document.getElementById("CV1_State").innerHTML = "Edited";
  }
    
}

CS_Service.UpdateExtendedAddress = function () {
  //console.log("*** UpdateExtendedAddress()");
  let address = document.getElementById("extended-address");
  let addr = address.value;
  if (document.getElementById("address-format").value == "long")
  {
    document.getElementById("address").value = addr;
    let highbits = 0xc0 | ((addr >> 8)&0x3f);
    document.getElementById("CV17_Value").value = highbits;
    add_class(document.getElementById("CV17_Value"),"edited");
    document.getElementById("CV17_State").innerHTML = "Edited";
    document.getElementById("CV18_Value").value = addr & 0x0ff;
    add_class(document.getElementById("CV18_Value"),"edited");
    document.getElementById("CV18_State").innerHTML = "Edited";
  }
}

CS_Service.SelectAddressFormat = function () {
  //console.log("*** SelectAddressFormat()");
  add_class(document.getElementById("address-format"),"edited");
  if (document.getElementById("address-format").value == "long")
  {
    /* Selects long address.  Tasks when selected: 
     * CV 29 bit 5 = 1
     * document.getElementById("address").value = document.getElementById("extended-address").value
     * CV 17 = upper 6 bits of long address | 0xc0
     * CV 18 = lower 8 bits of long address
     */
    let address = document.getElementById("address");
    let extended_address = document.getElementById("extended-address");
    let CV_29 = document.getElementById("CV29_Value");
    add_class(CV_29,"edited");
    let CV_29s = document.getElementById("CV29_State");
    let CV_17 = document.getElementById("CV17_Value");
    add_class(CV_17,"edited");
    //console.log("*** SelectLongAddress(): CV_17 is "+CV_17);
    let CV_17s = document.getElementById("CV17_State");
    let CV_18 = document.getElementById("CV18_Value");
    add_class(CV_18,"edited");
    let CV_18s = document.getElementById("CV18_State");
    address.value = extended_address.value;
    CV_29.value |= 1<<5;
    CV_29s.innerHTML = "Edited";
    let addr = address.value;
    let highbits = 0xc0 | ((addr >> 8)&0x3f);
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
    let address = document.getElementById("address");
    let short_address = document.getElementById("primary-address");
    let CV_29 = document.getElementById("CV29_Value");
    add_class(CV_29,"edited");
    let CV_29s = document.getElementById("CV29_State");
    let CV_1 = document.getElementById("CV1_Value");
    add_class(CV_1,"edited");
    let CV_1s = document.getElementById("CV1_State");
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
  let CV_29 = document.getElementById("CV29_Value");
  add_class(CV_29,"edited");
  let CV_29s = document.getElementById("CV29_State");
  let dir = document.getElementById("direction");
  add_class(dir,"edited");
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
  let CV_29 = document.getElementById("CV29_Value");
  add_class(CV_29,"edited");
  let CV_29s = document.getElementById("CV29_State");
  let steps = document.getElementById("steps");
  add_class(steps,"edited"); 
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
  let CV_29 = document.getElementById("CV29_Value");
  add_class(CV_29,"edited");
  let CV_29s = document.getElementById("CV29_State");
  let power = document.getElementById("power");
  add_class(power,"edited"); 
  let otherpower = document.getElementById("power-source");
  add_class(otherpower,"edited");
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
  let CV_65 = document.getElementById("CV65_Value");
  add_class(CV_65,"edited");
  let CV_65s = document.getElementById("CV65_State");
  let kick = document.getElementById("kick");
  add_class(kick,"edited");
  CV_65.value = kick.value;
  CV_65s.innerHTML = "Edited";
}

CS_Service.SelectAccelerationRate = function () {
  //console.log("*** SelectAccelerationRate()");
  /* CV 3 */
  let CV_3 = document.getElementById("CV3_Value");
  add_class(CV_3,"edited");
  let CV_3s = document.getElementById("CV3_State");
  let accel = document.getElementById("accel");
  add_class(accel,"edited");
  CV_3.value = accel.value;
  CV_3s.innerHTML = "Edited";
}

CS_Service.SelectDecelerationRate = function () {
  //console.log("*** SelectDecelerationRate()");
  /* CV 4 */
  let CV_4 = document.getElementById("CV4_Value");
  add_class(CV_4,"edited");
  let CV_4s = document.getElementById("CV4_State");
  let decel = document.getElementById("decel");
  add_class(decel,"edited");
  CV_4.value = decel.value;
  CV_4s.innerHTML = "Edited"; 
}

CS_Service.SelectMotorFreq = function () {
  //console.log("*** SelectMotorFreq()");
  /* CV 9 (PWM) */
  let CV_9 = document.getElementById("CV9_Value");
  add_class(CV_9,"edited");
  let CV_9s  = document.getElementById("CV9_State"); 
  let freq = document.getElementById("freq");
  add_class(freq,"edited");
  CV_9.value = freq.value; 
  CV_9s.innerHTML = "Edited";
}

CS_Service.SelectBasicSpeed = function () {
  //console.log("*** SelectBasicSpeed()");
  /* CV 29 bit 4: 0 == basic speed */
  let CV_29 = document.getElementById("CV29_Value"); 
  add_class(CV_29,"edited");
  let CV_29s = document.getElementById("CV29_State");
  CV_29.value &= ~(1 << 4);
  CV_29s.innerHTML = "Edited";
}

CS_Service.SelectVStart = function () {
  //console.log("*** SelectVStart()");
  /* CV 2 */
  let CV_2 = document.getElementById("CV2_Value");
  add_class(CV_2,"edited");
  let CV_2s = document.getElementById("CV2_State");
  let vstart = document.getElementById("Vstart");
  add_class(vstart,"edited");
  add_class(document.getElementById("Vstart-value"),"edited");
  CV_2.value = vstart.value; 
  CV_2s.innerHTML = "Edited";
}

CS_Service.SelectVMid = function () {
  //console.log("*** SelectVMid()");
  /* CV 6 */
  let CV_6 = document.getElementById("CV6_Value");
  add_class(CV_6,"edited");
  let CV_6s = document.getElementById("CV6_State");
  let vmid = document.getElementById("Vmid");
  add_class(vmid,"edited");
  add_class(document.getElementById("Vmid-value"),"edited");
  CV_6.value = vmid.value;
  CV_6s.innerHTML = "Edited";
}

CS_Service.SelectVHigh = function () {
  //console.log("*** SelectVHigh()");
  /* CV 5 */
  let CV_5 = document.getElementById("CV5_Value");
  add_class(CV_5,"edited");
  let CV_5s = document.getElementById("CV5_State");
  let vhigh = document.getElementById("Vhigh");
  add_class(vhigh,"edited");
  add_class(document.getElementById("Vhigh-value"),"edited");
  CV_5.value = vhigh.value;
  CV_5s.innerHTML = "Edited";
}

CS_Service.SelectSpeedTable = function () {
  //console.log("*** SelectSpeedTable()");
  /* CV_29 bit 4: 1 == speed table */
  let CV_29 = document.getElementById("CV29_Value"); 
  add_class(CV_29,"edited");
  let CV_29s = document.getElementById("CV29_State");
  CV_29.value |= (1 << 4);
  CV_29s.innerHTML = "Edited";
}

CS_Service.SpeedTableBar = function(barnumber) {
  //console.log("*** SpeedTableBar("+barnumber+")");
  let bar = document.getElementById("b"+barnumber);
  add_class(bar,"edited");
  let barVal = document.getElementById("b"+barnumber+"Value");
  add_class(barVal,"edited");
  let CV =  document.getElementById("CV"+(barnumber+65)+"_Value");
  add_class(CV,"edited");
  let CVs =  document.getElementById("CV"+(barnumber+65)+"_State");
  let val = Number.parseInt(bar.value);
  CV.value = val;
  CVs.innerHTML = "Edited";
  barVal.innerHTML = val;
  //console.log("*** SpeedTableBar(): val is "+val);
  for (let next = barnumber+1; next <= 28; next++)
  {
    //console.log("*** SpeedTableBar(): next (going up) is "+next);
    let nextbar = document.getElementById("b"+next);
    let nextbarValue = document.getElementById("b"+next+"Value");
    let nextCV = document.getElementById("CV"+(next+65)+"_Value");
    let nextCVs = document.getElementById("CV"+(next+65)+"_State");
    //console.log("*** SpeedTableBar(): [up] nextbar.value is "+nextbar.value);
    if (val < Number.parseInt(nextbar.value)) break;
    nextbar.value = val;
    add_class(nextbar,"edited");
    nextbarValue.innerHTML = val;
    add_class(nextbarValue,"edited");
    nextCV.value = val;
    add_class(nextCV,"edited");
    nextCVs.innerHTML = "Edited";
  }
  for (next = barnumber-1; next >= 1; next--)
  {
    //console.log("*** SpeedTableBar(): next (going down) is "+next);
    let nextbar = document.getElementById("b"+next);
    let nextbarValue = document.getElementById("b"+next+"Value");
    let nextCV = document.getElementById("CV"+(next+65)+"_Value");
    let nextCVs = document.getElementById("CV"+(next+65)+"_State");
    //console.log("*** SpeedTableBar(): [down] nextbar.value is "+nextbar.value);
    if (val > Number.parseInt(nextbar.value)) break;
    nextbar.value = val;
    add_class(nextbar,"edited");
    nextbarValue.innerHTML = val;
    add_class(nextbarValue,"edited");
    nextCV.value = val;
    add_class(nextCV,"edited");
    nextCVs.innerHTML = "Edited";
  }
}

CS_Service.SpeedTableCheckbox = function(bar) {
  console.log("*** SpeedTableCheckbox()");
}

CS_Service.ServiceForceStraight = function () {
  //console.log("*** ServiceForceStraight()");
  let fraction = 255.0 / 27.0;
  for (let i = 1; i <= 28; i++)
  {
    let val = ((i-1)*fraction).toFixed();
    let bar = document.getElementById("b"+i);
    add_class(bar,"edited");
    let barVal = document.getElementById("b"+i+"Value");
    let CV =  document.getElementById("CV"+(i+66)+"_Value"); 
    let CVs =  document.getElementById("CV"+(i+66)+"_State");
    CV.value = val;
    add_class(CV,"edited");
    CVs.innerHTML = "Edited";
    barVal.innerHTML = val;
    add_class(barVal,"edited");
    bar.value = val;
  }
     
}

CS_Service.ServiceMatchEnds = function () {
  //console.log("*** ServiceMatchEnds()");
  let lowest = Number.parseInt(document.getElementById("b1").value);
  //console.log("*** ServiceMatchEnds(): lowest = "+lowest);
  let highest = Number.parseInt(document.getElementById("b28").value);
  //console.log("*** ServiceMatchEnds(): highest = "+highest);
  let fraction = (highest-lowest) / 27.0;
  //console.log("*** ServiceMatchEnds(): fraction = "+fraction);
  for (let i = 1; i <= 28; i++)
  {
    let val = (((i-1)*fraction)+lowest).toFixed();
    //console.log("*** ServiceMatchEnds(): @"+i+", val = "+val);
    let bar = document.getElementById("b"+i);
    add_class(bar,"edited");
    let barVal = document.getElementById("b"+i+"Value");
    let CV =  document.getElementById("CV"+(i+66)+"_Value"); 
    let CVs =  document.getElementById("CV"+(i+66)+"_State");
    CV.value = val;
    add_class(CV,"edited");
    CVs.innerHTML = "Edited";
    barVal.innerHTML = val;
    add_class(barVal,"edited");
    bar.value = val;
  }
  
}

CS_Service.ServiceConstantRatioCurve = function () {
  //console.log("*** ServiceConstantRatioCurve()");
  let first = Number.parseFloat(document.getElementById("b1").value);
  if (first < 1.0) first = 1.0;
  let last = Number.parseFloat(document.getElementById("b28").value);
  if (last < first + 1.0) last = first + 1.0;
  step = Math.log(last / first) / 27.0;
  //console.log("*** ServiceConstratioRatioCurve(): log ratio step is "+step);
  for (let i = 1; i <= 28; i++)
  {
    let val = Math.floor(first * Math.exp(step * (i-1))).toFixed();
    let bar = document.getElementById("b"+i);
    let barVal = document.getElementById("b"+i+"Value");
    let CV =  document.getElementById("CV"+(i+66)+"_Value"); 
    let CVs =  document.getElementById("CV"+(i+66)+"_State");
    CV.value = val;
    add_class(CV,"edited");
    CVs.innerHTML = "Edited";
    barVal.innerHTML = val;
    add_class(barVal,"edited");
    bar.value = val;
    add_class(bar,"edited");
  }
}

CS_Service.ServiceLogCurve = function () {
  //console.log("*** ServiceLogCurve()");
  let first = Number.parseFloat(document.getElementById("b1").value);
  let last = Number.parseFloat(document.getElementById("b28").value);
  if (last < first + 1.0) last = first + 1.0;
  let factor = 1.0 / 10.0;
  let ratio = Math.pow(1.0 - factor, 27.0);
  let limit = last + (last - first) * ratio;
  for (let i = 2; i <= 28; i++)
  {
    let previous = limit - (limit - first) * ratio / Math.pow(1. - factor, 27.0 - (i-1));
    let val = Math.floor(previous).toFixed();
    let bar = document.getElementById("b"+i);
    let barVal = document.getElementById("b"+i+"Value");
    let CV =  document.getElementById("CV"+(i+66)+"_Value"); 
    let CVs =  document.getElementById("CV"+(i+66)+"_State");
    CV.value = val;
    add_class(CV,"edited"); 
    CVs.innerHTML = "Edited";
    barVal.innerHTML = val;
    add_class(barVal,"edited");
    bar.value = val;
    add_class(bar,"edited");
  }
  
}

CS_Service.ServiceShiftLeft = function () {
  //console.log("*** ServiceShiftLeft()");
  let val = Number.parseInt(document.getElementById("b28").value);
  for (let i = 27; i >= 1; i--)
  {
    let nextval = Number.parseInt(document.getElementById("b"+i).value);
    let bar = document.getElementById("b"+i);
    let barVal = document.getElementById("b"+i+"Value");
    let CV =  document.getElementById("CV"+(i+66)+"_Value"); 
    let CVs =  document.getElementById("CV"+(i+66)+"_State");
    CV.value = val;
    add_class(CV,"edited");
    CVs.innerHTML = "Edited";
    barVal.innerHTML = val;
    add_class(barVal,"edited");
    bar.value = val;
    add_class(bar,"edited");
    val = nextval;

  }
}

CS_Service.ServiceShiftRight = function () {
  //console.log("*** ServiceShiftRight()");
  let val = Number.parseInt(document.getElementById("b1").value);
  for (let i = 2; i <= 28; i++)
  {
    let nextval = Number.parseInt(document.getElementById("b"+i).value);
    let bar = document.getElementById("b"+i);
    let barVal = document.getElementById("b"+i+"Value");
    let CV =  document.getElementById("CV"+(i+66)+"_Value"); 
    let CVs =  document.getElementById("CV"+(i+66)+"_State");
    CV.value = val;
    add_class(CV,"edited");
    CVs.innerHTML = "Edited";
    barVal.innerHTML = val;
    add_class(barVal,"edited");
    bar.value = val;
    add_class(bar,"edited");
    val = nextval;
  }
}

CS_Service.SelectFunctionMap = function(funct,wire,forward=true) {
  //console.log("*** SelectFunctionMap("+funct+","+wire+","+forward+")");
  let CVNum = 0;
  let shiftOffset = 0;
  let checkbox;
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
  let CV = document.getElementById("CV"+CVNum+"_Value");
  let CVs = document.getElementById("CV"+CVNum+"_State");
  //console.log("*** SelectFunctionMap(), checkbox.checked is '"+checkbox.checked+"')");
  add_class(checkbox,"edited");
  if (checkbox.checked) {
    /* checked */
    CV.value |= (1 << (wire+shiftOffset));
  }
  else
  {
    CV.value &= ~(1 << (wire+shiftOffset));
  }
  add_class(CV,"edited"); 
  CVs.innerHTML = "Edited";
}

CS_Service.SelectDitchLightHold = function () { 
  console.log("*** SelectDitchLightHold()");
  /* CV 118? */
  let CV = document.getElementById("CV118_Value");
  let CVs = document.getElementById("CV118_State");
  let ditch = document.getElementById("ditch-light-hold");
  add_class(CV,"edited");
  add_class(ditch,"edited");
  CV.value = ditch.value;
  CVs.innerHTML = "Edited";
}

CS_Service.SelectLightingEffectsPage = function () {
  console.log("*** SelectLightingEffectsPage()");
  /* CV 119? */
  let CV = document.getElementById("CV119_Value");
  let CVs = document.getElementById("CV119_State");
  let lighteffects = document.getElementById("light-effects-page");
  CV.value = lighteffects.value;
  add_class(CV,"edited");
  add_class(lighteffects,"edited");
  CVs.innerHTML = "Edited";
}

CS_Service.SelectOutputEffectGenerated = function (output) {
  //console.log("*** SelectOutputEffectGenerated()");
  let sel = document.getElementById("O"+output+"_effect");
  add_class(sel,"edited");
  let CV = document.getElementById("CV"+(119+output)+"_Value");
  add_class(CV,"edited");
  let CVs = document.getElementById("CV"+(119+output)+"_State");
  let val = CV.value & 0b10000011;
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
  let sel = document.getElementById("O"+output+"_active");
  add_class(sel,"edited");
  let CV = document.getElementById("CV"+(119+output)+"_Value");
  add_class(CV,"edited");
  let CVs = document.getElementById("CV"+(119+output)+"_State");
  let val = CV.value & 0b11111100;
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
  let sel = document.getElementById("O"+output+"_connected");
  add_class(sel,"edited");
  let CV = document.getElementById("CV"+(119+output)+"_Value");
  add_class(CV,"edited");
  let CVs = document.getElementById("CV"+(119+output)+"_State");
  let val = CV.value & 0b01111111;
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
  let CV_29 = document.getElementById("CV29_Value");
  add_class(CV_29,"edited");
  let CV_29s = document.getElementById("CV29_State");
  let power = document.getElementById("power-source");
  let otherpower = document.getElementById("power");
  add_class(power,"edited");
  add_class(otherpower,"edited");
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
  let CV =  document.getElementById("CV19_Value");
  add_class(CV,"edited");
  let CVs =  document.getElementById("CV19_State");
  let consist_address =  document.getElementById("consist-address");
  add_class(consist_address,"edited");
  let olddir = CV.value & 0b10000000;
  CV.value = (consist_address.value & 0b01111111) | olddir;
  CVs.innerHTML = "Edited";
}

CS_Service.SelectDirectionInConsist = function () {
  //console.log("*** SelectDirectionInConsist()");
  let CV =  document.getElementById("CV19_Value");
  add_class(CV,"edited");
  let CVs =  document.getElementById("CV19_State");
  let sel = document.getElementById("direction-in-consist");
  add_class(sel,"edited");
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
  let CV =  document.getElementById("CV23_Value");
  add_class(CV,"edited");
  let CVs =  document.getElementById("CV23_State");
  let val = document.getElementById("accel-adj").value & 0b01111111;;
  add_class(document.getElementById("accel-adj"),"edited");
  let sign = CV.value & 0b10000000;
  CV.value = sign | val;
  CVs.innerHTML = "Edited";
}

CS_Service.SetConsistAccelerationAdjSign = function () {
  //console.log("*** SetConsistAccelerationAdjSign()");
  /* CV23 */ 
  let CV =  document.getElementById("CV23_Value");
  add_class(CV,"edited");
  let CVs =  document.getElementById("CV23_State");
  let sel =  document.getElementById("accel-sign");
  add_class(sel,"edited");
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
  let CV =  document.getElementById("CV24_Value");
  add_class(CV,"edited");
  let CVs =  document.getElementById("CV24_State");
  let val = document.getElementById("decel-adj").value & 0b01111111;;
  add_class(document.getElementById("decel-adj"),"edited");
  let sign = CV.value & 0b10000000;
  CV.value = sign | val;
  CVs.innerHTML = "Edited";
}

CS_Service.SetConsistDecelerationAdjSign = function () {
  //console.log("*** SetConsistDecelerationAdjSign()");
  /* CV24 */
  let CV =  document.getElementById("CV24_Value");
  add_class(CV,"edited");
  let CVs =  document.getElementById("CV24_State");
  let sel =  document.getElementById("decel-sign");
  add_class(sel,"edited");
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
  let selname;
  let bitno;
  let cvnum;
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
  let CV =  document.getElementById("CV"+cvnum+"_Value");
  add_class(CV,"edited");
  let CVs =  document.getElementById("CV"+cvnum+"_State");
  let bitval = Number.parseInt(document.getElementById(selname).value);
  add_class(document.getElementById(selname),"edited");
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
  let CV =  document.getElementById("CV29_Value"); 
  add_class(CV,"edited");
  let CVs =  document.getElementById("CV29_State"); 
  let sel = document.getElementById("advanced-ack");
  add_class(sel,"edited");
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

function UpdateFromCV(cv) {
  console.log("*** UpdateFromCV("+cv+")");
  let CV = document.getElementById("CV"+cv+"_Value");
  add_class(CV,"edited");
  //let CVs = document.getElementById("CV"+cv+"_State");
  let val = Number.parseInt(CV.value);
  switch (cv)
  {
  case 1:
    {
      let pa = document.getElementById("primary-address");
      add_class(pa,"edited");
      pa.value = val & 0b01111111;
      let sel = document.getElementById("address-format");
      if (sel.value == "short")
      {
        let address = document.getElementById("address");
        address.value = pa.value;
        add_class(address,"edited");
      }
    }
    break;
  case 2:
    {
      let vstart = document.getElementById("Vstart");
      vstart.value = val;
      add_class(vstart,"edited");
      vstart= document.getElementById("Vstart-value");
      vstart.value = val;
      add_class(vstart,"edited");
    }
    break;
  case 3:
    {
      let accel = document.getElementById("accel");
      accel.value = CV.value;
      add_class(accel,"edited");
    }
    break;
  case 4:
    {
      let decel = document.getElementById("decel");
      add_class(decel,"edited");
      decel.value = CV.value;
    }
    break;
  case 5:
    {
      let vhigh = document.getElementById("Vhigh");
      vhigh.value = CV.value;
      add_class(vhigh,"edited");
      vhigh = document.getElementById("Vhigh-value");
      vhigh.value = CV.value;
      add_class(vhigh,"edited");
    }
    break;
  case 6:
    {
      let vmid = document.getElementById("Vmid");
      vmid.value = CV.value;
      add_class(vmid,"edited");
      vmid = document.getElementById("Vmid-value");
      vmid.value = CV.value;
      add_class(vmid,"edited");
    }
    break;
  case 7:
    document.getElementById("man-version").value = val;
    break;
  case 8:
    document.getElementById("man-id").value = val;
    break;
  case 9:
    {
      let freq = document.getElementById("freq");
      add_class(freq,"edited");
      freq.value = CV.value;
    }
    break;
  case 17:
    {
      let highbits = (val & 0b00111111)<<8;
      let extended_address = document.getElementById("extended-address");
      let addr = extended_address.value;
      extended_address.value = highbits | (addr & 0x0ff);
      add_class(extended_address,"edited");
      if (document.getElementById("address-format").value == "long")
      {
        document.getElementById("address").value = extended_address.value;
        add_class(document.getElementById("address"),"edited");
      }
    }
    break;
  case 18:
    {
      let extended_address = document.getElementById("extended-address");
      let addr = extended_address.value;
      extended_address.value = val | (addr & 0x0ff00);
      add_class(extended_address,"edited");
      if (document.getElementById("address-format").value == "long")
      {
        document.getElementById("address").value = extended_address.value;
        add_class(document.getElementById("address"),"edited");
      }
    }
    break;
  case 19:
    {
      let consist_address =  document.getElementById("consist-address");
      add_class(consist_address,"edited");
      consist_address.value = val & 0x01111111;
      let sel = document.getElementById("direction-in-consist"); 
      add_class(sel,"edited");
      if ((val & 0b10000000) == 0)
      {
        sel.value = "normal";
      }
      else
      {
        sel.value = "reversed";
      }
    }
    break;
  case 21:
    {
      for (let i = 0; i < 8; i++)
      {
        let bit = (val >> i) & 1;
        let sel = document.getElementById("consist-F"+(i+1));
        sel.value = bit;
        add_class(sel,"edited");
      }
    }
    break;
  case 22:
    {
      let fbit = val & 1;
      let rbit = (val >> 1) & 1;
      let fsel = document.getElementById("consist-F0F");
      let rsel = document.getElementById("consist-F0R");
      fsel.value = fbit;
      rsel.value = rbit;
      add_class(fsel,"edited");
      add_class(rsel,"edited");
    }
    break;
  case 23:
    {
      document.getElementById("accel-adj").value = val & 0b01111111;
      add_class(document.getElementById("accel-adj"),"edited");
      let signsel = document.getElementById("accel-sign");
      if ((val & 0b10000000) == 0)
      {
        signsel.value = "+";
      }
      else
      {
        signsel.value = "-";
      }
      add_class(signsel,"edited");
    }
    break;
  case 24:
    {
      document.getElementById("decel-adj").value = val & 0b01111111;
      add_class(document.getElementById("decel-adj"),"edited");
      let signsel = document.getElementById("decel-sign");
      if ((val & 0b10000000) == 0)
      {
        signsel.value = "+";
      }
      else
      {
        signsel.value = "-";
      }
      add_class(signsel,"edited");
    }
    break;
  case 29:
    {
      let dirsel = document.getElementById("direction");
      if ((val & 1) == 0)
      {
        dirsel.value = "normal";
      }
      else
      {
        dirsel.value = "reversed";
      }
      add_class(dirsel,"edited");
      let steps = document.getElementById("steps");
      if ((val & (1 >> 1)) == 0)
      {
        steps.value = "14";
      }
      else
      {
        steps.value = "28";
      }
      add_class(steps,"edited");
      let power = document.getElementById("power");
      let power_source = document.getElementById("power-source");
      if ((val & (1<<2)) == 0)
      {
        power.value = "dcc";
        power_source.value = "dcc";
      }
      else
      {
        power.value = "dc";
        power_source.value = "dc";
      }
      add_class(power,"edited");
      add_class(power_source,"edited");
      let advanced_ack = document.getElementById("advanced-ack");
      if ((val & (1 << 3)) == 0)
      {
        advanced_ack.value = "disabled";
      }
      else
      {
        advanced_ack.value = "enabled";
      }
      add_class(advanced_ack,"edited");
      let basic = document.getElementById("basic-speed");
      let table = document.getElementById("speed-table");
      if ((val & (1 << 4)) == 0)
      {
        basic.checked = true;
        table.checked = false;
      }
      else
      {
        basic.checked = false;
        table.checked = true;
      }
      add_class(basic,"edited");
      add_class(table,"edited");
      let short = document.getElementById("short");
      let long  = document.getElementById("long");
      let lssel = document.getElementById("address-format");
      let address = document.getElementById("address");
      let prim_address = document.getElementById("primary-address");
      let ext_address  = document.getElementById("extended-address");
      if ((val & (1 << 5)) == 0)
      {
        // short
        short.checked = true;
        long.checked  = false;
        lssel.value = "short";
        address.value = prim_address.value;
      }
      else
      {
        // long
        short.checked = false;
        long.checked  = true;
        lssel.value = "long";
        address.value = ext_address.value;
      }
    }
    break;
  case 33:
    {
      for (let i=0; i < 4; i++)
      {
        let checkbox = document.getElementById("F0_f-"+(i+1));
        if ((val & (1 << i)) == 0)
        {
          checkbox.checked = false;
        }
        else
        {
          checkbox.checked = true;
        }
        add_class(checkbox,"edited");
      }
    }
    break;
  case 34:
    {
      for (let i=0; i < 4; i++)
      {
        let checkbox = document.getElementById("F0_r-"+(i+1));
        if ((val & (1 << i)) == 0)
        {
          checkbox.checked = false;
        }
        else
        {
          checkbox.checked = true;
        }
        add_class(checkbox,"edited");
      }
    }
    break;
  case 35:
    {
      for (let i=0; i < 4; i++)
      {
        let checkbox = document.getElementById("F1-"+(i+1));
        if ((val & (1 << i)) == 0)
        {
          checkbox.checked = false;
        }
        else
        {
          checkbox.checked = true;
        }
        add_class(checkbox,"edited");
      }
    }
    break;
  case 36:
    {
      for (let i=0; i < 4; i++)
      {
        let checkbox = document.getElementById("F2-"+(i+1));
        if ((val & (1 << i)) == 0)
        {
          checkbox.checked = false;
        }
        else
        {
          checkbox.checked = true;
        }
        add_class(checkbox,"edited");
      }
    }
    break;
  case 37:
    {
      for (let i=0; i < 4; i++)
      {
        let checkbox = document.getElementById("F3-"+(i+1));
        if ((val & (1 << i)) == 0)
        {
          checkbox.checked = false;
        }
        else
        {
          checkbox.checked = true;
        }
        add_class(checkbox,"edited");
      }
    }
    break;
  case 38:
    {
      checkbox = document.getElementById("F4-4");
      if ((val & 1) == 0)
      {
        checkbox.checked = false;
      }
      else
      {
        checkbox.checked = true;
      }
      add_class(checkbox,"edited");
    }
    break;
  case 39:
    {
      checkbox = document.getElementById("F5-4");
      if ((val & 1) == 0)
      {
        checkbox.checked = false;
      }
      else
      {
        checkbox.checked = true;
      }
      add_class(checkbox,"edited");
    }
    break;
  case 40:
    {
      checkbox = document.getElementById("F6-4");
      if ((val & 1) == 0)
      {
        checkbox.checked = false;
      }
      else
      {
        checkbox.checked = true;
      }
      add_class(checkbox,"edited");
    }
    break;
  case 65:
    {
      let kick = document.getElementById("kick");
      kick.value = val;
      add_class(kick,"edited");
    }
    break;
  case 66:
    break;
  case 67:
  case 68:
  case 69:
  case 70:
  case 71:
  case 72:
  case 73:
  case 74:
  case 75:
  case 76:
  case 77:
  case 78:
  case 79:
  case 80:
  case 81:
  case 82:
  case 83:
  case 84:
  case 85:
  case 86:
  case 87:
  case 88:
  case 89:
  case 90:
  case 91:
  case 92:
  case 93:
  case 94:
    {
      let barnumber = cv - 66;
      let bar = document.getElementById("b"+barnumber);
      add_class(bar,"edited");
      let barVal = document.getElementById("b"+barnumber+"Value");
      add_class(barVal,"edited");
      bar.value = val;
      barVal.innerHTML = val;
    }
    break;
  case 118:
    {
      let ditch = document.getElementById("ditch-light-hold");
      add_class(ditch,"edited");
      ditch.value = val;
    }
    break;
  case 119:
    {
      let lighteffects = document.getElementById("light-effects-page");
      lighteffects.value = val;
      add_class(lighteffects,"edited");
    }
    break;
  case 120:
  case 122:
  case 123:
    {
      let output = cv - 119;
      let sel_effect = document.getElementById("O"+output+"_effect");
      add_class(sel_effect,"edited");
      let effects = (val & 0b01111100);
      switch (effects)
      {
      case 0: //   000000
        sel_effect.value = "standard";
        break;
      case 8: // 001000
        sel_effect.value = "mars";
        break;
      case 12: // 001100
        sel_effect.value = "rotary";
        break;
      case 16: // 010000
        sel_effect.value = "gyralight";
        break;
      case 20: // 010100
        sel_effect.value = "double";
        break;
      case 24: // 011000
        sel_effect.value = "A";
        break;
      case 28: // 011100
        sel_effect.value = "B";
        break;
      case 32: // 100000
        sel_effect.value = "dim";
        break;
      default:
        break;
      }
      let sel_active = document.getElementById("O"+output+"_actiuve");
      add_class(sel_active,"edited");
      let active = val & 0b00000011;
      switch (active)
      {
      case 0: // 00
        sel_active.value = "both";
        break;
      case 1: //01
        sel_active.value = "forward";
        break;
      case 2: //10
        sel_active.value = "reverse";
        break;
      default:
        break;
      }
      let sel_connected = document.getElementById("O"+output+"_actiuve");
      add_class(sel_connected,"edited");
      conn = (val & 0b10000000) >> 7;
      if (conn == 0)
      {
        sel_connected = "incand";
      }
      else
      {
        sel_connected = "led";
      }
    }
    break;
  default:
    break;
  }
}

function ClearEditFlagCV(cv) {
  console.log("*** UpdateFromCV("+cv+")");
  let CV = document.getElementById("CV"+cv+"_Value");
  remove_class(CV,"edited");
  //let CVs = document.getElementById("CV"+cv+"_State");
  //let val = Number.parseInt(CV.value);
  switch (cv)
  {
  case 1:
    {
      let pa = document.getElementById("primary-address");
      remove_class(pa,"edited");
      let sel = document.getElementById("address-format");
      if (sel.value == "short")
      {
        let address = document.getElementById("address"); 
        remove_class(address,"edited");
      }
    }
    break;
  case 2:
    {
      let vstart = document.getElementById("Vstart");
      remove_class(vstart,"edited"); 
      vstart= document.getElementById("Vstart-value");
      remove_class(vstart,"edited");
    }
    break;
  case 3:
    {
      let accel = document.getElementById("accel"); 
      remove_class(accel,"edited");
    }
    break;
  case 4:
    {
      let decel = document.getElementById("decel");
      remove_class(accel,"edited");
    }
    break;
  case 5:
    {
      let vhigh = document.getElementById("Vhigh");
      remove_class(vhigh,"edited");
      vhigh = document.getElementById("Vhigh-value");
      remove_class(vhigh,"edited");
    }
    break;
  case 6:
    {
      let vmid = document.getElementById("Vmid"); 
      remove_class(vmid,"edited");
      vmid = document.getElementById("Vmid-value");
      remove_class(vmid,"edited");
    }
    break;
  case 9:
    {
      let freq = document.getElementById("freq");
      remove_class(freq,"edited");
    }
    break;
  case 17:
    {
      let extended_address = document.getElementById("extended-address");
      remove_class(extended_address,"edited");
      if (document.getElementById("address-format").value == "long")
      {
        remove_class(document.getElementById("address"),"edited");
      }
    }
    break;
  case 18:
    {
      let extended_address = document.getElementById("extended-address");
      remove_class(extended_address,"edited");
      if (document.getElementById("address-format").value == "long")
      {
        remove_class(document.getElementById("address"),"edited");
      }
    }
    break;
  case 19:
    {
      remove_class(document.getElementById("consist-address"),"edited");
      remove_class(document.getElementById("direction-in-consist"),"edited");
    }
    break;
  case 21:
    {
      for (let i = 1; i <= 8; i++)
      {
        remove_class(document.getElementById("consist-F"+i),"edited");
      }
    }
    break;
  case 22:
    {
      remove_class(document.getElementById("consist-F0F"),"edited");
      remove_class(document.getElementById("consist-F0R"),"edited");
    }
    break;
  case 23:
    {
      remove_class(document.getElementById("accel-adj"),"edited");
      remove_class(document.getElementById("accel-sign"),"edited");
    }
    break;
  case 24:
    {
      remove_class(document.getElementById("decel-adj"),"edited");
      remove_class(document.getElementById("decel-sign"),"edited");
    }
    break;
  case 29:
    {
      remove_class(document.getElementById("direction"),"edited");
      remove_class(document.getElementById("steps"),"edited");
      remove_class(document.getElementById("power"),"edited");
      remove_class(document.getElementById("power-source"),"edited");
      remove_class(document.getElementById("advanced-ack"),"edited");
      remove_class(document.getElementById("basic-speed"),"edited");
      remove_class(document.getElementById("speed-table"),"edited");
      remove_class(document.getElementById("short"),"edited");
      remove_class(document.getElementById("long"),"edited");
      remove_class(document.getElementById("address-format"),"edited");
      remove_class(document.getElementById("address"),"edited");
      remove_class(document.getElementById("primary-address"),"edited");
      remove_class(document.getElementById("extended-address"),"edited");
    }
    break;
  case 33:
    {
      for (let i=1; i <= 4; i++)
      {
        remove_class(document.getElementById("F0_f-"+i),"edited");
      }
    }
    break;
  case 34:
    {
      for (let i=1; i <= 4; i++)
      {
        remove_class(document.getElementById("F0_r-"+i),"edited");
      }
    }
    break;
  case 35:
    {
      for (let i=1; i <= 4; i++)
      {
        remove_class(document.getElementById("F1-"+i),"edited");
      }
    }
    break;
  case 36:
    {
      for (let i=1; i <= 4; i++)
      {
        remove_class(document.getElementById("F2-"+i),"edited");
      }
    }
    break;
  case 37:
    {
      for (let i=1; i <= 4; i++)
      {
        remove_class(document.getElementById("F3-"+i),"edited");
      }
    }
    break;
  case 38:
    {
      remove_class(document.getElementById("F4-4"),"edited"); 
    }
    break;
  case 39:
    {
      remove_class(document.getElementById("F5-4"),"edited"); 
    }
    break;
  case 40:
    {
      remove_class(document.getElementById("F6-4"),"edited"); 
    }
    break;
  case 65:
    {
      remove_class(document.getElementById("kick"),"edited");
    }
    break;
  case 66:
    break;
  case 67:
  case 68:
  case 69:
  case 70:
  case 71:
  case 72:
  case 73:
  case 74:
  case 75:
  case 76:
  case 77:
  case 78:
  case 79:
  case 80:
  case 81:
  case 82:
  case 83:
  case 84:
  case 85:
  case 86:
  case 87:
  case 88:
  case 89:
  case 90:
  case 91:
  case 92:
  case 93:
  case 94:
    {
      let barnumber = cv - 66;
      let bar = document.getElementById("b"+barnumber);
      remove_class(bar,"edited");
      let barVal = document.getElementById("b"+barnumber+"Value");
      remove_class(barVal,"edited");
    }
    break;
  case 118:
    {
      remove_class(document.getElementById("ditch-light-hold"),"edited");
    }
    break;
  case 119:
    {
      remove_class(document.getElementById("light-effects-page"),"edited");
    }
    break;
  case 120:
  case 122:
  case 123:
    {
      let output = cv - 119;
      let sel_effect = document.getElementById("O"+output+"_effect");
      remove_class(sel_effect,"edited");
      let sel_active = document.getElementById("O"+output+"_actiuve");
      remove_class(sel_active,"edited");
      let sel_connected = document.getElementById("O"+output+"_actiuve");
      remove_class(sel_connected,"edited"); 
    }
    break;
  default:
    break;
  }
}

CS_Service.EditCV = function (cv) {
  console.log("*** EditCV("+cv+")");
  //CV = document.getElementById("CV"+cv+"_Value");
  UpdateFromCV(cv);
  CVs = document.getElementById("CV"+cv+"_State");
  CVs.innerHTML = "Edited";
}

CS_Service.ReadCV = function (cv) {
  console.log("*** ReadCV("+cv+")");
  let url = "/command/readcv?addrCV="+cv;
  let method = "GET";
  let async = true;
  let request = new XMLHttpRequest();
  request.onreadystatechange = function() {
    if (request.readyState != 4) {
      return;
    }
    let status = parseInt(request.status);
    console.log("*** ReadCV() (request.onreadystatechange): status is "+status);
    let errorInfo = null;
    let response = request.response;
    console.log("*** ReadCV() (request.onreadystatechange): response is'"+response+"'");
    let pattern = /#servicemode# load (\d+) (\d+)\r\n/g;
    let match = pattern.exec(response);
    if (match)
    {
      let cv = parseInt(match[1]);
      console.log("*** ReadCV() (request.onreadystatechange): cv is "+cv);
      let val = parseInt(match[2]);
      console.log("*** ReadCV() (request.onreadystatechange): val is "+val);
      if (val < 0)
      {
        return;
      }
      let CV = document.getElementById("CV"+cv+"_Value");
      CV.value = val;
      let CVs = document.getElementById("CV"+cv+"_State");
      UpdateFromCV(cv);
      ClearEditFlagCV(cv);
      CVs.innerHTML = "From Decoder";
    }
  }
  request.open(method, url, async);
  request.send();
}

CS_Service.WriteCV = function (cv) {
  console.log("*** WriteCV("+cv+")");
  let CV = document.getElementById("CV"+cv+"_Value");
  let url = "/command/writeprogcvbyte?address="+cv+"&value="+CV.value;
  let method = "GET"; 
  let async = true; 
  let request = new XMLHttpRequest();
  request.onreadystatechange = function() {
    if (request.readyState != 4) {
      return; 
    }
    let status = parseInt(request.status);
    console.log("*** WriteCV() (request.onreadystatechange): status is "+status);
    let errorInfo = null;
    let response = request.response; 
    console.log("*** WriteCV() (request.onreadystatechange): response is'"+response+"'");
    let pattern = /#servicemode# updatebyte (\d+) (\d+) (\d+)\r\n/g;
    let match = pattern.exec(response);
    if (match)
    {
      let cv = parseInt(match[1]);
      console.log("*** WriteCV() (request.onreadystatechange): cv = "+cv);
      let val = parseInt(match[2]);
      console.log("*** WriteCV() (request.onreadystatechange): val = "+val);
      let wstatus = parseInt(match[3]);
      if (wstatus == 1)
      {
        let CVs = document.getElementById("CV"+cv+"_State");
        ClearEditFlagCV(cv);
        CVs.innerHTML = "Written to decoder";
      }
    }
  }
  request.open(method, url, async);
  request.send();
}

CS_Service.CompareCV = function (cv) {
  console.log("*** CompareCV("+cv+")");
  CV = document.getElementById("CV"+cv+"_Value");
  CVs = document.getElementById("CV"+cv+"_State");
  CVs.innerHTML = "Compared to decoder";
}


function ReadIfChanged(cv) {
  console.log("*** ReadIfChanged("+cv+")");
  let CV = document.getElementById("CV"+cv+"_Value");
  console.log("*** ReadIfChanged(): CV = "+CV);
  
  if (CV.classList.contains("edited"))
  {
    CS_Service.ReadCV(cv);
  }
}


function ReadChanges(cvs) {
  console.log("*** ReadChanges("+cvs+")");
  for (let i=0; i < cvs.length; i++)
  {
    ReadIfChanged(cvs[i]);
  }
}



CS_Service.ReadChangesOnSheet = function () {
  console.log("*** ReadChangesOnSheet()");
  if (document.getElementById("one").checked)
  {
    // Basic
    const cvs = [1, 7, 8, 17, 18, 29];
    ReadChanges(cvs);
  }
  else if (document.getElementById("two").checked)
  {
    // Motor
    const cvs = [3, 4, 9, 65];
    ReadChanges(cvs);
  }
  else if (document.getElementById("three").checked)
  {
    // Basic Speed Control
    const cvs = [2, 6, 5];
    ReadChanges(cvs);
  }
  else if (document.getElementById("four").checked)
  {
    // Speed Table
    const cvs = [67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 
              80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94];
    ReadChanges(cvs);
  }
  else if (document.getElementById("five").checked)
  {
    // Function Map
    const cvs = [33, 34, 35, 36, 37, 38, 39, 40];
    ReadChanges(cvs);
  }
  else if (document.getElementById("six").checked)
  {
    // Lights
    const cvs = [118, 119, 120, 121, 122, 123];
    ReadChanges(cvs);
  }
  else if (document.getElementById("seven").checked)
  {
    // Analog Controls
    const cvs = [29];
    ReadChanges(cvs);
  }
  else if (document.getElementById("eight").checked)
  {
    // Consist
    const cvs = [19, 21, 22, 23, 24];
    ReadChanges(cvs);
  }
  else if (document.getElementById("nine").checked)
  {
    // Advanced
    const cvs = [29];
    ReadChanges(cvs); 
  }
  else if (document.getElementById("ten").checked)
  {
    // Sound
  }
  else if (document.getElementById("eleven").checked)
  {
    // Sound Levels
  }
  else if (document.getElementById("twelve").checked)
  {
    // CVs
    const cvs=[1, 2, 3, 4, 5, 6, 7, 8, 9, 17, 18, 19, 21, 22, 23, 24, 33, 
              34, 35, 36, 37, 38, 39, 40, 65, 66, 67, 68, 69, 70, 
              71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 
              81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 
              91, 92, 93, 94, 
              118, 119, 120, 121, 122, 123];
    ReadChanges(cvs);
                        
  }
}

function WriteIfChanged(cv) {
  let CV = document.getElementById("CV"+cv+"_Value");
  if (CV.classList.contains("edited"))
  {
    CS_Service.WriteCV(cv);
  }
}

function WriteChanges(cvs) {
  console.log("*** WriteChanges("+cvs+")");
  for (let i = 0; i < cvs.length; i++)
  {
    WriteIfChanged(cvs[i]);
  }
}

CS_Service.WriteChangesOnSheet = function () {
  console.log("*** WriteChangesOnSheet()");
  if (document.getElementById("one").checked)
  {
    // Basic
    const cvs = [1, 7, 8, 17, 18, 29];
    WriteChanges(cvs);
  }
  else if (document.getElementById("two").checked)
  {
    // Motor
    const cvs = [3, 4, 9, 65];
    WriteChanges(cvs);
  }
  else if (document.getElementById("three").checked)
  {
    // Basic Speed Control
    const cvs = [2, 6, 5];
    WriteChanges(cvs);
  }
  else if (document.getElementById("four").checked)
  {
    // Speed Table
    const cvs = [67, 68, 69, 70, 71, 72, 73 ,74, 75, 76, 77, 78, 79, 
              80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94];
    WriteChanges(cvs);
  }
  else if (document.getElementById("five").checked)
  {
    // Function Map
    const cvs = [33, 34, 35, 36, 37, 38, 39, 40];
    WriteChanges(cvs);
  }
  else if (document.getElementById("six").checked)
  {
    // Lights
    const cvs = [118, 119, 120, 121, 122, 123];
    WriteChanges(cvs);
  }
  else if (document.getElementById("seven").checked)
  {
    // Analog Controls
    const cvs = [29];
    WriteChanges(cvs);
  }
  else if (document.getElementById("eight").checked)
  {
    // Consist
    const cvs = [19, 21, 22, 23, 24];
    WriteChanges(cvs);
  }
  else if (document.getElementById("nine").checked)
  {
    // Advanced
    const cvs = [29];
    WriteChanges(cvs); 
  }
  else if (document.getElementById("ten").checked)
  {
    // Sound
  }
  else if (document.getElementById("eleven").checked)
  {
    // Sound Levels
  }
  else if (document.getElementById("twelve").checked)
  {
    // CVs
    const cvs=[1, 2, 3, 4, 5, 6, 7, 8, 9, 17, 18, 19, 21, 22, 23, 24, 33, 
              34, 35, 36, 37, 38, 39, 40, 65, 66, 67, 68, 69, 70, 
              71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 
              81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 
              91, 92, 93, 94, 
              118, 119, 120, 121, 122, 123];
    WriteChanges(cvs);
                        
  }
}

function CompareIfChanged(cv) {
  let CV = document.getElementById("CV"+cv+"_Value");
  if (CV.classList.contains("edited"))
  {
    CS_Service.CompareCV(cv);
  }
}

function CompareChanges(cvs) {
  console.log("*** CompareChanges("+cvs+")");
  for (let i = 0; i < cvs.length; i++)
  {
    CompareIfChanged(cvs[i]);
  }
}


CS_Service.CompareChangesOnSheet = function () {
  console.log("*** CompareChangesOnSheet()");
  if (document.getElementById("one").checked)
  {
    // Basic
    const cvs = [1, 7, 8, 17, 18, 29];
    CompareChanges(cvs);
  }
  else if (document.getElementById("two").checked)
  {
    // Motor
    const cvs = [3, 4, 9, 65];
    CompareChanges(cvs);
  }
  else if (document.getElementById("three").checked)
  {
    // Basic Speed Control
    const cvs = [2, 6, 5];
    CompareChanges(cvs);
  }
  else if (document.getElementById("four").checked)
  {
    // Speed Table
    const cvs = [67, 68, 69, 70, 71, 72, 73 ,74, 75, 76, 77, 78, 79, 
              80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94];
    CompareChanges(cvs);
  }
  else if (document.getElementById("five").checked)
  {
    // Function Map
    const cvs = [33, 34, 35, 36, 37, 38, 39, 40];
    CompareChanges(cvs);
  }
  else if (document.getElementById("six").checked)
  {
    // Lights
    const cvs = [118, 119, 120, 121, 122, 123];
    CompareChanges(cvs);
  }
  else if (document.getElementById("seven").checked)
  {
    // Analog Controls
    const cvs = [29];
    CompareChanges(cvs);
  }
  else if (document.getElementById("eight").checked)
  {
    // Consist
    const cvs = [19, 21, 22, 23, 24];
    CompareChanges(cvs);
  }
  else if (document.getElementById("nine").checked)
  {
    // Advanced
    const cvs = [29];
    CompareChanges(cvs); 
  }
  else if (document.getElementById("ten").checked)
  {
    // Sound
  }
  else if (document.getElementById("eleven").checked)
  {
    // Sound Levels
  }
  else if (document.getElementById("twelve").checked)
  {
    // CVs
    const cvs=[1, 2, 3, 4, 5, 6, 7, 8, 9, 17, 18, 19, 21, 22, 23, 24, 33, 
              34, 35, 36, 37, 38, 39, 40, 65, 66, 67, 68, 69, 70, 
              71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 
              81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 
              91, 92, 93, 94, 
              118, 119, 120, 121, 122, 123];
    CompareChanges(cvs);
                        
  }
}

function ReadCVs(cvs) {
  console.log("*** ReadCVs("+cvs+")");
  for (let i = 0; i < cvs.length; i++)
  {
    CS_Service.ReadCV(cvs[i]);
  }
}

CS_Service.ReadFullSheet = function () {
  console.log("*** ReadFullSheet()");
  if (document.getElementById("one").checked)
  {
    // Basic
    const cvs = [1, 7, 8, 17, 18, 29];
    ReadCVs(cvs);
  }
  else if (document.getElementById("two").checked)
  {
    // Motor
    const cvs = [3, 4, 9, 65];
    ReadCVs(cvs);
  }
  else if (document.getElementById("three").checked)
  {
    // Basic Speed Control
    const cvs = [2, 6, 5];
    ReadCVs(cvs);
  }
  else if (document.getElementById("four").checked)
  {
    // Speed Table
    const cvs = [67, 68, 69, 70, 71, 72, 73 ,74, 75, 76, 77, 78, 79, 
              80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94];
    ReadCVs(cvs);
  }
  else if (document.getElementById("five").checked)
  {
    // Function Map
    const cvs = [33, 34, 35, 36, 37, 38, 39, 40];
    ReadCVs(cvs);
  }
  else if (document.getElementById("six").checked)
  {
    // Lights
    const cvs = [118, 119, 120, 121, 122, 123];
    ReadCVs(cvs);
  }
  else if (document.getElementById("seven").checked)
  {
    // Analog Controls
    const cvs = [29];
    ReadCVs(cvs);
  }
  else if (document.getElementById("eight").checked)
  {
    // Consist
    const cvs = [19, 21, 22, 23, 24];
    ReadCVs(cvs);
  }
  else if (document.getElementById("nine").checked)
  {
    // Advanced
    const cvs = [29];
    ReadCVs(cvs); 
  }
  else if (document.getElementById("ten").checked)
  {
    // Sound
  }
  else if (document.getElementById("eleven").checked)
  {
    // Sound Levels
  }
  else if (document.getElementById("twelve").checked)
  {
    // CVs
    const cvs=[1, 2, 3, 4, 5, 6, 7, 8, 9, 17, 18, 19, 21, 22, 23, 24, 33, 
              34, 35, 36, 37, 38, 39, 40, 65, 66, 67, 68, 69, 70, 
              71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 
              81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 
              91, 92, 93, 94, 
              118, 119, 120, 121, 122, 123];
    ReadCVs(cvs);
                        
  }
}

function WriteCVs(cvs) {
  console.log("*** WriteCVs("+cvs+")");
  for (let i = 0; i < cvs.length; i++)
  {
    CS_Service.WriteCV(cvs[i]);
  }
}

CS_Service.WriteFullSheet = function () {
  console.log("*** WriteFullSheet()");
  if (document.getElementById("one").checked)
  {
    // Basic
    const cvs = [1, 7, 8, 17, 18, 29];
    WriteCVs(cvs);
  }
  else if (document.getElementById("two").checked)
  {
    // Motor
    const cvs = [3, 4, 9, 65];
    WriteCVs(cvs);
  }
  else if (document.getElementById("three").checked)
  {
    // Basic Speed Control
    const cvs = [2, 6, 5];
    WriteCVs(cvs);
  }
  else if (document.getElementById("four").checked)
  {
    // Speed Table
    const cvs = [67, 68, 69, 70, 71, 72, 73 ,74, 75, 76, 77, 78, 79, 
              80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94];
    WriteCVs(cvs);
  }
  else if (document.getElementById("five").checked)
  {
    // Function Map
    const cvs = [33, 34, 35, 36, 37, 38, 39, 40];
    WriteCVs(cvs);
  }
  else if (document.getElementById("six").checked)
  {
    // Lights
    const cvs = [118, 119, 120, 121, 122, 123];
    WriteCVs(cvs);
  }
  else if (document.getElementById("seven").checked)
  {
    // Analog Controls
    const cvs = [29];
    WriteCVs(cvs);
  }
  else if (document.getElementById("eight").checked)
  {
    // Consist
    const cvs = [19, 21, 22, 23, 24];
    WriteCVs(cvs);
  }
  else if (document.getElementById("nine").checked)
  {
    // Advanced
    const cvs = [29];
    WriteCVs(cvs); 
  }
  else if (document.getElementById("ten").checked)
  {
    // Sound
  }
  else if (document.getElementById("eleven").checked)
  {
    // Sound Levels
  }
  else if (document.getElementById("twelve").checked)
  {
    // CVs
    const cvs=[1, 2, 3, 4, 5, 6, 7, 8, 9, 17, 18, 19, 21, 22, 23, 24, 33, 
              34, 35, 36, 37, 38, 39, 40, 65, 66, 67, 68, 69, 70, 
              71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 
              81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 
              91, 92, 93, 94, 
              118, 119, 120, 121, 122, 123];
    WriteCVs(cvs);
                        
  }
}

function CompareCVs(cvs) {
  console.log("*** CompareCVs("+cvs+")");
  for (let i = 0; i < cvs.length; i++)
  {
    CS_Service.CompareCV(cvs[i]);
  }
}

CS_Service.CompareFullSheet = function () {
  console.log("*** CompareFullSheet()");
  if (document.getElementById("one").checked)
  {
    // Basic
    const cvs = [1, 7, 8, 17, 18, 29];
    CompareCVs(cvs);
  }
  else if (document.getElementById("two").checked)
  {
    // Motor
    const cvs = [3, 4, 9, 65];
    CompareCVs(cvs);
  }
  else if (document.getElementById("three").checked)
  {
    // Basic Speed Control
    const cvs = [2, 6, 5];
    CompareCVs(cvs);
  }
  else if (document.getElementById("four").checked)
  {
    // Speed Table
    const cvs = [67, 68, 69, 70, 71, 72, 73 ,74, 75, 76, 77, 78, 79, 
              80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94];
    CompareCVs(cvs);
  }
  else if (document.getElementById("five").checked)
  {
    // Function Map
    const cvs = [33, 34, 35, 36, 37, 38, 39, 40];
    CompareCVs(cvs);
  }
  else if (document.getElementById("six").checked)
  {
    // Lights
    const cvs = [118, 119, 120, 121, 122, 123];
    CompareCVs(cvs);
  }
  else if (document.getElementById("seven").checked)
  {
    // Analog Controls
    const cvs = [29];
    CompareCVs(cvs);
  }
  else if (document.getElementById("eight").checked)
  {
    // Consist
    const cvs = [19, 21, 22, 23, 24];
    CompareCVs(cvs);
  }
  else if (document.getElementById("nine").checked)
  {
    // Advanced
    const cvs = [29];
    CompareCVs(cvs); 
  }
  else if (document.getElementById("ten").checked)
  {
    // Sound
  }
  else if (document.getElementById("eleven").checked)
  {
    // Sound Levels
  }
  else if (document.getElementById("twelve").checked)
  {
    // CVs
    const cvs=[1, 2, 3, 4, 5, 6, 7, 8, 9, 17, 18, 19, 21, 22, 23, 24, 33, 
              34, 35, 36, 37, 38, 39, 40, 65, 66, 67, 68, 69, 70, 
              71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 
              81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 
              91, 92, 93, 94, 
              118, 119, 120, 121, 122, 123];
    CompareCVs(cvs);
                        
  }
}

CS_Service.ReadChagesOnAllSheets = function () {
  console.log("*** ReadChagesOnAllSheets()");
  const cvs=[1, 2, 3, 4, 5, 6, 7, 8, 9, 17, 18, 19, 21, 22, 23, 24, 33, 
            34, 35, 36, 37, 38, 39, 40, 65, 66, 67, 68, 69, 70, 
            71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 
            81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 
            91, 92, 93, 94, 
            118, 119, 120, 121, 122, 123];
  ReadChanges(cvs);
}

CS_Service.WriteChagesOnAllSheets = function () {
  console.log("*** WriteChagesOnAllSheets()");
  const cvs=[1, 2, 3, 4, 5, 6, 7, 8, 9, 17, 18, 19, 21, 22, 23, 24, 33, 
            34, 35, 36, 37, 38, 39, 40, 65, 66, 67, 68, 69, 70, 
            71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 
            81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 
            91, 92, 93, 94, 
            118, 119, 120, 121, 122, 123];
  WriteChanges(cvs);
}

CS_Service.ReadAllSheets = function () {
  console.log("*** ReadAllSheets()");
  const cvs=[1, 2, 3, 4, 5, 6, 7, 8, 9, 17, 18, 19, 21, 22, 23, 24, 33, 
            34, 35, 36, 37, 38, 39, 40, 65, 66, 67, 68, 69, 70, 
            71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 
            81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 
            91, 92, 93, 94, 
            118, 119, 120, 121, 122, 123];
  ReadCVs(cvs);
}

CS_Service.WriteAllSheets = function () {
  console.log("*** WriteAllSheets()");
  const cvs=[1, 2, 3, 4, 5, 6, 7, 8, 9, 17, 18, 19, 21, 22, 23, 24, 33, 
            34, 35, 36, 37, 38, 39, 40, 65, 66, 67, 68, 69, 70, 
            71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 
            81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 
            91, 92, 93, 94, 
            118, 119, 120, 121, 122, 123];
  WriteCVs(cvs);
}

