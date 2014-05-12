all: sfd-dist ttf woff eot ttf-dist web-dist
version:= 2.94.0

test: test-ttf
        @echo "----------Testing actual-output with expected-output----------"
        python auto_test.py std-test-out.txt Lohit-Marathi.ttf

ttf: ttf-bin
	@echo "----------Generating ttf from sfd file----------"
	python apply_featurefile.py Lohit-Marathi.sfd Lohit-Marathi.fea
	./generate.pe *.sfd
	@echo "----------Finished generating ttf file----------"
	@echo " "

woff: woff-bin
	@echo "----------Generating woff from ttf file----------"
	java -jar /usr/share/java/sfntly/sfnttool.jar -w Lohit-Marathi.ttf Lohit-Marathi.woff
	@echo "----------Finished generating woff file----------"
	@echo " "

eot: eot-bin
	@echo "----------Generating eot from ttf file----------"
	java -jar /usr/share/java/sfntly/sfnttool.jar -e -x Lohit-Marathi.ttf Lohit-Marathi.eot
	@echo "----------Finished generating eot file----------"
	@echo " "

ttf-dist: dist
	mkdir lohit-marathi-ttf-$(version)
	cp -p COPYRIGHT OFL.txt README  test-marathi.txt AUTHORS  ChangeLog 65-0-lohit-marathi.conf Lohit-Marathi.ttf lohit-marathi-ttf-$(version)
	rm -rf lohit-marathi-ttf-$(version)/.git
	tar -cf lohit-marathi-ttf-$(version).tar lohit-marathi-ttf-$(version)
	gzip lohit-marathi-ttf-$(version).tar
	rm -rf lohit-marathi-ttf-$(version)

sfd-dist: dist
	mkdir lohit-marathi-$(version)
	cp -p COPYRIGHT OFL.txt README  test-marathi.txt AUTHORS generate*.pe  *.py *.fea Makefile ChangeLog  65-0-lohit-marathi.conf Lohit-Marathi.sfd lohit-marathi-$(version)
	rm -rf lohit-marathi-$(version)/.git
	rm -rf lohit-marathi-$(version)/*.ttf
	tar -cf lohit-marathi-$(version).tar lohit-marathi-$(version)
	gzip lohit-marathi-$(version).tar
	rm -rf lohit-marathi-$(version)

web-dist: webdist
	mkdir lohit-marathi-web-$(version)
	cp -p COPYRIGHT OFL.txt README  test-marathi.txt AUTHORS  ChangeLog  Lohit-Marathi.woff  Lohit-Marathi.eot lohit-marathi-web-$(version)
	rm -rf lohit-marathi-web-$(version)/.git
	tar -cf lohit-marathi-web-$(version).tar lohit-marathi-web-$(version)
	gzip lohit-marathi-web-$(version).tar
	rm -rf lohit-marathi-web-$(version)

clean: cleanall
	rm -f *.ttf *.eot *.woff
	rm -rf *.tar.gz
	rm -rf lohit-marathi*

.PHONY: ttf-bin woff-bin eot-bin webdist dist cleanall version
