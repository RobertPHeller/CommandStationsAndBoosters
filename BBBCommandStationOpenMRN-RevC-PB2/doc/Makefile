##-*- makefile -*-############################################################
#
#  System        : 
#  Module        : 
#  Object Name   : $RCSfile$
#  Revision      : $Revision$
#  Date          : $Date$
#  Author        : $Author$
#  Created By    : Robert Heller
#  Created       : Wed Nov 16 15:17:01 2022
#  Last Modified : <260413.1600>
#
#  Description	
#
#  Notes
#
#  History
#	
#  $Log$
#
##############################################################################
#
#    Copyright (C) 2022  Robert Heller D/B/A Deepwoods Software
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
##############################################################################


SRCS = ../main.cxx \
	$(wildcard ../*.hxx) $(wildcard  ../*.h) \
	$(wildcard ../httpd/*.hxx) \
	$(wildcard ../LCCTrainSearchProtocol/include/*.hxx) \
	$(wildcard ../targets/*/*.hxx) \
	$(wildcard Images/*.png)


all: docs

.PHONY:
docs: html UserManual.pdf UserGuide.pdf

html latex man: $(SRCS) Makefile Doxyfile Revision.h Images/RevCBoardCase.png \
		header.tex
	-rm -rf html latex
	doxygen Doxyfile
	
latex2: $(SRCS) Makefile Doxyfile.kit Revision.h Images/RevCBoardCase.png \
		header.tex
	-rm -rf latex2
	doxygen Doxyfile.kit
	
UserManual.pdf: latex
	cp Images/RevCBoardCase.png latex/
	$(MAKE) -C latex
	mv latex/refman.pdf UserManual.pdf
	
UserGuide.pdf: latex2
	cp Images/RevCBoardCase.png latex2/
	$(MAKE) -C latex2
	mv latex2/refman.pdf UserGuide.pdf

Revision.h: ../targets/pb2-rev-C.linux.aarch64/Revision.hxxout
	echo '/** @page Revision Build Revisions' > $@
	grep '^[[:space:]]*"[^"]*",$$' $< |sed 's/^[[:space:]]*"/ * - /g'|sed 's/",$$//g' >> $@
	echo '*/' >> $@
	
header.tex: Doxyfile.kit Doxyfile Makefile header.sed
	doxygen -w latex new_header.tex /dev/null /dev/null Doxyfile
	sed <new_header.tex  -f header.sed >header.tex
	-rm new_header.tex

 
../targets/pb2-rev-C.linux.aarch64/Revision.hxxout: ../../.git/index
	$(MAKE) -C ../targets/pb2-rev-C.linux.aarch64 Revision.hxxout


Images/RevCBoardCase.png : Images/RevCBoardCase.pdf
	pdfimages Images/RevCBoardCase.pdf -png Images/RevCBoardCase
	mv Images/RevCBoardCase-000.png Images/RevCBoardCase.png

clean::
	rm -rf latex latex2 warnings header.tex Revision.h \
		Images/RevCBoardCase.png

veryclean:: clean
	rm -rf html man UserManual.pdf UserGuide.pdf

