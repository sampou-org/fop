all :
	LANG=ja_JP.UTF-8 ghc --make fopsite
	LANG=ja_JP.UTF-8 ./fopsite rebuild

clean:
	./fopsite clean
	-rm *~ *.hi *.o

bin-clean: clean
	-rm fopsite
