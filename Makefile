#
# Makefile
#

orapasswd: orapasswd.c
	cc -o orapasswd -I$(ORACLE_HOME)/precomp/public -I$(ORACLE_HOME)/rdbms/public -L$(ORACLE_HOME)/lib -lclntsh orapasswd.c

orapasswd.c: orapasswd.pc
	proc iname=orapasswd.pc

clean:
	rm -f orapasswd 
	rm -f *.c *.lis *.o

