all: sfd-dist ttf woff eot ttf-dist web-dist  
version:= 2.91.5

test: test-ttf
	@echo "----------Testing actual-output with expected-output----------"
	fontforge -lang=py -script auto_test.py std-test-out.txt Lohit-Bengali.ttf

ttf: ttf-bin
	@echo "----------Generating ttf from sfd file----------"
	fontforge -lang=py -script apply_featurefile.py Lohit-Bengali.sfd Lohit-Bengali.fea
	./generate.pe *.sfd
	@echo "----------Finished generating ttf file----------"
	@echo " "

woff: woff-bin
	@echo "----------Generating woff from ttf file----------"
	sfntly -w Lohit-Bengali.ttf Lohit-Bengali.woff
	@echo "----------Finished generating woff file----------"
	@echo " "

eot: eot-bin
	@echo "----------Generating eot from ttf file----------"
	sfntly -e -x Lohit-Bengali.ttf Lohit-Bengali.eot
	@echo "----------Finished generating eot file----------"
	@echo " "

ttf-dist: dist
	mkdir lohit-bengali-ttf-$(version)
	cp -p COPYRIGHT OFL.txt test-bengali.txt README  AUTHORS ChangeLog 66-lohit-bengali.conf Lohit-Bengali.ttf io.pagure.lohit.bengali.font.metainfo.xml lohit-bengali-ttf-$(version)
	rm -rf lohit-bengali-ttf-$(version)/.git
	tar -cf lohit-bengali-ttf-$(version).tar lohit-bengali-ttf-$(version)
	gzip lohit-bengali-ttf-$(version).tar
	rm -rf lohit-bengali-ttf-$(version)

sfd-dist: dist
	mkdir lohit-bengali-$(version)
	cp -p COPYRIGHT OFL.txt test-bengali.txt README  AUTHORS generate*.pe apply_featurefile.py auto_test.py *.fea Makefile ChangeLog 66-lohit-bengali.conf Lohit-Bengali.sfd std-test-out.txt io.pagure.lohit.bengali.font.metainfo.xml lohit-bengali-$(version)
	rm -rf lohit-bengali-$(version)/.git
	rm -rf lohit-bengali-$(version)/*.ttf
	tar -cf lohit-bengali-$(version).tar lohit-bengali-$(version)
	gzip lohit-bengali-$(version).tar
	rm -rf lohit-bengali-$(version)

web-dist: webdist
	mkdir lohit-bengali-web-$(version)
	cp -p COPYRIGHT OFL.txt test-bengali.txt README  AUTHORS ChangeLog Lohit-Bengali.woff  Lohit-Bengali.eot lohit-bengali-web-$(version)
	rm -rf lohit-bengali-web-$(version)/.git
	tar -cf lohit-bengali-web-$(version).tar lohit-bengali-web-$(version)
	gzip lohit-bengali-web-$(version).tar
	rm -rf lohit-bengali-web-$(version)

clean: cleanall
	rm -f *.ttf *.eot *.woff
	rm -rf *.tar.gz
	rm -rf lohit-bengali*

.PHONY: ttf-bin woff-bin eot-bin webdist dist cleanall version test-ttf
