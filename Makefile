
all-ttf:= assamese bengali devanagari gujarati kannada malayalam marathi nepali oriya punjabi tamil tamil-classical telugu

all:
	
	for font in $(all-ttf); do \
                 cd $${font};	cp ../AUTHORS ../generate*.pe ../COPYRIGHT ../OFL.txt ../README ../README.cvs .;	 make all;		 rm -f generate* AUTHORS COPYRIHGT OFL.txt README README.cvs;		 cd ..; \
        done

clean:
	for font in $(all-ttf); do \
                 cd $${font}; make clean; cd ..; \
        done
