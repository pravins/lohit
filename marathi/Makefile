all: sfd-dist ttf woff eot ttf-dist web-dist
version:= 2.94.2

test: test-ttf
	@echo "----------Testing actual-output with expected-output----------"
	fontforge -lang=py -script auto_test.py std-test-out.txt Lohit-Marathi.ttf

ttf: ttf-bin
	@echo "----------Generating ttf from sfd file----------"
	fontforge -lang=py -script apply_featurefile.py Lohit-Marathi.sfd Lohit-Marathi.fea
	./generate.pe *.sfd
	@echo "----------Finished generating ttf file----------"
	@echo " "

woff: woff-bin
	@echo "----------Generating woff from ttf file----------"
	sfntly -w Lohit-Marathi.ttf Lohit-Marathi.woff
	@echo "----------Finished generating woff file----------"
	@echo " "

eot: eot-bin
	@echo "----------Generating eot from ttf file----------"
	sfntly -e -x Lohit-Marathi.ttf Lohit-Marathi.eot
	@echo "----------Finished generating eot file----------"
	@echo " "

ttf-dist: dist
	mkdir lohit-marathi-ttf-$(version)
	cp -p COPYRIGHT OFL.txt README  test-marathi.txt AUTHORS  ChangeLog 65-0-lohit-marathi.conf Lohit-Marathi.ttf io.pagure.lohit.marathi.font.metainfo.xml lohit-marathi-ttf-$(version)
	rm -rf lohit-marathi-ttf-$(version)/.git
	tar -cf lohit-marathi-ttf-$(version).tar lohit-marathi-ttf-$(version)
	gzip lohit-marathi-ttf-$(version).tar
	rm -rf lohit-marathi-ttf-$(version)

sfd-dist: dist
	mkdir lohit-marathi-$(version)
	cp -p COPYRIGHT OFL.txt README  test-marathi.txt AUTHORS generate*.pe  *.py *.fea Makefile ChangeLog  65-0-lohit-marathi.conf std-test-out.txt Lohit-Marathi.sfd io.pagure.lohit.marathi.font.metainfo.xml lohit-marathi-$(version)
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

.PHONY: ttf-bin woff-bin eot-bin webdist dist cleanall version test-ttf
