
SHELL = /bin/sh

#### Start of system configuration section. ####

srcdir = .
topdir = C:/jruby-1.7.11/lib/native/include
hdrdir = C:/jruby-1.7.11/lib/native/include/ruby
VPATH = $(srcdir):$(topdir):$(hdrdir)
prefix = $(DESTDIR) 
exec_prefix = $(DESTDIR)\jruby-1.7.11
rubylibprefix = $(DESTDIR)/jruby-1.7.11/lib/ruby
libdir = $(DESTDIR)/jruby-1.7.11/lib
rubylibdir = $(DESTDIR)/jruby-1.7.11/lib/ruby/1.9
rubysharedlibdir = $(DESTDIR)/jruby-1.7.11/lib/ruby/shared
sitedir = $(DESTDIR)/jruby-1.7.11/lib/ruby/1.9/site_ruby
sitelibdir = $(DESTDIR)/jruby-1.7.11/lib/ruby/1.9/site_ruby
sitearchdir = $(DESTDIR)/jruby-1.7.11/lib/ruby/1.9/site_ruby
archdir = $(DESTDIR)/jruby-1.7.11/lib/native/include
datadir = $(DESTDIR)/jruby-1.7.11/share
mandir = $(DESTDIR)/jruby-1.7.11/man
sysconfdir = $(DESTDIR)/jruby-1.7.11/etc
localstatedir = $(DESTDIR)/jruby-1.7.11/var
includedir = $(DESTDIR)/jruby-1.7.11/lib/native/include
rubyhdrdir = $(DESTDIR)/jruby-1.7.11/lib/native/include
bindir = $(DESTDIR)/jruby-1.7.11/bin
ridir = $(DESTDIR)/jruby-1.7.11/share/ri

CC = gcc
LIBRUBY = 
LIBRUBY_A = 
LIBRUBYARG_SHARED = 
LIBRUBYARG_STATIC = 

RUBY_EXTCONF_H = 
CFLAGS   =   -fno-omit-frame-pointer -fno-strict-aliasing  -fexceptions $(cflags) $(cflags)  -m32 -march=native -mtune=native
INCFLAGS = -I. -I$(topdir) -I$(hdrdir) -I$(srcdir)
DEFS     = 
CPPFLAGS =   $(DEFS) $(cppflags) $(DEFS) $(cppflags)
CXXFLAGS = $(CFLAGS)  -fno-omit-frame-pointer -fno-strict-aliasing  -fexceptions $(cflags) $(cxxflags) $(cflags) $(cxxflags)
ldflags  =  -LC:/jruby-1.7.11/lib/native/i386-Windows -ljruby-cext
dldflags = -Wl,--enable-auto-image-base,--enable-auto-import $(DEFFILE)
archflag =  -m32 -march=native -mtune=native
DLDFLAGS = $(ldflags) $(dldflags) $(archflag)
LDSHARED = cc -shared  $(if $(filter-out -g -g0,$(debugflags)),,-s)
AR = 
EXEEXT = .exe

RUBY_INSTALL_NAME = jruby
RUBY_SO_NAME = 
arch = java
sitearch = java
ruby_version = 1.9
ruby = C:/jruby-1.7.11/bin/jruby
RUBY = $(ruby)
RM = rm -f
MAKEDIRS = mkdir -p 
INSTALL = install -c 
INSTALL_PROG = $(INSTALL) -m 0755
INSTALL_DATA = $(INSTALL) -m 0644
COPY = cp 

#### End of system configuration section. ####

preload = 

libpath = . $(libdir)
LIBPATH =  -L"." -L"$(libdir)"
DEFFILE = 

CLEANFILES = mkmf.log
DISTCLEANFILES = 

extout = 
extout_prefix = 
target_prefix = 
LOCAL_LIBS = 
LIBS =    
SRCS = my_test.c my_test.c
OBJS = my_test.o
TARGET = my_test
DLLIB = $(TARGET).dll
EXTSTATIC = 
STATIC_LIB = 

BINDIR        = $(bindir)
RUBYCOMMONDIR = $(sitedir)$(target_prefix)
RUBYLIBDIR    = $(sitelibdir)$(target_prefix)
RUBYARCHDIR   = $(sitearchdir)$(target_prefix)

TARGET_SO     = $(DLLIB)
CLEANLIBS     = $(TARGET).dll $(TARGET).il? $(TARGET).tds $(TARGET).map
CLEANOBJS     = *.o *.a *.s[ol] *.pdb *.exp *.bak

all:    $(DLLIB)
static: $(STATIC_LIB)
.PHONY: all install static install-so install-rb
.PHONY: clean clean-so clean-rb

clean:
		@-$(RM) $(CLEANLIBS) $(CLEANOBJS) $(CLEANFILES)

distclean:	clean
		@-$(RM) Makefile $(RUBY_EXTCONF_H) conftest.* mkmf.log
		@-$(RM) core ruby$(EXEEXT) *~ $(DISTCLEANFILES)

realclean:	distclean
install: install-so install-rb

install-so: $(RUBYARCHDIR)
install-so: $(RUBYARCHDIR)/$(DLLIB)
$(RUBYARCHDIR)/$(DLLIB): $(DLLIB)
	$(INSTALL_PROG) $(DLLIB) $(RUBYARCHDIR)
install-rb: pre-install-rb install-rb-default
install-rb-default: pre-install-rb-default
pre-install-rb: Makefile
pre-install-rb-default: Makefile
$(RUBYARCHDIR):
	$(MAKEDIRS) $@

site-install: site-install-so site-install-rb
site-install-so: install-so
site-install-rb: install-rb

.SUFFIXES: .c .m .cc .cxx .cpp .C .o

.cc.o:
	$(CXX) $(INCFLAGS) $(CPPFLAGS) $(CXXFLAGS) -c $<

.cxx.o:
	$(CXX) $(INCFLAGS) $(CPPFLAGS) $(CXXFLAGS) -c $<

.cpp.o:
	$(CXX) $(INCFLAGS) $(CPPFLAGS) $(CXXFLAGS) -c $<

.C.o:
	$(CXX) $(INCFLAGS) $(CPPFLAGS) $(CXXFLAGS) -c $<

.c.o:
	$(CC) $(INCFLAGS) $(CPPFLAGS) $(CFLAGS) -c $<

$(DLLIB): $(OBJS) Makefile
	@-$(RM) $@
	$(LDSHARED) -o $@ $(OBJS) $(LIBPATH) $(DLDFLAGS) $(LOCAL_LIBS) $(LIBS)



$(OBJS): 
