#==========================================================================
#                    Configuration under unix environment
# ==========================================================================

# detect compiler 
ifneq ($(shell which g++48),)
	CXX = g++48
	AR = ar
else
ifneq ($(shell which g++47),)
	CXX = g++47
	AR = ar
else 
	CXX = g++
	AR = ar
endif
endif

CXXFLAGS_BASIC = -fmax-errors=1 -W -Wall -Wextra -Wreturn-type -ansi -m64 -Wno-deprecated
CXXFLAGS_DEBUG = -g -DDEBUG $(CXXFLAGS_BASIC) 
CXXFLAGS_RELEASE = -O3 -fopenmp $(CXXFLAGS_BASIC) 

ARFLAGS = rvs

# boost chrono links to to librt.a under Linux
LIBS = -lrt

