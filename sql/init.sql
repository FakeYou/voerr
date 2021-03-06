-- Insert user

INSERT INTO user (`id`, `name`, `email`, `password`, `credit`, `date_created`, `date_updated`) 
VALUES (1, 'Peter Testinga', 'test@test.com', '885597b5cc68711f43f6b76e05abcf407a32831533b54bafe5ddc28e', 1000, NOW(), NOW()), 	-- pw = wachtwoord
(2, 'Henk van de Woude', 'henk@aol.com', '885597b5cc68711f43f6b76e05abcf407a32831533b54bafe5ddc28e', 2500, NOW(), NOW()),			-- pw = wachtwoord
(3, 'Johen Croif', 'jcroif@live.nl', '885597b5cc68711f43f6b76e05abcf407a32831533b54bafe5ddc28e', 1500, NOW(), NOW()),		-- pw = wachtwoord
(4, 'Carolien Schaap', 'timm@gmail.com', '885597b5cc68711f43f6b76e05abcf407a32831533b54bafe5ddc28e', 1800, NOW(), NOW()),	-- pw = wachtwoord
(5, 'Vera Schipper', 'de-real-dr-dre@hotmail.com', '885597b5cc68711f43f6b76e05abcf407a32831533b54bafe5ddc28e', 0, NOW(), NOW());		-- pw = wachtwoord

--

-- Insert cook

INSERT INTO cook (`id`, `description`, `location`, `address`, `coordinates`, `user_id`, `date_created`, `date_updated`) 

VALUES (1, 'Self made kok', 'Groningen','Brugstraat 11a, 9711 AS Groningen', POINT(0, 0), 1, NOW(), NOW()),
(2, 'Ik hou niet van koken', 'Amsterdam', 'Miastraat 3a, 1234 SM Amsterdam', POINT(1, 1), 2, NOW(), NOW()),
(3, 'Specialisatie in Indonesisch', 'Rotterdam','Hoofdweg 49, 2345 GG Rotterdam', POINT(1, 1), 3, NOW(), NOW()),
(4, 'Kook dagelijks en hou van strandwandelingen.', 'Groningen','Oudeboteringestraat 119, 9712 KK Groningen', POINT(1, 1), 4, NOW(), NOW()),
(5, 'Chefkok geweest in de jaren 60.', 'Groningen','Stationsstraat 12, 9712 SS Groningen', POINT(1, 1), 5, NOW(), NOW());

--

INSERT INTO category (`id`, `name`, `parent_id`) VALUES
-- Category Menugang
(1, 'Menugang', NULL),
(2, 'Hoofdgerecht', 1),
(3, 'Voorgerecht', 1),
(4, 'Nagerecht', 1),
(5, 'Borrelhapje', 1),
(6, 'Tussendoortje', 1),
(7, 'Bijgerecht', 1),
(8, 'Lunch', 1),
(9, 'Brunch', 1),
(10, 'Ontbijt', 1),
(11, 'Drankje met alcohol', 1),
-- Category 'Soort gerecht'
(12, 'Soort gerecht', NULL),
(13, 'Pasta', 12),
(14, 'Salade', 12),
(15, 'Rijst', 12),
(16, 'Soep', 12),
(17, 'Brood/sandwiches', 12),
(18, 'Gebak', 12),
(19, 'Quiche', 12),
(20, 'Stamppot', 12),
(21, 'Saus/dressing', 12),
(22, 'Couscous', 12),
-- Category 'Recepten met'
(23, 'Recepten met', NULL),
(24, 'Vlees', 23),
(25, 'Vis', 23),
(26, 'Gevogelte', 23),
(27, 'Schaal-/schelpdieren', 23),
(28, 'Vleesvervanger', 23),
-- Category 'Speciale wensen'
(29, 'Speciale wensen', NULL),
(30, 'Vegetarisch', 29),
(31, 'Lactosevrij', 29),
(32, 'Zonder vlees/vis', 29),
(33, 'Glutenvrij', 29),
(34, 'Zonder vlees', 29),
(35, 'Veganistisch', 29),
(36, 'Gezond', 29),
-- Category 'Seizoen'
(37, 'Seizoen', NULL),
(38, 'Winter', 37),
(39, 'Lente', 37),
(40, 'Zomer', 37),
(41, 'Herfst', 37),
-- Category 'Keuken'
(42, 'Keuken', NULL),
(43, 'Amerikaans', 42),
(44, 'Argentijns', 42),
(45, 'Aziatisch', 42),
(46, 'Caribisch', 42),
(47, 'Chinees', 42),
(48, 'Engels', 42),
(49, 'Frans', 42),
(50, 'Hollands', 42),
(51, 'Indiaas', 42),
(52, 'Indonesisch', 42);

INSERT INTO allergy (`id`, `name`, `description`) VALUES 
(1, 'Glutenbevattende granen', 'tarwe, rogge, gerst, haver, spelt, khorasantarwe/ kamut'),
(2, 'Schaaldieren', NULL),
(3, 'Eieren', NULL),
(4, 'Vis', NULL),
(6, 'Pinda', NULL),
(7, 'Soja', NULL),
(8, 'Melk', 'inclusief lactose'),
(9, 'Noten', 'amandelen, hazelnoten, walnoten, cashewnoten, pecannoten, paranoten, pistachenoten en macadamianoten'),
(10, 'Selderij', NULL),
(11, 'Mosterd', NULL),
(12, 'Sesamzaad', NULL),
(13, 'Zwaveldioxide en Sulfiet', 'Bij concentraties van meer dan 10 mg SO2 per kilo of liter'),
(14, 'Lupine', NULL),
(15, 'Weekdieren', NULL);

