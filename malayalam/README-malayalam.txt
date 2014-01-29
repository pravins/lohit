This readme is specifically for Lohit Malayalam. For instruction on installation and other stuff open README
	- To generate ttf from feature file

Referetial Assets : 
	- TDIL  http://tdil.mit.gov.in/pdf/Vishwabharat/tdil-april-2002.zip
	- Unicode specifications

In corresspondance with vishwabharat TDIL ,
	We followed 4.2.2 Malayalam Script Details ( subsection 9.rendering) 
	>> Rule for LAKAR: 
		LAKAR is formed when the Malayalam letter LA (0D32) is at the end of a consonant/ consonant cluster. A special sign is put at the bottom of the consonant/ consonant cluster.
		
	>> Rule for VAKAR: 
		VAKAR is formed when the Malayalam letter VA (0D35) is at the end of a consonant cluster. The special sign ‘z‘ is post posed to the consonant/consonant cluster.

Lookups added for Features: 
	-Akhand <akhn>
		{bamlm_viramamlm_bamlm
		bamlm_viramamlm_damlm,
		bamlm_viramamlm_dhamlm,
		bamlm_viramamlm_lamlm,
		camlm_viramamlm_camlm,
		camlm_viramamlm_chamlm,
		damlm_viramamlm_damlm,
		damlm_viramamlm_dhamlm,
		ddamlm_viramamlm_ddamlm,
		gamlm_viramamlm_gamlm,
		gamlm_viramamlm_lamlm,
		gamlm_viramamlm_mamlm,
		gamlm_viramamlm_namlm,
		hamlm_viramamlm_lamlm,
		hamlm_viramamlm_mamlm,
		hamlm_viramamlm_namlm,
		jamlm_viramamlm_jamlm,
		jamlm_viramamlm_nyamlm,
		kamlm_viramamlm_kamlm,
		kamlm_viramamlm_lamlm,
		kamlm_viramamlm_ssamlm,
		kamlm_viramamlm_tamlm,
		kamlm_viramamlm_ttamlm,
		la_virama_ka_virama_ka,
		lamlm_viramamlm_kamlm,
		lamlm_viramamlm_lamlm,
		llamlm_viramamlm_llamlm,
		mamlm_viramamlm_mamlm,
		mamlm_viramamlm_lamlm,
		mamlm_viramamlm_pamlm,
		namlm_viramamlm_damlm,
		namlm_viramamlm_dhamlm,
		namlm_viramamlm_mamlm,
		namlm_viramamlm_namlm,
		namlm_viramamlm_rramlm,
		namlm_viramamlm_tamlm,
		namlm_viramamlm_thamlm,
		ngamlm_viramamlm_kamlm,
		ngamlm_viramamlm_ngamlm,
		nnamlm_viramamlm_ddamlm,
		nnamlm_viramamlm_mamlm,
		nnamlm_viramamlm_nnamlm,
		nnamlm_viramamlm_ttamlm,
		nyamlm_viramamlm_nyamlm,
		nyamlm_viramamlm_camlm,
		nyamlm_viramamlm_jamlm,
		pamlm_viramamlm_lamlm,
		pamlm_viramamlm_pamlm,
		phamlm_viramamlm_lamlm,
		rramlm_viramamlm_rramlm,
		samlm_viramamlm_kamlm,
		samlm_viramamlm_lamlm,
		samlm_viramamlm_namlm,
		samlm_viramamlm_phamlm,
		samlm_viramamlm_samlm,
		samlm_viramamlm_tamlm,
		samlm_viramamlm_thamlm,
		shamlm_viramamlm_camlm,
		shamlm_viramamlm_lamlm,
		shamlm_viramamlm_shamlm,
		ssamlm_viramamlm_kamlm,
		ssamlm_viramamlm_ttamlm,
		tamlm_viramamlm_bhamlm,
		tamlm_viramamlm_lamlm,
		tamlm_viramamlm_mamlm,
		tamlm_viramammlm_namlm,
		tamlm_viramamlm_samlm,
		tamlm_viramamlm_tamlm,
		tamlm_viramamlm_thamlm,
		ttamlm_viramamlm_ttamlm,
		vamlm_viramamlm_lamlm,
		vamlm_viramamlm_vamlm,
		yamlm_viramalm_kamlm,
		yamlm_viramamlm_yamlm	
		}
 	-Pre-base form of consonant <pref>
		{ramlm_viramamlm}
	-Below form of consonant <blwf>
		{viramamlm_lamlm,
		viramamlm_lamlm.blwf}
	-Post-base form of consonant <pstf>
		{viramamlm_rramlm,
		viramamlm_yamlm,
		viramamlm_vamlm}
	-Half-FormSubstitution<half>
		{five chillu characters}
	-Postbase-FormSubstitution<pstf>
		{viramamlm_rramlm
		viramamlm_vamlm
		viramamlm_yamlm}
	-PostbaseSubstitution<psts>
		{Ya + post-base Ya 
		Va + post-base Va}
		contextual rules to fit newly added matras on proper glyphs

