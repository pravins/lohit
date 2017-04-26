all: sfd-dist ttf woff eot ttf-dist web-dist  
version:= 2.95.4

test: test-ttf
	@echo "----------Testing actual-output with expected-output----------"
	fontforge -lang=py -script auto_test.py std-test-out.txt Lohit-Devanagari.ttf

ttf: ttf-bin
	@echo "----------Generating ttf from sfd file----------"
	fontforge -lang=py -script apply_featurefile.py Lohit-Devanagari.sfd Lohit-Devanagari.fea
	./generate.pe *.sfd
	ttfautohint -D deva -f deva -n Lohit-Devanagari.ttf Lohit.ttf
	mv Lohit.ttf Lohit-Devanagari.ttf
	@echo "----------Finished generating ttf file----------"
	@echo " "

woff: woff-bin
	@echo "----------Generating woff from ttf file----------"
	sfntly -w Lohit-Devanagari.ttf Lohit-Devanagari.woff
	@echo "----------Finished generating woff file----------"
	@echo " "

eot: eot-bin
	@echo "----------Generating eot from ttf file----------"
	sfntly -e -x Lohit-Devanagari.ttf Lohit-Devanagari.eot
	@echo "----------Finished generating eot file----------"
	@echo " "

ttf-dist: dist
	mkdir lohit-devanagari-ttf-$(version)
	cp -p COPYRIGHT OFL.txt test-devanagari.txt README  AUTHORS ChangeLog 66-lohit-devanagari.conf 59-lohit-devanagari.conf Lohit-Devanagari.ttf io.pagure.lohit.devanagari.font.metainfo.xml lohit-devanagari-ttf-$(version)
	rm -rf lohit-devanagari-ttf-$(version)/.git
	tar -cf lohit-devanagari-ttf-$(version).tar lohit-devanagari-ttf-$(version)
	gzip lohit-devanagari-ttf-$(version).tar
	rm -rf lohit-devanagari-ttf-$(version)

sfd-dist: dist
	mkdir lohit-devanagari-$(version)
	cp -p COPYRIGHT OFL.txt test-devanagari.txt README  AUTHORS generate*.pe apply_featurefile.py auto_test.py *.fea Makefile ChangeLog 66-lohit-devanagari.conf 59-lohit-devanagari.conf Lohit-Devanagari.sfd std-test-out.txt io.pagure.lohit.devanagari.font.metainfo.xml lohit-devanagari-$(version)
	rm -rf lohit-devanagari-$(version)/.git
	rm -rf lohit-devanagari-$(version)/*.ttf
	tar -cf lohit-devanagari-$(version).tar lohit-devanagari-$(version)
	gzip lohit-devanagari-$(version).tar
	rm -rf lohit-devanagari-$(version)

web-dist: webdist
	mkdir lohit-devanagari-web-$(version)
	cp -p COPYRIGHT OFL.txt test-devanagari.txt README  AUTHORS ChangeLog Lohit-Devanagari.woff  Lohit-Devanagari.eot lohit-devanagari-web-$(version)
	rm -rf lohit-devanagari-web-$(version)/.git
	tar -cf lohit-devanagari-web-$(version).tar lohit-devanagari-web-$(version)
	gzip lohit-devanagari-web-$(version).tar
	rm -rf lohit-devanagari-web-$(version)

clean: cleanall
	rm -f *.ttf *.eot *.woff
	rm -rf *.tar.gz
	rm -rf lohit-devanagari*

.PHONY: ttf-bin woff-bin eot-bin webdist dist cleanall version test-ttf
