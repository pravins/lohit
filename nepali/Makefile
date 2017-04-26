all: sfd-dist ttf woff eot ttf-dist web-dist
version:= 2.94.2

test: test-ttf
	@echo "----------Testing actual-output with expected-output----------"
	fontforge -lang=py -script auto_test.py std-test-out.txt Lohit-Nepali.ttf

ttf: ttf-bin
	@echo "----------Generating ttf from sfd file----------"
	fontforge -lang=py -script apply_featurefile.py Lohit-Nepali.sfd Lohit-Nepali.fea
	./generate.pe *.sfd
	@echo "----------Finished generating ttf file----------"
	@echo " "

woff: woff-bin
	@echo "----------Generating woff from ttf file----------"
	sfntly -w Lohit-Nepali.ttf Lohit-Nepali.woff
	@echo "----------Finished generating woff file----------"
	@echo " "

eot: eot-bin
	@echo "----------Generating eot from ttf file----------"
	sfntly -e -x Lohit-Nepali.ttf Lohit-Nepali.eot
	@echo "----------Finished generating eot file----------"
	@echo " "

ttf-dist: dist
	mkdir lohit-nepali-ttf-$(version)
	cp -p COPYRIGHT OFL.txt README test-nepali.txt  AUTHORS  ChangeLog  65-0-lohit-nepali.conf Lohit-Nepali.ttf io.pagure.lohit.nepali.font.metainfo.xml lohit-nepali-ttf-$(version)
	rm -rf lohit-nepali-ttf-$(version)/.git
	tar -cf lohit-nepali-ttf-$(version).tar lohit-nepali-ttf-$(version)
	gzip lohit-nepali-ttf-$(version).tar
	rm -rf lohit-nepali-ttf-$(version)

sfd-dist: dist
	mkdir lohit-nepali-$(version)
	cp -p COPYRIGHT OFL.txt README test-nepali.txt  AUTHORS generate*.pe *.py *.fea std-test-out.txt Makefile ChangeLog  65-0-lohit-nepali.conf Lohit-Nepali.sfd io.pagure.lohit.nepali.font.metainfo.xml lohit-nepali-$(version)
	rm -rf lohit-nepali-$(version)/.git
	rm -rf lohit-nepali-$(version)/*.ttf
	tar -cf lohit-nepali-$(version).tar lohit-nepali-$(version)
	gzip lohit-nepali-$(version).tar
	rm -rf lohit-nepali-$(version)

web-dist: webdist
	mkdir lohit-nepali-web-$(version)
	cp -p COPYRIGHT OFL.txt README  AUTHORS test-nepali.txt  ChangeLog Lohit-Nepali.woff  Lohit-Nepali.eot lohit-nepali-web-$(version)
	rm -rf lohit-nepali-web-$(version)/.git
	tar -cf lohit-nepali-web-$(version).tar lohit-nepali-web-$(version)
	gzip lohit-nepali-web-$(version).tar
	rm -rf lohit-nepali-web-$(version)

clean: cleanall
	rm -f *.ttf *.eot *.woff
	rm -rf *.tar.gz
	rm -rf lohit-nepali*

.PHONY: ttf-bin woff-bin eot-bin webdist dist cleanall version test-ttf