Following glyphs are from old Lohit-Malayalam font 2.5.4 . This Glyphs are not having any rules written in the Lookup. So presently we are not sure about where they are actually been used. If anybody knows their usage, please let us know about the same.
	- glyph 225
	- glyph222
	- glyph 97
	- glyph 98

Glyphs not in use :
	- glyph97
	- glyph98
	- glyph187
	- glyph206
	- glyph209
	- glyph215
	- glyph216
	- glyph217
	- glyph218
	- glyph219	
	- glyph220
	- glyph221
	- glyph223
	- glyph244
	- u0030

Glyphs Removed :

	- glyph84
	- glyph85
	- glyph86	
	- glyph87
	- glyph88
	- glyph89
	- glyph91
	- glyph95
	- glyph96
	- glyph99
	-28 glyphs (those that were forming rphf)

Glyphs Exceeding 31 character limlit :

	- ssa_rra_virama_rra_virama
	- la_virama_ka_virama_ka
	- rra_virama_rra_virama_ra
	- nna_virama_tta_virama_ra
	- na_virama_da_virama_ra
	- na_virama_ta_virama_ra
	- ma_virama_pa_virama_ra
	- na_virama_dha_virama_ra
	- nna_virama_tta_virama
	- na_virama_dha_virama
	- ssa_virama_tta_virama_ra
	- sa_virama_ta_virama_ra

Malayalam vowel letters

	-For ഈ Use  <oD08>  Do Not Use  <0D07,0D57>
	-For ഊ  Use  <0D0A>  Do Not Use  <0D09,0D57>
	-For ഐ Use  <0D10>  Do Not Use  <0D0E,0D46>
	-For ഓ  Use  <0D13>  Do Not Use  <0D12,0D3E>
	-For ഔ  Use  <0D14>  Do Not Use  <0D12,0D57>

Malayalam Orthographic Reform
	
	-Syllable : ku <ക + ു>  Older : <കു>  Reformed : <ക ു>
	-Similarly for chu, ju, nu, tu, bhu, ru, su, hu ...

Malayalam Conjuncts : 

	-here chandrakala stands for halant 

	-ക + ് + ഷ	-> ക്ഷ	(ksa) 
	-ക + ് + ക	-> ക്ക	(kka)
	-ജ + ് + ഞ	-> ജ്ഞ	(jna)
	-ട + ് + ട 	-> ട്ട	(tta)
	-പ + ് + പ	-> പ്പ	(ppa)
	-ച + ് + ഛ	-> ച്ഛ	(ccha)
	-ബ + ് + ബ	-> ബ്ബ	(bba)
	-പ + ് + ര	-> പ്ര	(pra)
	-ര + ് + പ	-> ര്പ 	(rpa)
	- ശ + ് + വ	-> ശ്വ	(sva)

Encoding Of Malayalam Chillus : 

	-  Visual  Representatation in 5.0 & Prioir	Preffered 5.1 Representation
	
	-  ണ്‍  	<0D23,0D4D,200D>				<0D7A> Malayalam Letter Chillu NN 
	-  ന്‍	<0D28,0D4D,200D>				<0D7B> Malayalam Letter Chillu N
	-  ര്‍		<0D30,0D4D,200D>				<0D7C> Malayalam Letter Chillu RR
	-  ല്‍	<0D32,0D4D,200D>				<0D7D> Malayalam Letter Chillu L
	-  ള്‍	<0D33,0D4D,200D>				<0D7E> Malayalam Letter Chillu LL
	-  ൿ	<UNDEFINED>					<0D7F> Malayalam Letter Chillu R

Malayalam /rr/ And /tt/

	-here ററ &റ്റ differs. 
	-for ററ it can be /rr/ or /tt/
	-റ്റ This represents /tt/
	
	-  പാററ		<0D2A,0D3E, 0D31,0D31>								  /paatta/	  cockroach
	-  പാറ്റ		<0D2A,0D3E, 0D31,0D4D,0D31>						  /paatta/	  cockroach
	-  ലെക്ചററോട്	<0D32,0D46,0D15,0D4D,0D1A,0D31,0D31,0D4B,0D1F,0D4D>/lekcararoot to the lecturer

Malayalam /nr/ And /nt/

	- Same case as that of /rr/ & /tt/ but with minor change i.e. of half-na +ra/ta
	
	-  ആൻേറാ	<0D06,0D7B,0D47,0D31,0D3E>	 		/aantoo/	(proper name)
	-  ആൻ്റോ	<0D06,0D7B,0D4D,0D31,0D47,0D3E>	/aantoo/	(proper name)
	-  എൻോൺ	<0D0E,0D7B,0D31,0D47,0D3E,0D7A>	/enrool/	(enroll - English word)

Advantageous over the fonts carrying additional overhead for maintaining the glyphs :

	Some fonts have written lookups which mapping the 'halant ligatures' with the 'ligature omitting virama sign' for e.g. replacing "rra_virama" with "rra" itself  & then applying the preceeding substitution thereby resulting to additional overhead for maintaining that lookup, meant for replacement, even when there is availability of proper glyph.
