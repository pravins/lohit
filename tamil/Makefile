all: sfd-dist ttf woff eot ttf-dist web-dist  
version:= 2.91.3

test: test-ttf
	@echo "----------Testing actual-output with expected-output----------"
	fontforge -lang=py -script auto_test.py std-test-out.txt Lohit-Tamil.ttf

ttf: ttf-bin
	@echo "----------Generating ttf from sfd file----------"
	fontforge -lang=py -script apply_featurefile.py Lohit-Tamil.sfd Lohit-Tamil.fea
	./generate.pe *.sfd
	@echo "----------Finished generating ttf file----------"
	@echo " "

woff: woff-bin
	@echo "----------Generating woff from ttf file----------"
	sfntly -w Lohit-Tamil.ttf Lohit-Tamil.woff
	@echo "----------Finished generating woff file----------"
	@echo " "

eot: eot-bin
	@echo "----------Generating eot from ttf file----------"
	sfntly -e -x Lohit-Tamil.ttf Lohit-Tamil.eot
	@echo "----------Finished generating eot file----------"
	@echo " "

ttf-dist: dist
	mkdir lohit-tamil-ttf-$(version)
	cp -p COPYRIGHT OFL.txt test-tamil.txt README  AUTHORS ChangeLog 66-lohit-tamil.conf Lohit-Tamil.ttf io.pagure.lohit.tamil.font.metainfo.xml lohit-tamil-ttf-$(version)
	rm -rf lohit-tamil-ttf-$(version)/.git
	tar -cf lohit-tamil-ttf-$(version).tar lohit-tamil-ttf-$(version)
	gzip lohit-tamil-ttf-$(version).tar
	rm -rf lohit-tamil-ttf-$(version)

sfd-dist: dist
	mkdir lohit-tamil-$(version)
	cp -p COPYRIGHT OFL.txt test-tamil.txt README  AUTHORS generate*.pe apply_featurefile.py auto_test.py *.fea Makefile ChangeLog 66-lohit-tamil.conf Lohit-Tamil.sfd std-test-out.txt io.pagure.lohit.tamil.font.metainfo.xml lohit-tamil-$(version)
	rm -rf lohit-tamil-$(version)/.git
	rm -rf lohit-tamil-$(version)/*.ttf
	tar -cf lohit-tamil-$(version).tar lohit-tamil-$(version)
	gzip lohit-tamil-$(version).tar
	rm -rf lohit-tamil-$(version)

web-dist: webdist
	mkdir lohit-tamil-web-$(version)
	cp -p COPYRIGHT OFL.txt test-tamil.txt README  AUTHORS ChangeLog Lohit-Tamil.woff  Lohit-Tamil.eot lohit-tamil-web-$(version)
	rm -rf lohit-tamil-web-$(version)/.git
	tar -cf lohit-tamil-web-$(version).tar lohit-tamil-web-$(version)
	gzip lohit-tamil-web-$(version).tar
	rm -rf lohit-tamil-web-$(version)

clean: cleanall
	rm -f *.ttf *.eot *.woff
	rm -rf *.tar.gz
	rm -rf lohit-tamil*

.PHONY: ttf-bin woff-bin eot-bin webdist dist cleanall version test-ttf
