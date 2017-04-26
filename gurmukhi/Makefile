all: sfd-dist ttf woff eot ttf-dist web-dist
version:= 2.91.2

test: test-ttf
	@echo "----------Testing actual-output with expected-output----------"
	fontforge -lang=py -script auto_test.py std-test-out.txt Lohit-Gurmukhi.ttf

ttf: ttf-bin
	@echo "----------Generating ttf from sfd file----------"
	fontforge -lang=py -script apply_featurefile.py Lohit-Gurmukhi.sfd Lohit-Gurmukhi.fea
	./generate.pe *.sfd
	@echo "----------Finished generating ttf file----------"
	@echo " "

woff: woff-bin
	@echo "----------Generating woff from ttf file----------"
	sfntly -w Lohit-Gurmukhi.ttf Lohit-Gurmukhi.woff
	@echo "----------Finished generating woff file----------"
	@echo " "

eot: eot-bin
	@echo "----------Generating eot from ttf file----------"
	sfntly -e -x Lohit-Gurmukhi.ttf Lohit-Gurmukhi.eot
	@echo "----------Finished generating eot file----------"
	@echo " "

ttf-dist: dist
	mkdir lohit-gurmukhi-ttf-$(version)
	cp -p COPYRIGHT OFL.txt README  AUTHORS  ChangeLog  66-lohit-gurmukhi.conf Lohit-Gurmukhi.ttf io.pagure.lohit.gurmukhi.font.metainfo.xml lohit-gurmukhi-ttf-$(version)
	rm -rf lohit-gurmukhi-ttf-$(version)/.git
	tar -cf lohit-gurmukhi-ttf-$(version).tar lohit-gurmukhi-ttf-$(version)
	gzip lohit-gurmukhi-ttf-$(version).tar
	rm -rf lohit-gurmukhi-ttf-$(version)

sfd-dist: dist
	mkdir lohit-gurmukhi-$(version)
	cp -p COPYRIGHT OFL.txt test-gurmukhi.txt std-test-out.txt README AUTHORS generate*.pe apply_featurefile.py auto_test.py *.fea Makefile ChangeLog  66-lohit-gurmukhi.conf Lohit-Gurmukhi.sfd io.pagure.lohit.gurmukhi.font.metainfo.xml lohit-gurmukhi-$(version)
	rm -rf lohit-gurmukhi-$(version)/.git
	rm -rf lohit-gurmukhi-$(version)/*.ttf
	tar -cf lohit-gurmukhi-$(version).tar lohit-gurmukhi-$(version)
	gzip lohit-gurmukhi-$(version).tar
	rm -rf lohit-gurmukhi-$(version)

web-dist: webdist
	mkdir lohit-gurmukhi-web-$(version)
	cp -p COPYRIGHT OFL.txt README  AUTHORS  ChangeLog Lohit-Gurmukhi.woff  Lohit-Gurmukhi.eot lohit-gurmukhi-web-$(version)
	rm -rf lohit-gurmukhi-web-$(version)/.git
	tar -cf lohit-gurmukhi-web-$(version).tar lohit-gurmukhi-web-$(version)
	gzip lohit-gurmukhi-web-$(version).tar
	rm -rf lohit-gurmukhi-web-$(version)

clean: cleanall
	rm -f *.ttf *.eot *.woff
	rm -rf *.tar.gz
	rm -rf lohit-gurmukhi*

.PHONY: ttf-bin woff-bin eot-bin webdist dist cleanall version test-ttf
