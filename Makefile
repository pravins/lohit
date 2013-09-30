
all-ttf:= assamese bengali devanagari gujarati kannada malayalam marathi nepali oriya punjabi tamil tamil-classical telugu

all:
	
	for font in $(all-ttf); do \
                 cd $${font};	cp ../AUTHORS ../scripts/apply_featurefile.py  ../generate*.pe ../COPYRIGHT ../OFL.txt ../README .;	 make all;		 rm -f generate* *.py AUTHORS COPYRIGHT OFL.txt README;		 cd ..; \
        done

sfd-dist:
	
	for font in $(all-ttf); do \
                 cd $${font};	cp ../AUTHORS ../scripts/apply_featurefile.py ../generate*.pe ../COPYRIGHT ../OFL.txt ../README .;	 make sfd-dist;		 rm -f generate* AUTHORS COPYRIGHT OFL.txt README;		 cd ..; \
        done

ttf:
	
	for font in $(all-ttf); do \
                 cd $${font};	cp ../AUTHORS ../apply_featurefile.py ../generate*.pe ../COPYRIGHT ../OFL.txt ../README  .;	 make ttf;		 rm -f generate* *.py AUTHORS COPYRIGHT OFL.txt README;		 cd ..; \
        done
clean:
	for font in $(all-ttf); do \
                 cd $${font}; make clean; cd ..; \
        done
