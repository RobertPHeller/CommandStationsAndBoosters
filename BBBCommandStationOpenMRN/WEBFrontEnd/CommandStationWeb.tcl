#*****************************************************************************
#
#  System        : 
#  Module        : 
#  Object Name   : $RCSfile$
#  Revision      : $Revision$
#  Date          : $Date$
#  Author        : $Author$
#  Created By    : Robert Heller
#  Created       : Wed Feb 5 13:04:24 2025
#  Last Modified : <250206.1634>
#
#  Description	
#
#  Notes
#
#  History
#	
#*****************************************************************************
#
#    Copyright (C) 2025  Robert Heller D/B/A Deepwoods Software
#			51 Locke Hill Road
#			Wendell, MA 01379-9728
#
#    This program is free software; you can redistribute it and/or modify
#    it under the terms of the GNU General Public License as published by
#    the Free Software Foundation; either version 2 of the License, or
#    (at your option) any later version.
#
#    This program is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#    GNU General Public License for more details.
#
#    You should have received a copy of the GNU General Public License
#    along with this program; if not, write to the Free Software
#    Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
#
# 
#
#*****************************************************************************


package require httpd

set root [file normalize [file dirname [info script]]]

::httpd::server create HTTPD port 9090 myaddr 0.0.0.0 doc_root $root

::tool::define ::httpd::server {
    
    method debug args {
        puts [list DEBUG {*}$args]
    }
    method log args {
        puts [list LOG {*}$args]
    }
    
}

