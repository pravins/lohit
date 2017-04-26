all: sfd-dist ttf woff eot ttf-dist web-dist  
version:= 2.91.2

test: test-ttf
	@echo "----------Testing actual-output with expected-output----------"
	fontforge -lang=py -script auto_test.py std-test-out.txt Lohit-Odia.ttf

ttf: ttf-bin
	@echo "----------Generating ttf from sfd file----------"
	fontforge -lang=py -script apply_featurefile.py Lohit-Odia.sfd Lohit-Odia.fea
	./generate.pe *.sfd
	@echo "----------Finished generating ttf file----------"
	@echo " "

woff: woff-bin
	@echo "----------Generating woff from ttf file----------"
	sfntly -w Lohit-Odia.ttf Lohit-Odia.woff
	@echo "----------Finished generating woff file----------"
	@echo " "

eot: eot-bin
	@echo "----------Generating eot from ttf file----------"
	sfntly -e -x Lohit-Odia.ttf Lohit-Odia.eot
	@echo "----------Finished generating eot file----------"
	@echo " "

ttf-dist: dist
	mkdir lohit-odia-ttf-$(version)
	cp -p COPYRIGHT OFL.txt test-odia.txt README  AUTHORS ChangeLog 66-lohit-odia.conf Lohit-Odia.ttf io.pagure.lohit.odia.font.metainfo.xml lohit-odia-ttf-$(version)
	rm -rf lohit-odia-ttf-$(version)/.git
	tar -cf lohit-odia-ttf-$(version).tar lohit-odia-ttf-$(version)
	gzip lohit-odia-ttf-$(version).tar
	rm -rf lohit-odia-ttf-$(version)

sfd-dist: dist
	mkdir lohit-odia-$(version)
	cp -p COPYRIGHT OFL.txt test-odia.txt README  AUTHORS generate*.pe apply_featurefile.py auto_test.py *.fea Makefile ChangeLog 66-lohit-odia.conf Lohit-Odia.sfd std-test-out.txt io.pagure.lohit.odia.font.metainfo.xml lohit-odia-$(version)
	rm -rf lohit-odia-$(version)/.git
	rm -rf lohit-odia-$(version)/*.ttf
	tar -cf lohit-odia-$(version).tar lohit-odia-$(version)
	gzip lohit-odia-$(version).tar
	rm -rf lohit-odia-$(version)

web-dist: webdist
	mkdir lohit-odia-web-$(version)
	cp -p COPYRIGHT OFL.txt test-odia.txt README  AUTHORS ChangeLog Lohit-Odia.woff  Lohit-Odia.eot lohit-odia-web-$(version)
	rm -rf lohit-odia-web-$(version)/.git
	tar -cf lohit-odia-web-$(version).tar lohit-odia-web-$(version)
	gzip lohit-odia-web-$(version).tar
	rm -rf lohit-odia-web-$(version)

clean: cleanall
	rm -f *.ttf *.eot *.woff
	rm -rf *.tar.gz
	rm -rf lohit-odia*

.PHONY: ttf-bin woff-bin eot-bin webdist dist cleanall version test-ttf
