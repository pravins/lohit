all: sfd-dist ttf woff eot ttf-dist web-dist

version:= 2.92.2

ttf: ttf-bin
	@echo "----------Generating ttf from sfd file----------"
	python apply_featurefile.py Lohit-Gujarati.sfd Lohit-Gujarati.fea
	./generate.pe *.sfd
	@echo "----------Finished generating ttf file----------"
	@echo " "

woff: woff-bin
	@echo "----------Generating woff from ttf file----------"
	java -jar /usr/share/java/sfnttool.jar -w Lohit-Gujarati.ttf Lohit-Gujarati.woff
	@echo "----------Finished generating woff file----------"
	@echo " "

eot: eot-bin
	@echo "----------Generating eot from ttf file----------"
	java -jar /usr/share/java/sfnttool.jar -e -x Lohit-Gujarati.ttf Lohit-Gujarati.eot
	@echo "----------Finished generating eot file----------"
	@echo " "

ttf-dist: dist
	mkdir lohit-gujarati-ttf-$(version)
	cp -p COPYRIGHT OFL.txt test-gujarati.txt README  AUTHORS  ChangeLog 66-lohit-gujarati.conf Lohit-Gujarati.ttf lohit-gujarati-ttf-$(version)
	rm -rf lohit-gujarati-ttf-$(version)/.git
	tar -cf lohit-gujarati-ttf-$(version).tar lohit-gujarati-ttf-$(version)
	gzip lohit-gujarati-ttf-$(version).tar
	rm -rf lohit-gujarati-ttf-$(version)

sfd-dist: dist
	mkdir lohit-gujarati-$(version)
	cp -p COPYRIGHT OFL.txt test-gujarati.txt README  AUTHORS generate*.pe *.py *.fea Makefile ChangeLog 66-lohit-gujarati.conf Lohit-Gujarati.sfd lohit-gujarati-$(version)
	rm -rf lohit-gujarati-$(version)/.git
	rm -rf lohit-gujarati-$(version)/*.ttf
	tar -cf lohit-gujarati-$(version).tar lohit-gujarati-$(version)
	gzip lohit-gujarati-$(version).tar
	rm -rf lohit-gujarati-$(version)

web-dist: webdist
	mkdir lohit-gujarati-web-$(version)
	cp -p COPYRIGHT OFL.txt test-gujarati.txt README  AUTHORS  ChangeLog Lohit-Gujarati.woff  Lohit-Gujarati.eot lohit-gujarati-web-$(version)
	rm -rf lohit-gujarati-web-$(version)/.git
	tar -cf lohit-gujarati-web-$(version).tar lohit-gujarati-web-$(version)
	gzip lohit-gujarati-web-$(version).tar
	rm -rf lohit-gujarati-web-$(version)

clean: cleanall
	rm -f *.ttf *.eot *.woff
	rm -rf *.tar.gz
	rm -rf lohit-gujarati*

.PHONY: ttf-bin woff-bin eot-bin webdist dist cleanall version
