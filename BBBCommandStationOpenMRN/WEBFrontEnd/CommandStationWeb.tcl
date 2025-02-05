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
#  Last Modified : <250205.1436>
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

::httpd::server create HTTPD port 9090

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
    method DisplayHelp {} {
        my reply set Status 200
        my reply set Content-Type {text/html}
        my puts "<HTML><HEADER><TITLE>Help</TITLE></HEADER>"
        my puts "<BODY>"
        my puts "Nothing Yet"
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
                my puts "<HTML><HEADER><TITLE>define locomotive</TITLE></HEADER>"
                my puts "<BODY>"
                my puts "$cmd"
                my puts "</BODY></HTML>"
            }
            test {
                my reply set Status 200
                my reply set Content-Type {text/html}
                my puts "<HTML><HEADER><TITLE>Mode</TITLE></HEADER>"
                my puts "<BODY>"
                my puts "Mode is $mode"
                my puts "Opts are $opts"
                my puts "</BODY></HTML>"
            }
            default {
                my reply set Status 404
                return
            }
            
        }
    }
}

HTTPD add_uri /* [list mixin ::command.station]

puts [list LISTENING on [HTTPD port_listening]]
cron::main

