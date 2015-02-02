all: sfd-dist ttf woff eot ttf-dist web-dist  
version:= 2.91.2

test: test-ttf
	@echo "----------Testing actual-output with expected-output----------"
	python auto_test.py std-test-out.txt Lohit-Assamese.ttf

ttf: ttf-bin
	@echo "----------Generating ttf from sfd file----------"
	python apply_featurefile.py Lohit-Assamese.sfd Lohit-Assamese.fea
	./generate.pe *.sfd
	@echo "----------Finished generating ttf file----------"
	@echo " "

woff: woff-bin
	@echo "----------Generating woff from ttf file----------"
	sfntly -w Lohit-Assamese.ttf Lohit-Assamese.woff
	@echo "----------Finished generating woff file----------"
	@echo " "

eot: eot-bin
	@echo "----------Generating eot from ttf file----------"
	sfntly -e -x Lohit-Assamese.ttf Lohit-Assamese.eot
	@echo "----------Finished generating eot file----------"
	@echo " "

ttf-dist: dist
	mkdir lohit-assamese-ttf-$(version)
	cp -p COPYRIGHT OFL.txt test-assamese.txt README  AUTHORS ChangeLog 66-lohit-assamese.conf Lohit-Assamese.ttf lohit-assamese-ttf-$(version)
	rm -rf lohit-assamese-ttf-$(version)/.git
	tar -cf lohit-assamese-ttf-$(version).tar lohit-assamese-ttf-$(version)
	gzip lohit-assamese-ttf-$(version).tar
	rm -rf lohit-assamese-ttf-$(version)

sfd-dist: dist
	mkdir lohit-assamese-$(version)
	cp -p COPYRIGHT OFL.txt test-assamese.txt README  AUTHORS generate*.pe apply_featurefile.py auto_test.py *.fea Makefile ChangeLog 66-lohit-assamese.conf Lohit-Assamese.sfd std-test-out.txt lohit-assamese-$(version)
	rm -rf lohit-assamese-$(version)/.git
	rm -rf lohit-assamese-$(version)/*.ttf
	tar -cf lohit-assamese-$(version).tar lohit-assamese-$(version)
	gzip lohit-assamese-$(version).tar
	rm -rf lohit-assamese-$(version)

web-dist: webdist
	mkdir lohit-assamese-web-$(version)
	cp -p COPYRIGHT OFL.txt test-assamese.txt README  AUTHORS ChangeLog Lohit-Assamese.woff  Lohit-Assamese.eot lohit-assamese-web-$(version)
	rm -rf lohit-assamese-web-$(version)/.git
	tar -cf lohit-assamese-web-$(version).tar lohit-assamese-web-$(version)
	gzip lohit-assamese-web-$(version).tar
	rm -rf lohit-assamese-web-$(version)

clean: cleanall
	rm -f *.ttf *.eot *.woff
	rm -rf *.tar.gz
	rm -rf lohit-assamese*

.PHONY: ttf-bin woff-bin eot-bin webdist dist cleanall version test-ttf
