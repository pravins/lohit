all: sfd-dist ttf woff eot ttf-dist web-dist

version:= 2.92.2

test: test-ttf
	@echo "----------Testing actual-output with expected-output----------"
	fontforge -lang=py -script auto_test.py std-test-out.txt Lohit-Malayalam.ttf

ttf: ttf-bin
	@echo "----------Generating ttf from sfd file----------"
	fontforge -lang=py -script apply_featurefile.py Lohit-Malayalam.sfd Lohit-Malayalam.fea
	./generate.pe *.sfd
	@echo "----------Finished generating ttf file----------"
	@echo " "

woff: woff-bin
	@echo "----------Generating woff from ttf file----------"
	sfntly -w Lohit-Malayalam.ttf Lohit-Malayalam.woff
	@echo "----------Finished generating woff file----------"
	@echo " "

eot: eot-bin
	@echo "----------Generating eot from ttf file----------"
	sfntly -e -x Lohit-Malayalam.ttf Lohit-Malayalam.eot
	@echo "----------Finished generating eot file----------"
	@echo " "

ttf-dist: dist
	mkdir lohit-malayalam-ttf-$(version)
	cp -p COPYRIGHT OFL.txt test-malayalam.txt README  AUTHORS  ChangeLog  67-lohit-malayalam.conf Lohit-Malayalam.ttf io.pagure.lohit.malayalam.font.metainfo.xml lohit-malayalam-ttf-$(version)
	rm -rf lohit-malayalam-ttf-$(version)/.git
	tar -cf lohit-malayalam-ttf-$(version).tar lohit-malayalam-ttf-$(version)
	gzip lohit-malayalam-ttf-$(version).tar
	rm -rf lohit-malayalam-ttf-$(version)

sfd-dist: dist
	mkdir lohit-malayalam-$(version)
	cp -p COPYRIGHT OFL.txt test-malayalam.txt std-test-out.txt README  AUTHORS generate*.pe apply_featurefile.py auto_test.py *.fea Makefile ChangeLog  67-lohit-malayalam.conf Lohit-Malayalam.sfd io.pagure.lohit.malayalam.font.metainfo.xml lohit-malayalam-$(version)
	rm -rf lohit-malayalam-$(version)/.git
	rm -rf lohit-malayalam-$(version)/*.ttf
	tar -cf lohit-malayalam-$(version).tar lohit-malayalam-$(version)
	gzip lohit-malayalam-$(version).tar
	rm -rf lohit-malayalam-$(version)

web-dist: webdist
	mkdir lohit-malayalam-web-$(version)
	cp -p COPYRIGHT OFL.txt test-malayalam.txt README  AUTHORS  ChangeLog  Lohit-Malayalam.woff  Lohit-Malayalam.eot lohit-malayalam-web-$(version)
	rm -rf lohit-malayalam-web-$(version)/.git
	tar -cf lohit-malayalam-web-$(version).tar lohit-malayalam-web-$(version)
	gzip lohit-malayalam-web-$(version).tar
	rm -rf lohit-malayalam-web-$(version)

clean: cleanall
	rm -f *.ttf *.eot *.woff
	rm -rf *.tar.gz
	rm -rf lohit-malayalam*

.PHONY: ttf-bin woff-bin eot-bin webdist dist cleanall version test-ttf
