BEGIN;

DROP TABLE IF EXISTS "dinosaures","epoques","continents","familles","locomotions","environements","regime_alimentaire";

CREATE TABLE IF NOT EXISTS "continents" (
    "id" INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    "label" TEXT NOT NULL,
    "created_at" TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS "epoques" (
    "id" INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    "label" TEXT NOT NULL,
    "created_at" TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS "familles" (
    "id" INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    "label" TEXT NOT NULL,
    "created_at" TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS "locomotions" (
    "id" INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    "label" TEXT NOT NULL,
    "created_at" TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS "environements" (
    "id" INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    "label" TEXT NOT NULL,
    "created_at" TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS "regime_alimentaire" (
    "id" INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    "label" TEXT NOT NULL,
    "created_at" TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS "dinosaures" (
    "id" INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    "name" VARCHAR(255) NOT NULL,
    "img" VARCHAR(255),
    "hauteur" INTEGER DEFAULT 0,
    "longeur" INTEGER DEFAULT 0,
    "poids" INTEGER DEFAULT 0,
    "description" TEXT DEFAULT '-',
    "epoque_id" INTEGER  REFERENCES epoques("id") ON DELETE CASCADE,
    "famille_id" INTEGER  REFERENCES familles("id") ON DELETE CASCADE,
    "locomotion_id" INTEGER  REFERENCES locomotions("id") ON DELETE CASCADE, 
    "environement_id" INTEGER  REFERENCES environements("id") ON DELETE CASCADE, 
    "regime_alimentaire_id" INTEGER  REFERENCES regime_alimentaire("id") ON DELETE CASCADE,
    "continent_id" INTEGER  REFERENCES continents("id") ON DELETE CASCADE,  
    "created_at" TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO "continents" ("label") VALUES  
('afrique'),
('amérique du nord'),
('amérique du sud'),
('asie'),
('australie'),
('europe');

INSERT INTO "epoques" ("label") VALUES  
('crétacé'),
('jurassique'),
('trias');

INSERT INTO "familles" ("label") VALUES  
('ankylosauridae'),
('cornus'),
('cuirassés'),
('diplodocoidea'),
('marin'),
('hadrosauridé'),
('ornithisciens'),
('ornithopode'),
('pachycephalosauridae'),
('petit'),
('plumeux'),
('polycotylidae'),
('prédateurs'),
('sauropode'),
('théropode'),
('volants');

INSERT INTO "locomotions" ("label") VALUES  
('bipède'),
('nageant'),
('quadrupède'),
('volant');

INSERT INTO "environements" ("label") VALUES  
('aquatique'),
('aérien'),
('terrestre');

INSERT INTO "regime_alimentaire" ("label") VALUES  
('piscivore'),
('carnivore'),
('herbivore'),
('insectivore');

INSERT INTO "dinosaures" ("name","img","hauteur","longeur","poids","epoque_id","famille_id","locomotion_id","environement_id","regime_alimentaire_id","description") VALUES  
('abydosaurus','https://dinotoapi.com/doc/asset/img/Abydosaurus.jpeg',0,0,0,1,4,4,3,2,'Abydosaurus (abydosaure en français), qui signifie « lézard d Abydos », est un genre éteint de dinosaures sauropodes, plus précisément un membre de la famille des brachiosauridés. Connu à partir d un crâne et de matériel post-crânien, il a été trouvé dans des sédiments datant de la fin du Crétacé inférieur dans le nord-est de l Utah, aux États-Unis.'),
('diplodocus','https://dinotoapi.com/doc/asset/img/Diplodocus.jpeg',700,2500,15000,1,4,4,3,2,'Le Diplodocus était un herbivore qui se nourrissait principalement de plantes, et il faisait partie de la diversité des sauropodes qui peuplaient l Amérique du Nord pendant le Jurassique. Il était caractérisé par son long cou, sa longue queue, et sa morphologie générale allongée.'),
('velociraptor','https://dinotoapi.com/doc/asset/img/Velociraptor.jpeg',50,200,25,1,4,4,2,2,'Petit dinosaure carnivore connu pour sa vélocité'),
('iguanodon','https://dinotoapi.com/doc/asset/img/iguanodon.jpeg',400,1000,4000,1,4,4,2,2,'L Iguanodon était l un des premiers dinosaures découverts et décrits au XIXe siècle. Il a été initialement mal interprété en raison de la confusion entre son pouce modifié, souvent appelé "pouce d Iguanodon", et un défaut de compréhension de la position de ses membres. Plus tard, il a été compris que l Iguanodon était quadrupède mais capable de se tenir sur ses pattes arrière pour se nourrir des branches d arbres.'),
('pteranodon','https://dinotoapi.com/doc/asset/img/Pteranodon.jpeg',180,600,20,1,4,4,2,2,'Ptérosaure volant avec une envergure impressionnante'),
('pterodactylus','https://dinotoapi.com/doc/asset/img/Pterodactylus.jpeg',91,4,25,1,4,4,2,2,'Le Pterodactylus est un dinosaure volant qui vivait il y a environ 150 millions à 145 millions d’années pendant la période du Jurassique supérieur.'),
('tricératops','https://dinotoapi.com/doc/asset/img/triceratops.jpeg',300,900,6000,1,4,4,2,2,'Herbivore quadrupède avec trois cornes sur le crâne.'),
('stegosaurus','https://dinotoapi.com/doc/asset/img/Stegosaurus.jpeg',400,700,4000,1,4,4,2,2,'Dinosaure à plaques osseuses et piques sur la queue'),
('spinosaurus','https://dinotoapi.com/doc/asset/img/Spinosaurus.jpeg',400,12000,20000,1,4,4,2,2,'Le Spinosaurus était le plus grand des dinosaures carnivores, avec une haute crête dorsale lui donnant un air de dragon préhistorique14'),
('velociraptor','https://dinotoapi.com/doc/asset/img/Velociraptor.jpeg',50,200,15,1,4,4,2,2,'Petit dinosaure carnivore connu pour sa vélocité'),
('giganotosaurus','https://dinotoapi.com/doc/asset/img/Giganotosaurus.jpeg',400,1500,6000,1,4,4,1,2,'Le Giganotosaurus était un prédateur carnivore de grande taille, appartenant à la famille des carcharodontosauridés, qui inclut d autres grands théropodes carnivores comme le Carcharodontosaurus et le Mapusaurus. Il avait de grandes dents pointues et une mâchoire puissante, ce qui indique qu il était adapté à la chasse de proies de taille considérable.\n\nLes fossiles de Giganotosaurus ont été découverts en Argentine, notamment dans la formation géologique de Candeleros. Son nom signifie "lézard géant du Sud". C est l un des plus grands dinosaures carnivores connus et a suscité un grand intérêt parmi les paléontologues étudiant les dinosaures d Amérique du Sud.'),
('abydosaurus','https://dinotoapi.com/doc/asset/img/Abydosaurus.jpeg',400,1500,6000,1,4,4,1,2,'Abydosaurus (abydosaure en français), qui signifie « lézard dAbydos », est un genre éteint de dinosaures sauropodes, plus précisément un membre de la famille des brachiosauridés. Connu à partir dun crâne et de matériel post-crânien, il a été trouvé dans des sédiments datant de la fin du Crétacé inférieur dans le nord-est de lUtah, aux États-Unis.'),
('archaeopteryx','https://dinotoapi.com/doc/asset/img/Archaeopteryx.jpeg',30,50,1,1,4,4,1,2,'Dinosaure aviaire précoce, considéré comme un lien vers les oiseaux'),
('brachiosaure','https://dinotoapi.com/doc/asset/img/Brachiosaure.jpeg',1500,2500,50000,1,4,4,1,2,'Le Brachiosaure était un énorme dinosaure herbivore caractérisé par son long cou, sa queue relativement courte, et ses membres antérieurs significativement plus longs que les membres postérieurs, donnant à son corps une inclinaison vers lavant. Son long cou lui permettait datteindre la végétation élevée.\n\nÉpoque : Jurassique supérieur (environ 154-153 millions dannées)'),
('diplodocus','https://dinotoapi.com/doc/asset/img/Diplodocus.jpeg',700,2500,15000,1,4,4,1,2,'Le Diplodocus était un herbivore qui se nourrissait principalement de plantes, et il faisait partie de la diversité des sauropodes qui peuplaient lAmérique du Nord pendant le Jurassique. Il était caractérisé par son long cou, sa longue queue, et sa morphologie générale allongée. Le Diplodocus était lun des plus grands dinosaures sauropodes, bien que ses membres relativement grêles le distinguent dautres membres de sa famille. Comme pour beaucoup de dinosaures, les détails précis de sa morphologie peuvent varier en fonction des spécimens et des découvertes ultérieures.'),
('adratiklit','https://dinotoapi.com/doc/asset/img/Adratiklit.jpeg',300,800,2000,1,4,4,1,2,'Adratiklit est un genre éteint de dinosaure herbivore stégosaurien qui vivait sur le supercontinent Gondwana pendant le Jurassique moyen'),
('allosaurus','https://dinotoapi.com/doc/asset/img/Allosaurus.jpg',300,800,2000,1,4,4,1,2,'Grand prédateur du Jurassique avec des dents tranchantes'),
('ankylosaurus','https://dinotoapi.com/doc/asset/img/ankylosaurus.jpeg',150,700,5000,1,4,4,1,2,'Dinosaure blindé avec une massue à la queue'),
('pachycephalosaurus','https://dinotoapi.com/doc/asset/img/Pachycephalosaurus.jpeg',450,700,350,1,4,4,1,2,'Pachycephalosaurus, en français pachycéphalosaure, est un genre éteint de dinosaures ornithischiens herbivores de la famille des pachycephalosauridés. Il a vécu en Amérique du Nord à la fin du Crétacé supérieur, au cours du Maastrichtien supérieur, soit il y a environ entre 69 et 66 Ma (millions d années).'),
('protoceratops','https://dinotoapi.com/doc/asset/img/Protoceratops.jpeg',150,200,150,1,4,4,3,2,'Le protocératops ou Protoceratops (« première tête cornue ») est un genre');

COMMIT;