proc quoteArg {string} {
    if {[regexp {"} $string] > 0} {
         return "'[regsub {'} $string {\\'}]'"
     } else {
         return "\"$string\""
     }
 }

tool::define ::command.station {
    method CommonHeader {title} {
        my puts "<HTML><HEAD><TITLE>$title</TITLE>"
        my puts {<link rel="stylesheet" href="/CSS/cs.css" />}
        my puts {<script id="cs" type="text/javascript" src="/JS/cs.js"></script>}
        my puts "</HEAD>"
    }
    method ToolBar {} {
        my puts {<div id="tools" class="toolbar">}
        my puts { <button type="button" name="Load" value="Load" onclick="CS.Load()">Load</button>}
        my puts { <button type="button" name="Save" value="Save" onclick="CS.Save()">Save</button>}
        my puts { <button type="button" name="Service" value="Service" onclick="CS.Service()">Service</button>}
        my puts { <button type="button" name="Help" value="Help" onclick="CS.Help()">Help</button> }
        my puts {</div>}
    }
    method FunctionLight {i} {
        my puts "<span id='FunctionLight$i' class='functionlight'>$i<img src='/images/off.png' /></span>"
    }
    method Describe {} {
        my puts {<div id="describe">}
        my puts {<span class="labelEntry"><label for="address">Address</label><input type="text" id="address" value="" /></span><br />}
        my puts {<span class="labelEntry"><label for="steps">Steps</label><input type="text" id="steps" value="" /></span><br />}
        my puts {<span class="labelEntry"><label for="name">Name</label><input type="text" id="name" value="" /></span><br />}
        my puts {<span class="labelEntry"><label for="description">Description</label><input type="text" id="description" value="" /></span><br />}
        my puts {<span class="labelEntry"><label for="speed">Speed and Dir</label><input type="text" id="speed" value="" /></span><br />}
        my puts {<div id="functions">Functions}
        for {set i 0} {$i <= 28} {incr i} {
            my FunctionLight $i
        }
        my puts {</div>}
        my puts {<span class="labelEntry"><label for="controller">Controller</label><input type="text" id="controller" value="" /></span><br />}
        my puts {<span class="labelEntry"><label for="consist">Consist</label><input type="text" id="consist" value="" /></span><br />}
        my puts {</div>}
    }
    method LocoList {} {
        my puts {<div id="locolist">}
        my puts {<ul id="locolistbox" class="listbox">}
        my puts {</ul>}
        my puts {<div id="ll_buttons" class="buttonbox">}
        my puts {<button id="describe_loco" type="button" name="Describe" value="Describe" onclick="CS.describeLoco()">Describe</button>}
        my puts {<button id="delete_loco" type="button" name="Delete" value="Delete" onclick="CS.deleteLoco()">Delete</button>}
        my puts {<button id="add_loco" type="button" name="Add" value=Add" onclick="CS.addLoco()">Add</button>}
        my puts {</div>}
        my puts {</div>}
    }
    method TrackStatus {label idprefix} {
        my puts [format {<div id="%s_status" class="TrackStatus">%s<br />} $idprefix $label]
        my puts [format {<span id="%s_status" class="TrackCurrent">Current <span id="$s_current">000.000</span>A</span><br />} \
                 $idprefix $idprefix]
        my puts [format {<span id="%s_flags">} $idprefix]
        my puts [format {Enabled<img id="$s_enabled" src="/images/off.png" />} $idprefix]
        my puts [format {Thermal Flag<img id="$s_therm" src="/images/off.png" />} $idprefix]
        my puts [format {Over Current<img id="$s_over" src="/images/off.png" />} $idprefix]
        my puts {</span><br />}
        my puts {</div>}
    }
    method HeatSinkStatus {} {
        my puts {<div id="heatsink_status" class="TrackStatus">Heat Sink<br />}
        my puts {<span id="heatsink_status" class="TrackCurrent">Temperature <span id="heatsink_temp">000.000</span>C<br />}
        my puts {<span id="heatsink_flags">}
        my puts {Fan On<img id="heatsink_fan" src="/images/off.png" />}
        my puts {Alarm<img id="heatsink_alarm" src="/images/off.png" />}
        my puts {</span><br />}
        my puts {</div>}
    }
    method StatusWindow {} {
        my puts {<div id="StatusWindow">}
        my TrackStatus Mains mains
        my TrackStatus {Prog Track} programming
        my HeatSinkStatus
        my puts {</div>} 
    }
    method Upper {} {
        my puts {<div id="upper">}
        my Describe
        my LocoList
        my StatusWindow
        my puts {</div>}
    }
    method LogMessages {} {
        my puts {<div id="logmessages">}
        my puts {</div>}
    }
    method DisplayMain {} {
        my reply set Status 200
        my reply set Content-Type {text/html}
        my CommonHeader "Command Station"
        my puts "<BODY>"
        my ToolBar
        my Upper
        my LogMessages
        my puts "</BODY>"
        my puts "</HTML>"
    }
    method DisplayHelp {} {
        my reply set Status 200
        my reply set Content-Type {text/html}
        my CommonHeader Help
        my puts "<BODY>"
        my puts "Nothing Yet."
        my puts "</BODY></HTML>"
    }
        
    method content {} {
        set request [my http_info get REQUEST_URI]
        puts stderr "($request)"
        set length [my request get Content-Length]
        if {[regexp {^/([^?]*)\?(.*)$} $request => mode opts] < 1} {
            regexp {^/([^?]*)$} $request => mode
            puts stderr "($request) mode is $mode"
            set opts {}
        }
        set queryArgs [my FormData]
        switch $mode {
            {} {
                my DisplayMain
            }
            help {
                my DisplayHelp
            }
            define {
                set cmd "define locomotive"
                append cmd " [dict get $queryArgs address]"
                append cmd " steps [dict get $queryArgs steps]"
                append cmd " [quoteArg [dict get $queryArgs description]]"
                puts stderr $cmd
                my reply set Status 200
                my reply set Content-Type {text/html}
                my CommonHeader "define locomotive"
                my puts "<BODY>"
                my puts "$cmd"
                my puts "</BODY></HTML>"
            }
            undefine {
                set cmd "undefine locomotive"
                append cmd " [dict get $queryArgs address]"
                puts stderr $cmd
                my reply set Status 200
                my reply set Content-Type {text/html}
                my CommonHeader "undefine locomotive"
                my puts "<BODY>"
                my puts "$cmd"
                my puts "</BODY></HTML>"
            }
            list {
                set cmd "list locomotives"
                puts stderr $cmd
                my reply set Status 200
                my reply set Content-Type {text/html}
                my CommonHeader "list locomotives"
                my puts "<BODY>"
                my puts "$cmd"
                my puts "</BODY></HTML>"
            }
            describe {
                set cmd "describe locomotive"
                append cmd " [dict get $queryArgs address]"
                puts stderr $cmd
                my reply set Status 200
                my reply set Content-Type {text/html}
                my CommonHeader "Describe locomotive"
                my puts "<BODY>"
                my puts "$cmd"
                my puts "</BODY></HTML>"
            }
            status {
                set cmd "status"
                puts stderr $cmd
                my reply set Status 200
                my reply set Content-Type {text/html}
                my CommonHeader "status"
                my puts "<BODY>"
                my puts "$cmd"
                my puts "</BODY></HTML>"
            }
            power {
                set cmd "power"
                if {[dict get $queryArgs on]} {
                    append cmd " on"
                } else {
                    append cmd " off"
                }
                puts stderr $cmd
                my reply set Status 200
                my reply set Content-Type {text/html}
                my CommonHeader "Power"
                my puts "<BODY>"
                my puts "$cmd"
                my puts "</BODY></HTML>"
            }
            estop
            shutdown
            readcv
            readcvword
            writeprogcvbyte
            writeprogcvbit
            writeopscvbyte
            writeopscvbit
            default {
                my reply set Status 404
                return
            }
            
        }
    }
}



HTTPD add_uri /CSS/* [list path [file join $root CSS] mixin ::httpd::content.file]
HTTPD add_uri /JS/*  [list path [file join $root JS] mixin ::httpd::content.file]
HTTPD add_uri /help/* [list path [file join $root help] mixin ::httpd::content.file]
HTTPD add_uri /images/* [list path [file join $root images] mixin ::httpd::content.file]

HTTPD add_uri /* [list mixin ::command.station]

puts [list LISTENING on [HTTPD port_listening]]
puts [list Doc_root is [HTTPD cget doc_root]]
cron::main