-- Insert dish 
INSERT INTO dish (`id`, `name`, `description`, `cook_id`, `date_created`, `date_updated`) 
VALUES (1, 'Lamsrack met warme salade', 'Lorem markdownum pastor verberis. Haerent et humi manus pressit; quoque
concretam tenentes guttur in. Pennis tamen. Flumineis levant incertam; sub
alienae, satia vultus erat cognosse receperat favillae tetigisse tempora calcat.

- Rura nec solacia vitat
- Timores an quem profugaque partibus mox
- Gener afuerunt genitorque picea inconcessaeque patrias Bellona

Cur pondus; miseranda Lucifero ni quoque carpebat Actaea; Iovis? Incumbere exit
nec putat inque dantem resistere, hoc dixit. Modo haec canos ora in eligit et
funestaque alas; alto spectare et quoque nota, populabile? Crescunt quondam,
culta, vindice retusa aquae. Gravius at crede umida; sub tectus mox comes
aspergine sanguinis bella, limine.

Quicquam non et tum noceat dimittere divesque conspexit rerum. Me imo gentesque
inquit, et haut.

Ista murra mutavit regalis draconem in maculat habet; trabes convertunt me adhuc
Arethusae populi, et ex? Latiis habitare aequora cruento osque rogumque, sors
mulcet esse. Operitur ipse ora, adsidua nec latens Delius mittantur sese Iunone
amore, nec silva pietatem sibi. Ducunt potes; sermonibus volatu virum quem
ferunt, mei hastam preces.

- Pigeat limitibus sanguine digessit umeri sortita aera
- Dicta tibi est nuper quod
- Induitur quondam harundine reditus quis
- Has illuc est rectior

Sed tibi incertam scabrae, diversis gravem iunctisque est femina mutat magna
certamine fraternaeque mitra. Hic filia audentem inque; quae odere contra me
petit inposita. Ter rore trementi, lingua te numenque hausit, Poeantiaden?

Cinyphius locum et sustinet, signumque reus calidusque feroci pater ipsa suisque
ferinos! Tamen harundine saxo flammis incensaque collecta, inter ense nihil
unius? Sentit felix palustris et pius, temptat audacissimus intus post levi tua
manu ambiguus sanguine crescere indignatus ebur inscribit. Aurea de duabus pro
aberant iam simul Imbreus soli relabi metu fatis, metu hastarum.', 1, NOW(), NOW()),

(2, 'Beef Wellington', 'Lorem markdownum tactaeque minor in dedi ver illis infelix. Peccare baculumque
pallam precaris exire, nostro potes nec inmitem obstas, calathosque ademptam
iunxit quam?

- Voce prius et diu flatuque
- Causa tali per
- Umquam non omnis exanimata parenti caesas Lelegeia
- Levare cultoribus hanc hastamque precor renuente cruoris
- Ora regnum deo non

Deos munere libera et lacrimaeque quietum per habere non. Pro enim, pharetram
faventum tamen statione, sanguine, sonus lucum: me quid monimenta, deus inter
lenis. Olenios de profers, feres tota quaecumque inguine iterum propera
consumite ipse spemque transcurrere utile perhorruit distincta consumitis. Soror
ferarum neve usque est deus late per retractat! Procubuit exanimes sordidus
bracchia monitisque metas publica, vivum capitum iubet.

Quidem de eumque threicius vesica Baucis vindice barbara si florem Nereida
canosque Myrrha sertis. Mea cibis nepotum regale pavefacta, mediis, est et
Cocinthia Apidanosque ambas concutiensque de ut obstrusaque remotis Laomedonteis
vias! Dumque in ille antra Dictaeo habebat caelamina mora remeasse virtute
voluntas suo, Pandione anhelanti cerno supereminet dominae Ichnobates exactus.

Incola rorant, auro dedit ferrumque. Vinum et Nisi Dolona Pactolides margine
opus gradibus effugit fastigiaque stat, agmine sentibus. Limina perdix leto,
regnata agit: inpubibus, subitarum nihil: levitate ait, inde nondum, palustres
si. Adhuc ille; socio ambit, iussit mille videt simul monitisque.

- Duritia servabant secum non sponte portas satumque
- Fronte hic anxius saepe tibi undis fulgorem
- Spectarat cernere
- Thalamoque verte
- Utinamque extemplo Minos toto centauri ut volucris

Tulit veterumque voce exululatque aegre ortus Gorgone At recusat praestant et
initis turres, vel movit vox, aura? De venerat exitio, venatum, sua et
Philammon, egerit et functa, de simul praesagia utque Peliaeque patet.', 2, NOW(), NOW()),

(3, 'Citroentaart met zomer bessen', 'Lorem markdownum limes quae, inde annoso quoque patulis vacuum caelaverat
invergens rupit, Symplegadas sinit vidi usque. Auget in altae! Et neque nigris
frustra. Praeponere haesit petendi, sine suis lugentis novae, nec refert da
fallis.

Ut ut habuisse, sanguine et sacra at sinu, fata. Opis ilice flentes: se tu
cupiens cumulum tanta est patiensque habeo, sperat occupat, minus recludi
urguere? Viret dixi exstat ea sitim pariter Naryciusque genus verum creatus:
simul data.

- Ducebas annorum pinus manusque erat frondes
- Diva septem lacrimas copia
- Cuius refero melior possit ita forma cibique', 3, NOW(), NOW()),

(4, 'Mediterrane zalmfilet', 'Lorem markdownum fictum, strepitum carus sed lateantque caret sorbere feriuntque
quibus. Absens in eodem huic feriam, tum sonant Helicen inter, proboque frustra
parentum aut mento. In aeque inque nigro foedumque, tamen est abstulit.

- Somnus mihi gravidis sorores mox mellis
- Iphin putas
- De Cnosiacas templi pudor venientesque
- Fieri nec ferarum bello
- Erat nota sidera et vota

In fugit aliquid rear utrimque rettulit fides spes mora sanguine carinae.
Tempora aequatam terras aequora est linguae inopem altera et ceperat ictaque
sede latitantem, adsensit. Oppida terribiles cunei. Ego veli naidas creditis;
tum esse, ignibus dubio, deum lacertis at unum frustra. Facias non corpus ait
levi usque has salve, subitus.

- Arce cognovit torruit quoque vosne nunc cadunt
- Deducens coronatis depulerant eadem tecta Nyseides ordine
- Undis mole
- Vota vivere detque
- Lecti Aiax favent parte concutiens genetricis postquam

Nisi Latina, raptor tela, et altera quidem, est nec, possit? Inde haeret tabula
quisquis ilice fraternos videri, pressaeque.

Placidos unda cineri color vidi illa lacrimis, et, stant, sceleris inhaesi se
colonus circum! Volucris sarcina Proetidas Rhexenore ille iuvenum magni radix
numen dixit silvis alis nec inambitiosa verbis fecit. Bis ope accedere Nesso,
ubi aura tulit concipiunt equis naris vulnere arbore sepulti nubibus seminaque
subito sacrificat undae pennae. Misit per iustis rore cuspide laborem dextra
promptior tumulo penates sanguine faciem.
', 4, NOW(), NOW()),

(5, 'Zomer bessen meringues', 'Lorem markdownum, adit annos interdum quoque tempus modo, quam meas. Patulos
Thetidi; sedens corpus tempore caelo mente flecti pulchrosque sibi ablata huius
crura tumuli? Illa et et solam siccare coniuge, modo magnum et, vota?

In sanguine hos domus numquam dimisit cavus crederet cervicem, ab. An putria
sacra draconum in quis. Citharam nymphas thalamos et verum incerti claudit
inque, et ultor Iunonis. In inpune et per sequitur tibi in laniavit data.

- Nullisque sensit Aoniis
- Que vetitis et gutture procul auditaque duobus
- Armigerae dixerat tectis corpore dabat
- Retegente inducta spectabat tamen caelo expers sit
- Flebile vestra cruentum rursus recondiderat erat prospexit
- Essent denique curru nebulae illo sagittam

Sonant perque, ipse colle fuerat in bellaque quae, poenaededidit vulneret ait.
Hos amatis singula, virtutem, fraxinus diva, bene et licet spatiantia licet.

Saepe clipeus, primaque auro si Polymestoris comis; verum nec qui plebemque
pedum, est. Tot nota tulit parentem: ore Phrygia delicta Creteque ensis,
indignis tuque illi bellum. Iacui haec ilia lapidum canibus claro proripit
Cretaei armos sic Danais.

Aptas surgis dedecus Bacchi. Pudor nomen mutataque pressit rupit curvos; aut
arbore facies sagittis, preme exposcere, sol. Adsim et sumptis gramina taxo..', 5, NOW(), NOW()),

(6, 'Pork & Ham Pie', 'Lorem markdownum fortibus aquis pluviale totidem, tellure ipse vir verbis ferrea
comitique, hoc. Non humus maternae quid, mira est relictum gurgite. Urbs
dicuntur crebros pondus te reus, iam sic imbrem, raptor tamen. Ignes Cretenque
et pater hoc mortisque morbi molarem cornu procellamnos Dianae calido, quem et!

Iussis undas auguror meus loqui pluvialibus aure; retenta spes cessit nam! Timeo
causa cuive: neu sacra et aptumque oculos arguitur?

- Solum parvae satis
- Fugiens certe talibus vitat hoc voce caeli
- Pedibusve feriat adorandum sepulcris ille fluunt
- Illi cerae viros gemma

Opacas manu; hanc, parentis, diem, anum et expetit erigite videtur armamentis
nondum, bracchia. Hac opus nunc pallorem bisque obliquis aries.

Prudens tum recens, palmite dixit ad Ulixes cornua cernit superabitur fulgorem
mittit prope ubi, pro. Hoc pellens terra credunt, plenum iaculatur nec annis
qualem, silvas in natalis glacies pars, nitore effuge de. Corpora fuere qui
utque effusus manum nec albas est se Phoebi scrobe. Bobus Caenis navis ieiunia
includite transibat quicquam cornua primum tenebat Phlegraeis bellare excusat,
haec.', 5, NOW(), NOW()),

(7, 'Rucola, champignongs en spek', 'Lorem markdownum fortibus aquis pluviale totidem, tellure ipse vir verbis ferrea
comitique, hoc. Non humus maternae quid, mira est relictum gurgite. Urbs
dicuntur crebros pondus te reus, iam sic imbrem, raptor tamen. Ignes Cretenque
et pater hoc mortisque morbi molarem cornu procellamnos Dianae calido, quem et!

Iussis undas auguror meus loqui pluvialibus aure, retenta spes cessit nam! Timeo
causa cuive: neu sacra et aptumque oculos arguitur?

- Solum parvae satis
- Fugiens certe talibus vitat hoc voce caeli
- Pedibusve feriat adorandum sepulcris ille fluunt
- Illi cerae viros gemma

Opacas manu, hanc, parentis, diem, anum et expetit erigite videtur armamentis
nondum, bracchia. Hac opus nunc pallorem bisque obliquis aries.

Prudens tum recens, palmite dixit ad Ulixes cornua cernit superabitur fulgorem
mittit prope ubi, pro. Hoc pellens terra credunt, plenum iaculatur nec annis
qualem, silvas in natalis glacies pars, nitore effuge de. Corpora fuere qui
utque effusus manum nec albas est se Phoebi scrobe. Bobus Caenis navis ieiunia
includite transibat quicquam cornua primum tenebat Phlegraeis bellare excusat,
haec.', 1, NOW(), NOW()),

(8, 'Zeevruchten met knoflook en peterselie', 'Lorem markdownum fortibus aquis pluviale totidem, tellure ipse vir verbis ferrea
comitique, hoc. Non humus maternae quid, mira est relictum gurgite. Urbs
dicuntur crebros pondus te reus, iam sic imbrem, raptor tamen. Ignes Cretenque
et pater hoc mortisque morbi molarem cornu procellamnos Dianae calido, quem et!

Iussis undas auguror meus loqui pluvialibus aure, retenta spes cessit nam! Timeo
causa cuive: neu sacra et aptumque oculos arguitur?

- Solum parvae satis
- Fugiens certe talibus vitat hoc voce caeli
- Pedibusve feriat adorandum sepulcris ille fluunt
- Illi cerae viros gemma

Opacas manu, hanc, parentis, diem, anum et expetit erigite videtur armamentis
nondum, bracchia. Hac opus nunc pallorem bisque obliquis aries.

Prudens tum recens, palmite dixit ad Ulixes cornua cernit superabitur fulgorem
mittit prope ubi, pro. Hoc pellens terra credunt, plenum iaculatur nec annis
qualem, silvas in natalis glacies pars, nitore effuge de. Corpora fuere qui
utque effusus manum nec albas est se Phoebi scrobe. Bobus Caenis navis ieiunia
includite transibat quicquam cornua primum tenebat Phlegraeis bellare excusat,
haec.', 3, NOW(), NOW()),

(9, 'Rodekoolschotel met appel en rookworst', 'Lorem markdownum fortibus aquis pluviale totidem, tellure ipse vir verbis ferrea
comitique, hoc. Non humus maternae quid, mira est relictum gurgite. Urbs
dicuntur crebros pondus te reus, iam sic imbrem, raptor tamen. Ignes Cretenque
et pater hoc mortisque morbi molarem cornu procellamnos Dianae calido, quem et!

Iussis undas auguror meus loqui pluvialibus aure, retenta spes cessit nam! Timeo
causa cuive: neu sacra et aptumque oculos arguitur?

- Solum parvae satis
- Fugiens certe talibus vitat hoc voce caeli
- Pedibusve feriat adorandum sepulcris ille fluunt
- Illi cerae viros gemma

Opacas manu, hanc, parentis, diem, anum et expetit erigite videtur armamentis
nondum, bracchia. Hac opus nunc pallorem bisque obliquis aries.

Prudens tum recens, palmite dixit ad Ulixes cornua cernit superabitur fulgorem
mittit prope ubi, pro. Hoc pellens terra credunt, plenum iaculatur nec annis
qualem, silvas in natalis glacies pars, nitore effuge de. Corpora fuere qui
utque effusus manum nec albas est se Phoebi scrobe. Bobus Caenis navis ieiunia
includite transibat quicquam cornua primum tenebat Phlegraeis bellare excusat,
haec.', 2, NOW(), NOW()),

(10, 'Hollandse hachee met rode wijn', 'Lorem markdownum fortibus aquis pluviale totidem, tellure ipse vir verbis ferrea
comitique, hoc. Non humus maternae quid, mira est relictum gurgite. Urbs
dicuntur crebros pondus te reus, iam sic imbrem, raptor tamen. Ignes Cretenque
et pater hoc mortisque morbi molarem cornu procellamnos Dianae calido, quem et!

Iussis undas auguror meus loqui pluvialibus aure, retenta spes cessit nam! Timeo
causa cuive: neu sacra et aptumque oculos arguitur?

- Solum parvae satis
- Fugiens certe talibus vitat hoc voce caeli
- Pedibusve feriat adorandum sepulcris ille fluunt
- Illi cerae viros gemma

Opacas manu, hanc, parentis, diem, anum et expetit erigite videtur armamentis
nondum, bracchia. Hac opus nunc pallorem bisque obliquis aries.

Prudens tum recens, palmite dixit ad Ulixes cornua cernit superabitur fulgorem
mittit prope ubi, pro. Hoc pellens terra credunt, plenum iaculatur nec annis
qualem, silvas in natalis glacies pars, nitore effuge de. Corpora fuere qui
utque effusus manum nec albas est se Phoebi scrobe. Bobus Caenis navis ieiunia
includite transibat quicquam cornua primum tenebat Phlegraeis bellare excusat,
haec.', 1, NOW(), NOW()),

(11, 'Zoetzure aardbeien kiwi jam', 'Lorem markdownum fortibus aquis pluviale totidem, tellure ipse vir verbis ferrea
comitique, hoc. Non humus maternae quid, mira est relictum gurgite. Urbs
dicuntur crebros pondus te reus, iam sic imbrem, raptor tamen. Ignes Cretenque
et pater hoc mortisque morbi molarem cornu procellamnos Dianae calido, quem et!

Iussis undas auguror meus loqui pluvialibus aure, retenta spes cessit nam! Timeo
causa cuive: neu sacra et aptumque oculos arguitur?

- Solum parvae satis
- Fugiens certe talibus vitat hoc voce caeli
- Pedibusve feriat adorandum sepulcris ille fluunt
- Illi cerae viros gemma

Opacas manu, hanc, parentis, diem, anum et expetit erigite videtur armamentis
nondum, bracchia. Hac opus nunc pallorem bisque obliquis aries.

Prudens tum recens, palmite dixit ad Ulixes cornua cernit superabitur fulgorem
mittit prope ubi, pro. Hoc pellens terra credunt, plenum iaculatur nec annis
qualem, silvas in natalis glacies pars, nitore effuge de. Corpora fuere qui
utque effusus manum nec albas est se Phoebi scrobe. Bobus Caenis navis ieiunia
includite transibat quicquam cornua primum tenebat Phlegraeis bellare excusat,
haec.', 4, NOW(), NOW()),

(12, 'Paddesoelragout', 'Lorem markdownum fortibus aquis pluviale totidem, tellure ipse vir verbis ferrea
comitique, hoc. Non humus maternae quid, mira est relictum gurgite. Urbs
dicuntur crebros pondus te reus, iam sic imbrem, raptor tamen. Ignes Cretenque
et pater hoc mortisque morbi molarem cornu procellamnos Dianae calido, quem et!

Iussis undas auguror meus loqui pluvialibus aure, retenta spes cessit nam! Timeo
causa cuive: neu sacra et aptumque oculos arguitur?

- Solum parvae satis
- Fugiens certe talibus vitat hoc voce caeli
- Pedibusve feriat adorandum sepulcris ille fluunt
- Illi cerae viros gemma

Opacas manu, hanc, parentis, diem, anum et expetit erigite videtur armamentis
nondum, bracchia. Hac opus nunc pallorem bisque obliquis aries.

Prudens tum recens, palmite dixit ad Ulixes cornua cernit superabitur fulgorem
mittit prope ubi, pro. Hoc pellens terra credunt, plenum iaculatur nec annis
qualem, silvas in natalis glacies pars, nitore effuge de. Corpora fuere qui
utque effusus manum nec albas est se Phoebi scrobe. Bobus Caenis navis ieiunia
includite transibat quicquam cornua primum tenebat Phlegraeis bellare excusat,
haec.', 5, NOW(), NOW()),

(13, 'Knapperige kipfilet met een korstje cornflakes', 'Lorem markdownum fortibus aquis pluviale totidem, tellure ipse vir verbis ferrea
comitique, hoc. Non humus maternae quid, mira est relictum gurgite. Urbs
dicuntur crebros pondus te reus, iam sic imbrem, raptor tamen. Ignes Cretenque
et pater hoc mortisque morbi molarem cornu procellamnos Dianae calido, quem et!

Iussis undas auguror meus loqui pluvialibus aure, retenta spes cessit nam! Timeo
causa cuive: neu sacra et aptumque oculos arguitur?

- Solum parvae satis
- Fugiens certe talibus vitat hoc voce caeli
- Pedibusve feriat adorandum sepulcris ille fluunt
- Illi cerae viros gemma

Opacas manu, hanc, parentis, diem, anum et expetit erigite videtur armamentis
nondum, bracchia. Hac opus nunc pallorem bisque obliquis aries.

Prudens tum recens, palmite dixit ad Ulixes cornua cernit superabitur fulgorem
mittit prope ubi, pro. Hoc pellens terra credunt, plenum iaculatur nec annis
qualem, silvas in natalis glacies pars, nitore effuge de. Corpora fuere qui
utque effusus manum nec albas est se Phoebi scrobe. Bobus Caenis navis ieiunia
includite transibat quicquam cornua primum tenebat Phlegraeis bellare excusat,
haec.', 2, NOW(), NOW());


-- Insert meal 
INSERT INTO meal (`price`, `available_from`, `available_until`, `dinner_time`, `portions`, `portions_claimed`, `location`, `notes`, `is_takeout`, `dish_id`, `date_created`, `date_updated`) 
VALUES 

(200, "2015-11-11 18:00:00", "2015-11-11 20:00:00", "2015-11-11 18:30:00", 10, 0, "Groningen", "", 0, 1, NOW(), NOW()),
(200, "2015-11-12 18:00:00", "2015-11-12 20:00:00", "2015-11-12 18:30:00", 10, 0, "Groningen", "", 0, 1, NOW(), NOW()),
(200, "2015-11-13 18:00:00", "2015-11-13 20:00:00", "2015-11-13 18:30:00", 10, 0, "Groningen", "", 0, 1, NOW(), NOW()),

(700, "2015-11-11 18:00:00", "2015-11-11 20:00:00", "2015-11-11 18:30:00", 6, 0, "Groningen", "", 1, 2, NOW(), NOW()),
(700, "2015-11-12 18:00:00", "2015-11-12 20:00:00", "2015-11-12 18:30:00", 6, 0, "Groningen", "", 1, 2, NOW(), NOW()),
(700, "2015-11-13 18:00:00", "2015-11-13 20:00:00", "2015-11-13 18:30:00", 6, 0, "Groningen", "", 1, 2, NOW(), NOW()),

(450, "2015-11-11 18:00:00", "2015-11-11 20:00:00", "2015-11-11 18:30:00", 8, 0, "Rotterdam", "Zelfgemaakte ingredienten", 1, 3, NOW(), NOW()),
(450, "2015-11-12 18:00:00", "2015-11-12 20:00:00", "2015-11-12 18:30:00", 8, 0, "Rotterdam", "Zelfgemaakte ingredienten", 1, 3, NOW(), NOW()),
(450, "2015-11-13 18:00:00", "2015-11-13 20:00:00", "2015-11-13 18:30:00", 8, 0, "Rotterdam", "Zelfgemaakte ingredienten", 1, 3, NOW(), NOW()),

(700, "2015-11-11 18:00:00", "2015-11-11 20:00:00", "2015-11-11 18:30:00", 6, 0, "Volendam", "Biologisch", 1, 4, NOW(), NOW()),
(700, "2015-11-12 18:00:00", "2015-11-12 20:00:00", "2015-11-12 18:30:00", 6, 0, "Volendam", "Biologisch", 1, 4, NOW(), NOW()),
(700, "2015-11-13 18:00:00", "2015-11-13 20:00:00", "2015-11-13 18:30:00", 6, 0, "Volendam", "Biologisch", 1, 4, NOW(), NOW()),

(620, "2015-11-11 18:00:00", "2015-11-11 20:00:00", "2015-11-11 18:30:00", 6, 0, "Nieuw Amsterdam", "Fair Trade", 1, 5, NOW(), NOW()),
(620, "2015-11-12 18:00:00", "2015-11-12 20:00:00", "2015-11-12 18:30:00", 6, 0, "Nieuw Amsterdam", "Fair Trade", 1, 5, NOW(), NOW()),
(620, "2015-11-13 18:00:00", "2015-11-13 20:00:00", "2015-11-13 18:30:00", 6, 0, "Nieuw Amsterdam", "Fair Trade", 1, 5, NOW(), NOW()),

(700, "2015-11-11 18:00:00", "2015-11-11 20:00:00", "2015-11-11 18:30:00", 6, 0, "Groningen", "", 1, 6, NOW(), NOW()),
(700, "2015-11-12 18:00:00", "2015-11-12 20:00:00", "2015-11-12 18:30:00", 6, 0, "Groningen", "", 1, 6, NOW(), NOW()),
(700, "2015-11-13 18:00:00", "2015-11-13 20:00:00", "2015-11-13 18:30:00", 6, 0, "Groningen", "", 1, 6, NOW(), NOW()),

(700, "2015-11-13 18:00:00", "2015-11-13 20:00:00", "2015-11-13 18:30:00", 6, 0, "Groningen", "", 1, 7, NOW(), NOW()),
(700, "2015-11-13 18:00:00", "2015-11-13 20:00:00", "2015-11-13 18:30:00", 6, 0, "Groningen", "", 1, 8, NOW(), NOW()),
(700, "2015-11-13 18:00:00", "2015-11-13 20:00:00", "2015-11-13 18:30:00", 6, 0, "Groningen", "", 1, 9, NOW(), NOW()),
(700, "2015-11-13 18:00:00", "2015-11-13 20:00:00", "2015-11-13 18:30:00", 6, 0, "Groningen", "", 1, 10, NOW(), NOW()),
(700, "2015-11-13 18:00:00", "2015-11-13 20:00:00", "2015-11-13 18:30:00", 6, 0, "Groningen", "", 1, 11, NOW(), NOW()),
(700, "2015-11-13 18:00:00", "2015-11-13 20:00:00", "2015-11-13 18:30:00", 6, 0, "Groningen", "", 1, 12, NOW(), NOW()),
(700, "2015-11-13 18:00:00", "2015-11-13 20:00:00", "2015-11-13 18:30:00", 6, 0, "Groningen", "", 1, 13, NOW(), NOW());

--

-- Insert orders
INSERT INTO `order` (`amount_meals`, `is_takeout`, `start_time`, `total_amount`, `meal_id`, `user_id`, `date_created`)
VALUES 
(1, 0, "2015-11-08 18:00:00", 200, 1, 1, "2015-11-08 10:31:22"),
(2, 0, "2015-11-05 19:40:00", 600, 4, 1, "2015-11-05 08:25:22"),
(1, 0, "2015-11-10 19:30:00", 700, 10, 2, "2015-11-06 08:25:22"),
(1, 0, "2015-11-11 18:30:00", 600, 8, 3, "2015-11-06 08:25:22"),
(3, 0, "2015-11-10 19:30:00", 1200, 16, 1, "2015-11-06 08:25:22"),
(1, 0, "2015-11-14 19:30:00", 620, 9, 1, "2015-11-06 08:25:22"),
(1, 0, "2015-11-14 19:30:00", 500, 8, 3, "2015-11-06 08:25:22"),
(1, 0, "2015-11-11 19:30:00", 500, 13, 4, "2015-11-06 08:25:22");

-- Insert dish_allergy

INSERT INTO dish_allergy (`dish_id`, `allergy_id`) 
VALUES 
(1, 2), (1,11), (1,6), (1,4),
(2, 3), (2, 10), (2,11), (2,14),
(3, 4), (3, 10), (1,11), (3,2),
(4, 6), (4, 1), (1,11), (4,9),
(5, 7), (5, 10), (1,3), (5,4),
(6, 8), (6, 10), (6,11), (6,8); 


--

-- Insert dish_category

INSERT INTO dish_category (`dish_id`, `category_id`) VALUES (1, 48), (1, 39), (1, 24), (1, 14), (1, 2);

INSERT INTO dish_category (`dish_id`, `category_id`) VALUES (2, 48), (2, 38), (2, 24), (2, 14), (2, 2);

INSERT INTO dish_category (`dish_id`, `category_id`) VALUES (3, 48), (3, 39), (3, 24), (3, 2);

INSERT INTO dish_category (`dish_id`, `category_id`) VALUES (4, 48), (4, 25), (4, 2);

INSERT INTO dish_category (`dish_id`, `category_id`) VALUES (5, 48), (5, 39), (5, 4);

INSERT INTO dish_category (`dish_id`, `category_id`) VALUES (5, 48), (5, 39), (5, 4);

INSERT INTO dish_category (`dish_id`, `category_id`) VALUES (6, 2), (6, 24), (6, 26), (6, 48);


--

-- Insert review

INSERT INTO review (`content`, `rating`, `user_id`, `dish_id`, `date_created`, `date_updated`) 
VALUES 
('Ik vond het een heerlijke maaltijd!', 5, 1, 1, NOW(), NOW()),

('Lorem markdownum fortibus aquis pluviale totidem, tellure ipse vir verbis ferrea
comitique, hoc. Non humus maternae quid, mira est relictum gurgite. Urbs
dicuntur crebros pondus te reus, iam sic imbrem, raptor tamen. Ignes Cretenque
et pater hoc mortisque morbi molarem cornu procellamnos Dianae calido, quem et!', 4, 2, 1, NOW(), NOW()),

('Saepe clipeus, primaque auro si Polymestoris comis; verum nec qui plebemque
pedum, est. Tot nota tulit parentem: ore Phrygia delicta Creteque ensis,
indignis tuque illi bellum. Iacui haec ilia lapidum canibus claro proripit
Cretaei armos sic Danais.', 3, 3, 1, NOW(), NOW()),

('Ik vond het een heerlijke maaltijd!', 2, 4, 1, NOW(), NOW()),

('Niet lekker.', 1, 5, 1, NOW(), NOW()),

('Ik vond het een heerlijke maaltijd!', 5, 1, 2, NOW(), NOW()),

('Saepe clipeus, primaque auro si Polymestoris comis; verum nec qui plebemque
pedum, est. Tot nota tulit parentem: ore Phrygia delicta Creteque ensis,
indignis tuque illi bellum. Iacui haec ilia lapidum canibus claro proripit
Cretaei armos sic Danais.', 4, 2, 2, NOW(), NOW()),

('Ik vond het een heerlijke maaltijd!', 4, 3, 2, NOW(), NOW()),

('Het was prima!', 5, 4, 2, NOW(), NOW()),

('Saepe clipeus, primaque auro si Polymestoris comis; verum nec qui plebemque
pedum, est. Tot nota tulit parentem: ore Phrygia delicta Creteque ensis,
indignis tuque illi bellum. Iacui haec ilia lapidum canibus claro proripit
Cretaei armos sic Danais.', 4, 5, 2, NOW(), NOW()),

('Aptas surgis dedecus Bacchi. Pudor nomen mutataque pressit rupit curvos; aut
arbore facies sagittis, preme exposcere, sol. Adsim et sumptis gramina taxo..', 5, 1, 3, NOW(), NOW()),

('Ik vond het een heerlijke maaltijd!', 2, 2, 3, NOW(), NOW()),

('Lorem markdownum fortibus aquis pluviale totidem, tellure ipse vir verbis ferrea
comitique, hoc. Non humus maternae quid, mira est relictum gurgite. Urbs
dicuntur crebros pondus te reus, iam sic imbrem, raptor tamen. Ignes Cretenque
et pater hoc mortisque morbi molarem cornu procellamnos Dianae calido, quem et!', 2, 3, 3, NOW(), NOW()),

('Ik vond het een heerlijke maaltijd!', 5, 4, 3, NOW(), NOW()),

('Saepe clipeus, primaque auro si Polymestoris comis; verum nec qui plebemque
pedum, est. Tot nota tulit parentem: ore Phrygia delicta Creteque ensis,
indignis tuque illi bellum. Iacui haec ilia lapidum canibus claro proripit
Cretaei armos sic Danais.', 3, 5, 3, NOW(), NOW()),

('Tortum descendere inponere
- Unum satum quod gloria noxque quem rupta
- Admoto et quo novat qui
- Ante fluctibus Echion turpe priori emerguntque caeca', 3, 2, 4, NOW(), NOW()),

('Ik vond het een heerlijke maaltijd!', 5, 3, 4, NOW(), NOW()),

('De kok was niet aardig.', 1, 4, 4, NOW(), NOW()),

('Ik vond het een heerlijke maaltijd!', 1, 5, 4, NOW(), NOW()),

('Lorem markdownum fortibus aquis pluviale totidem, tellure ipse vir verbis ferrea
comitique, hoc. Non humus maternae quid, mira est relictum gurgite. Urbs
dicuntur crebros pondus te reus, iam sic imbrem, raptor tamen. Ignes Cretenque
et pater hoc mortisque morbi molarem cornu procellamnos Dianae calido, quem et!', 5, 1, 5, NOW(), NOW()),

('Saepe clipeus, primaque auro si Polymestoris comis; verum nec qui plebemque
pedum, est. Tot nota tulit parentem: ore Phrygia delicta Creteque ensis,
indignis tuque illi bellum. Iacui haec ilia lapidum canibus claro proripit
Cretaei armos sic Danais.
Aptas surgis dedecus Bacchi. Pudor nomen mutataque pressit rupit curvos; aut
arbore facies sagittis, preme exposcere, sol. Adsim et sumptis gramina taxo..',2, 2, 5, NOW(), NOW()),

('Lorem markdownum fortibus aquis pluviale totidem, tellure ipse vir verbis ferrea
comitique, hoc. Non humus maternae quid, mira est relictum gurgite. Urbs
dicuntur crebros pondus te reus, iam sic imbrem, raptor tamen. Ignes Cretenque
et pater hoc mortisque morbi molarem cornu procellamnos Dianae calido, quem et!
- Tortum descendere inponere
- Unum satum quod gloria noxque quem rupta
- Admoto et quo novat qui
- Ante fluctibus Echion turpe priori emerguntque caeca', 5, 3, 5, NOW(), NOW()),

('Ik vond het een heerlijke maaltijd!', 5, 4, 5, NOW(), NOW()),

('Het was niet zo mooi als in de foto. Jammer hoor.. 4/5', 4, 2, 2, NOW(), NOW()),

('', 2, 1, 6, NOW(), NOW()),
('', 4, 1, 7, NOW(), NOW()),
('', 5, 1, 8, NOW(), NOW()),
('', 3, 1, 9, NOW(), NOW()),
('', 3, 1, 10, NOW(), NOW()),
('', 4, 1, 11, NOW(), NOW()),
('', 2, 1, 12, NOW(), NOW()),
('', 4, 1, 13, NOW(), NOW());

--

-- Insert photo

INSERT INTO photo (`id`, `name`, `dish_id`, `user_id`, `cook_id`, `date_created`)
VALUES
(1, 'boy_1.jpg', NULL, 1, NULL, NOW()),
(3, 'boy_3.jpg', NULL, 3, NULL, NOW()),
(4, 'girl_1.jpg', NULL, 4, NULL, NOW()),
(5, 'girl_2.jpg', NULL, 5, NULL, NOW()),

(6, 'dish_1.jpg', 1, NULL, NULL, NOW()),
(7, 'dish_2.jpg', 2, NULL, NULL, NOW()),
(8, 'dish_3.jpg', 3, NULL, NULL, NOW()),
(9, 'dish_4.jpg', 4, NULL, NULL, NOW()),
(10, 'dish_5.jpg', 5, NULL, NULL, NOW()),
(11, 'dish_6.jpg', 6, NULL, NULL, NOW()),

(12, 'kitchen_1.jpg', NULL, NULL, 1, NOW()),
(13, 'kitchen_2.jpg', NULL, NULL, 2, NOW()),
(14, 'kitchen_3.jpg', NULL, NULL, 3, NOW()),
(15, 'kitchen_4.jpg', NULL, NULL, 4, NOW()),
(16, 'kitchen_5.jpg', NULL, NULL, 5, NOW()),

(17, 'kitchen_6.jpg', NULL, NULL, 1, NOW()),
(18, 'kitchen_7.jpg', NULL, NULL, 2, NOW()),
(19, 'kitchen_8.jpg', NULL, NULL, 3, NOW()),
(20, 'kitchen_9.jpg', NULL, NULL, 4, NOW()),
(21, 'kitchen_10.jpg', NULL, NULL, 5, NOW()),

(22, 'dish_7.jpg', 7, NULL, NULL, NOW()),
(23, 'dish_8.jpg', 8, NULL, NULL, NOW()),
(24, 'dish_9.jpg', 9, NULL, NULL, NOW()),
(25, 'dish_10.jpg', 10, NULL, NULL, NOW()),
(26, 'dish_11.jpg', 11, NULL, NULL, NOW()),
(27, 'dish_12.jpg', 12, NULL, NULL, NOW()),
(28, 'dish_13.jpg', 13, NULL, NULL, NOW());


--