#!/bin/sh
rm libgtkd.a
compd \
	src/atk \
	src/cairo \
	src/gdk \
	src/glib \
	src/gobject \
	src/gthread \
	src/gtk \
	src/gtkc \
	src/pango \
	-I src:~/dmd/src/phobos \
	-olib libgtkd
