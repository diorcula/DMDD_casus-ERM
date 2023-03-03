BEGIN TRANSACTION;
CREATE TABLE "manufacturers" (
"manufacturer" TEXT,
  "email" TEXT,
  "address" TEXT
);
INSERT INTO "manufacturers" VALUES('Doepfer GmbH','sales@doepfer.de','Geigerstr. 13 D-82166 Gräfelfing / Deutschland Phone: +49 89 89809510 Fax: +49 089 89809511');
INSERT INTO "manufacturers" VALUES('MFB GmbH','info@mfberlin.de','Marconistr. 24 D-12166 Berlin / Deutschland Tel: 030/801 56 52 Fax: 030/802 36 13');
INSERT INTO "manufacturers" VALUES('Ljunggren Audio','info@ljunggrenaudio.com','Becksjudarvägen 4A 660 64 Smorbrod / Sweden');
INSERT INTO "manufacturers" VALUES('Royal Ohm','export@royalohm.com','20/1-2 Moo 2, Klong Na, Muang, Chachoengsao 24000, Thailand.');
INSERT INTO "manufacturers" VALUES('Stannol','vertrieb@stannol.de','Haberstraße 24, 42551 Velbert, Germany');
INSERT INTO "manufacturers" VALUES('Erica Synths SIA','info@ericasynths.lv','Slokas 31-2');
INSERT INTO "manufacturers" VALUES('Befaco','sales@befaco.org','Barcelona');
INSERT INTO "manufacturers" VALUES('Intellijel','terence@intellijel.ca','Canada');
INSERT INTO "manufacturers" VALUES('cre8audio','sales@thomann.de','CRE8Audio');
CREATE TABLE "products" (
"productno" TEXT,
  "manufacturer" TEXT,
  "product" TEXT,
  "description" TEXT,
  "sellingprice" REAL,
  "purchaseprice" REAL,
  "category" TEXT,
  "functions" TEXT,
  "notes" TEXT
);
INSERT INTO "products" VALUES('C1380a','Doepfer','Doepfer Low cost case 1 row','The Doepfer Low Cost Case 1 Row is a simple 1 row case that includes a power supply with 12 connections for modules.',140.5,90.95,'case',NULL,NULL);
INSERT INTO "products" VALUES('C1380b','Deopfer','Doepfer Low cost case 2 rows','The Doepfer Low Cost Case 2 Rows is a simple 2 row case that includes a power supply with 24 connections for modules.',249.99,180.95,'case',NULL,NULL);
INSERT INTO "products" VALUES('A-191','Doepfer','Doepfer MIDI to CV concerter','Connect a MIDI controller to your rack',90.99,56.88,'module','midi to cv converter',NULL);
INSERT INTO "products" VALUES('G19B12','MFB','MFB Simple oscillator','The MFB Simple Oscillator is an oscillator that offers triangle and saw wave output. Octave range 0.1 KHz – 10KHz.',99.95,45.99,'module','oscillator',NULL);
INSERT INTO "products" VALUES('1920-0921','Befaco','4 Channel mixer','STMix is a compact 4 channel stereo mixer with an auxiliar input. ',120.15,75.66,'module','mixer',NULL);
INSERT INTO "products" VALUES('HXKJ-134','Intellij','Quad VCA','Each of the four VCAs has independent level control, bipolar CV inputs with attenuators and led indicators, adjustable linear/exponential response and and a +6dB boost switch to double the channels output. Each channel''s CV inputs are cascaded to the next, as are its outputs so that you can create submixes.',239.95,189.0,'module','mixer, vca',NULL);
INSERT INTO "products" VALUES('A-124','Doepfer','Doepfer WASP Filter','Module A-124 is a special 12dB multimode filter using the "strange" filter circuit of the "EDP Wasp" (an analog synthesizer with black/yellow case built end of the seventies, manufactured by the UK company "Electronic Dream Plant" with Chris Huggett und Adrian Wagner). This design "abuses" digital inverters as analog operational amplifiers leading to distortions and other "dirty" effects that generate the specific sound of this filter.',85.0,65.35,'module','filter',NULL);
INSERT INTO "products" VALUES('G18B51','MFB','MFB Dual LFO','The DUAL LFO module houses two individual low frequency oscillators (LFOs) used mainly for modulation purposes. Each LFO section offers three selectable waveforms, CV-input with attenuator and a rate ranging from 10 seconds to approximately 100 Hz. By applying positive or negative voltage, this range can be widened with a factor up to 30, resulting in extreme slow or fast modulation rates.',110.0,76.0,'module','lfo, osc',NULL);
INSERT INTO "products" VALUES('MC-30-S','cre8audio','Patch cables 30 cm (set 5 pcs)',NULL,9.99,5.75,'cables',NULL,NULL);
INSERT INTO "products" VALUES('1499083-89/B','Ljunggren Audio','RYO Amp Mix','A 4 channel amplifier mixer',24.99,9.99,'module','amplifier, mixer','PCB Only');
INSERT INTO "products" VALUES('1499083-89/C','Ljunggren Audio','RYO Amp Mix','A 4 channel amplifier mixer',89.95,55.99,'module','amplifier, mixer','prebuilt');
INSERT INTO "products" VALUES('1499083-89/A','Ljunggren Audio','RYO Amp Mix','A 4 channel amplifier mixer',49.95,15.99,'module','amplifier, mixer','Kit');
INSERT INTO "products" VALUES('87190321001','Royal Ohm','SCI Pot meter mono 10KOhm',NULL,1.79,0.35,'component',NULL,NULL);
INSERT INTO "products" VALUES('B0091882991','Stannol','Stannol HS10 Soldering lead 250G',NULL,14.95,9.99,'tools',NULL,NULL);
INSERT INTO "products" VALUES('MI-BL3','Mutable Instruments','Blades','Dual multimode filter',299.0,231.0,'module','filter',NULL);
INSERT INTO "products" VALUES('MI-B01','Mutable Instruments','Beads','Texture Synthesizer',299.0,231.0,'module',NULL,NULL);
INSERT INTO "products" VALUES('MI-R04','Mutable Instruments','Ripples','Liquid filter',169.0,89.0,'module','filter',NULL);
INSERT INTO "products" VALUES('1830-0381/1','Befaco','Rampage','Dual Sergesque Slope Generator with Logical Crossfading',130.0,98.0,'module','filter, envelope, function generator, slew limiter, lfo','kit');
INSERT INTO "products" VALUES('1830-0381/2','Befaco','Rampage','Dual Sergesque Slope Generator with Logical Crossfading',60.0,49.0,'module','filter, envelope, function generator, slew limiter, lfo','pcb');
INSERT INTO "products" VALUES('1830-0381/2c','Befaco','Rampage','Dual Sergesque Slope Generator with Logical Crossfading',70.0,59.0,'module','filter, envelope, function generator, slew limiter, lfo','pcb + chip');
INSERT INTO "products" VALUES('1830-0381/full','Befaco','Rampage','Dual Sergesque Slope Generator with Logical Crossfading',260.0,180.0,'module','filter, envelope, function generator, slew limiter, lfo','assembled');
COMMIT;
