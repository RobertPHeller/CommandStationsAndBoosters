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
#  Last Modified : <250207.1003>
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


package require -exact httpd 4.1.1

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
 
set ::CS_Socket [socket 127.0.0.1 9900]
 
puts stderr "*** CS_Socket is $::CS_Socket"
 
proc SendMessageToCS {message} {
    puts stderr "*** SendMessageToCS \{$message\}"
    puts stderr "*** SendMessageToCS CS_Socket is $::CS_Socket"
    puts $::CS_Socket $message
    flush $::CS_Socket
    return [gets $::CS_Socket]
}

 
tool::define ::command.station {
    
        
    method CommonHeader {title} {
        my puts "<HTML><HEAD><TITLE>$title</TITLE>"
        my puts {<link rel="stylesheet" href="/CSS/cs.css" />}
        my puts {<link rel="stylesheet" href="/CSS/UI.css" />}
        my puts {<script id="cs" type="text/javascript" src="/JS/cs.js"></script>}
        my puts "</HEAD>"
    }
        
    method content {} {
        set request [my http_info get REQUEST_URI]
        puts stderr "($request)"
        set length [my request get Content-Length]
        if {[regexp {^/command/([^?]*)\?(.*)$} $request => mode opts] < 1} {
            regexp {^/command/([^?]*)$} $request => mode
            puts stderr "($request) mode is $mode"
            set opts {}
        }
        set queryArgs [my FormData]
        switch $mode {
            define {
                set cmd "define locomotive"
                append cmd " [dict get $queryArgs address]"
                append cmd " steps [dict get $queryArgs steps]"
                append cmd " [quoteArg [dict get $queryArgs name]]"
                append cmd " [quoteArg [dict get $queryArgs description]]"
                puts stderr $cmd
                set fromcs [SendMessageToCS $cmd]
                puts stderr $fromcs
                my reply set Status 200
                my reply set Content-Type {text/plain}
                my puts "$fromcs"
            }
            undefine {
                set cmd "undefine locomotive"
                append cmd " [dict get $queryArgs address]"
                puts stderr $cmd
                set fromcs [SendMessageToCS $cmd]
                puts stderr $fromcs
                my reply set Status 200
                my reply set Content-Type {text/plain}
                my puts "$fromcs"
            }
            list {
                set cmd "list locomotives"
                puts stderr $cmd
                set fromcs [SendMessageToCS $cmd]
                puts stderr $fromcs
                my reply set Status 200
                my reply set Content-Type {text/plain}
                my puts "$fromcs"
            }
            describe {
                set cmd "describe locomotive"
                append cmd " [dict get $queryArgs address]"
                puts stderr $cmd
                set fromcs [SendMessageToCS $cmd]
                puts stderr $fromcs
                my reply set Status 200
                my reply set Content-Type {text/plain}
                my puts "$fromcs"
            }
            status {
                set cmd "status"
                puts stderr $cmd
                set fromcs [SendMessageToCS $cmd]
                puts stderr $fromcs
                my reply set Status 200
                my reply set Content-Type {text/plain}
                my puts "$fromcs"
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
                my reply set Content-Type {text/plain}
                my puts "$cmd"
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

HTTPD add_uri /command/* [list mixin ::command.station]
HTTPD add_uri /* [list path [file join $root static] mixin ::httpd::content.file]


puts [list LISTENING on [HTTPD port_listening]]
puts [list Doc_root is [HTTPD cget doc_root]]
cron::main

