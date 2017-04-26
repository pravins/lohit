all: sfd-dist ttf woff eot ttf-dist web-dist

version:= 2.5.4

ttf: ttf-bin
	@echo "----------Generating ttf from sfd file----------"
	./generate.pe *.sfd
	@echo "----------Finished generating ttf file----------"
	@echo " "

woff: woff-bin
	@echo "----------Generating woff from ttf file----------"
	sfntly -w Lohit-Kannada.ttf Lohit-Kannada.woff
	@echo "----------Finished generating woff file----------"
	@echo " "

eot: eot-bin
	@echo "----------Generating eot from ttf file----------"
	sfntly -e -x Lohit-Kannada.ttf Lohit-Kannada.eot
	@echo "----------Finished generating eot file----------"
	@echo " "

ttf-dist: dist
	mkdir lohit-kannada-ttf-$(version)
	cp -p COPYRIGHT OFL.txt README  AUTHORS  ChangeLog  66-lohit-kannada.conf Lohit-Kannada.ttf io.pagure.lohit.kannada.font.metainfo.xml lohit-kannada-ttf-$(version)
	rm -rf lohit-kannada-ttf-$(version)/.git
	tar -cf lohit-kannada-ttf-$(version).tar lohit-kannada-ttf-$(version)
	gzip lohit-kannada-ttf-$(version).tar
	rm -rf lohit-kannada-ttf-$(version)

sfd-dist: dist
	mkdir lohit-kannada-$(version)
	cp -p COPYRIGHT OFL.txt README  AUTHORS generate*.pe Makefile ChangeLog 66-lohit-kannada.conf Lohit-Kannada.sfd io.pagure.lohit.kannada.font.metainfo.xml lohit-kannada-$(version)
	rm -rf lohit-kannada-$(version)/.git
	rm -rf lohit-kannada-$(version)/*.ttf
	tar -cf lohit-kannada-$(version).tar lohit-kannada-$(version)
	gzip lohit-kannada-$(version).tar
	rm -rf lohit-kannada-$(version)

web-dist: webdist
	mkdir lohit-kannada-web-$(version)
	cp -p COPYRIGHT OFL.txt README  AUTHORS  ChangeLog  Lohit-Kannada.woff  Lohit-Kannada.eot lohit-kannada-web-$(version)
	rm -rf lohit-kannada-web-$(version)/.git
	tar -cf lohit-kannada-web-$(version).tar lohit-kannada-web-$(version)
	gzip lohit-kannada-web-$(version).tar
	rm -rf lohit-kannada-web-$(version)

clean: cleanall
	rm -f *.ttf *.eot *.woff
	rm -rf *.tar.gz
	rm -rf lohit-kannada*

.PHONY: ttf-bin woff-bin eot-bin webdist dist cleanall version
