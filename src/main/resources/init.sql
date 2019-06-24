
DROP TABLE IF EXISTS poems;
DROP TABLE IF EXISTS users;

CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    name TEXT UNIQUE NOT NULL,
    email TEXT UNIQUE NOT NULL,
    password TEXT NOT NULL,
    CONSTRAINT name_not_empty CHECK (name <> ''),
	CONSTRAINT email_not_empty CHECK (email <> ''),
	CONSTRAINT password_not_empty CHECK (password <> '')
);

CREATE TABLE poems (
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    content TEXT NOT NULL,
    user_id INTEGER NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users(id),
    CONSTRAINT title_not_empty CHECK (title <> ''),
    CONSTRAINT content_not_empty CHECK (content <> '')

);

INSERT INTO users (name, email, password) VALUES
	('Arany János','aranyjani@poems', 'aj'), -- 1
	('Babits Mihály','babos@poems', 'bm'), -- 2
	('Petőfi Sándor','petofisanyi@poems', 'pf'); -- 3

INSERT INTO poems(title, content,user_id) VALUES
    ('A walesi bárdok','Edward király, angol király
Léptet fakó lován:
Hadd látom, úgymond, mennyit ér
A velszi tartomány.

Van-e ott folyó és földje jó?
Legelőin fű kövér?
Használt-e a megöntözés:
A pártos honfivér?

S a nép, az istenadta nép,
Ha oly boldog-e rajt’
Mint akarom, s mint a barom,
Melyet igába hajt?

Felség! valóban koronád
Legszebb gyémántja Velsz:
Földet, folyót, legelni jót,
Hegy-völgyet benne lelsz.

S a nép, az istenadta nép
Oly boldog rajta, Sire!
Kunyhói mind hallgatva, mint
Megannyi puszta sir.

Edward király, angol király
Léptet fakó lován:
Körötte csend amerre ment,
És néma tartomány.

Montgomery a vár neve,
Hol aznap este szállt;
Montgomery, a vár ura,
Vendégli a királyt.

Vadat és halat, s mi jó falat
Szem-szájnak ingere,
Sürgő csoport, száz szolga hord,
Hogy nézni is tereh;

S mind, amiket e szép sziget
Ételt-italt terem;
S mind, ami bor pezsegve forr
Túl messzi tengeren.

Ti urak, ti urak! hát senkisem
Koccint értem pohárt?
Ti urak, ti urak!... ti velsz ebek!
Ne éljen Eduárd?

Vadat és halat, s mi az ég alatt
Szem-szájnak kellemes,
Azt látok én: de ördög itt
Belül minden nemes.

Ti urak, ti urak, hitvány ebek!
Ne éljen Eduárd?
Hol van, ki zengje tetteim -
Elő egy velszi bárd!

Egymásra néz a sok vitéz,
A vendég velsz urak;
Orcáikon, mint félelem,
Sápadt el a harag.

Szó bennszakad, hang fennakad,
Lehellet megszegik. -
Ajtó megől fehér galamb,
Ősz bárd emelkedik.

Itt van, király, ki tetteidet
Elzengi, mond az agg;
S fegyver csörög, haló hörög
Amint húrjába csap.

„Fegyver csörög, haló hörög,
A nap vértóba száll,
Vérszagra gyűl az éji vad:
Te tetted ezt, király!

Levágva népünk ezrei,
Halomba, mint kereszt,
Hogy sírva tallóz aki él:
Király, te tetted ezt!”

Máglyára! el! igen kemény -
Parancsol Eduárd -
Ha! lágyabb ének kell nekünk;
S belép egy ifju bárd.

„Ah! lágyan kél az esti szél
Milford-öböl felé;
Szüzek siralma, özvegyek
Panasza nyög belé.

Ne szülj rabot, te szűz! anya
Ne szoptass csecsemőt!...”
S int a király. S elérte még
A máglyára menőt.

De vakmerőn s hivatlanúl
Előáll harmadik;
Kobzán a dal magára vall,
Ez íge hallatik:

„Elhullt csatában a derék -
No halld meg, Eduárd:
Neved ki diccsel ejtené,
Nem él oly velszi bárd.

„Emléke sír a lanton még -
No halld meg, Eduárd:
Átok fejedre minden dal,
Melyet zeng velszi bárd.”

Meglátom én! - S parancsot ád
Király rettenetest:
Máglyára, ki ellenszegűl,
Minden velsz énekest!

Szolgái szét száguldanak,
Ország-szerin, tova.
Montgomeryben így esett
A híres lakoma. -

S Edvárd király, angol király
Vágtat fakó lován;
Körötte ég földszint az ég:
A velszi tartomány.

Ötszáz, bizony, dalolva ment
Lángsírba velszi bárd:
De egy se birta mondani
Hogy: éljen Eduárd. -

Ha, ha! mi zúg?... mi éji dal
London utcáin ez?
Felköttetem a lord-majort,
Ha bosszant bármi nesz!

Áll néma csend; légy szárnya bent,
Se künn, nem hallatik:
„Fejére szól, ki szót emel!
Király nem alhatik.”

Ha, ha! elő síp, dob, zene!
Harsogjon harsona:
Fülembe zúgja átkait
A velszi lakoma...

De túl zenén, túl síp-dobon,
Riadó kürtön át:
Ötszáz énekli hangosan
A vértanúk dalát.', 1),
('Éjszaka!','Im, itt a tág, a szabad éjszaka,
Illatos ege, színes csillaga;
mi, szűk szobáknak sápadt gyermeki
tegyünk szerelmi vallomást neki -
Ó éjszaka! Ó, fényes éjszaka!

A föld, ha nyúgalomé s gyönyöré,
szelíd szárnyával ő borúl fölé,
mint jó szülő, takarva öleli,
áldón ragyognak ezer szemei -
Ó éjszaka! Ó, szelíd éjszaka!

Ő sohsem pihen: alkot boldogan,
ölén száz élet nesztelen fogan,
ölén, ha tölten nyujtozik a kéj,
szemét hamisan húnyja a »vak éj« -
Ó éjszaka! Termékeny éjszaka!

Arany tőgyén, mely holdnak hívatik,
fehér tejjel táplálja gyermekit,
s hamerre kéjes dombhát domborul,
tetsző fátyollal rejti jámborul -
Ó éjszaka! urasszony éjszaka!

Ő mindenekre egyaránt figyel,
jól tudja mindig ő, hogy mit mível,
ő szárazságra bocsát harmatot,
meleg nap után hűs fuvallatot -
Ó éjszaka! Ó, gondos éjszaka!

Melegítő hűs, zaj-táplálta csend,
mozgalmas nyugalom, ne bánjuk, mit jelent;
mi szűk szobáknak sápadt gyermeki,
tegyünk, tegyünk szerelmi vallomást neki!
Ó, éjszaka! Ó, szabad éjszaka!',2),
('Az Alföld','Mit nekem te zordon Kárpátoknak
Fenyvesekkel vadregényes tája!
Tán csodállak, ámde nem szeretlek,
S képzetem hegyvölgyedet nem járja.
Lenn az alföld tengersík vidékin
Ott vagyok honn, ott az én világom;
Börtönéből szabadúlt sas lelkem,
Ha a rónák végtelenjét látom.

Felröpűlök ekkor gondolatban
Túl a földön felhők közelébe,
S mosolyogva néz rám a Dunától
A Tiszáig nyúló róna képe.

Délibábos ég alatt kolompol
Kis-Kunságnak száz kövér gulyája;
Deleléskor hosszu gémü kútnál
Széles vályu kettős ága várja.

Méneseknek nyargaló futása
Zúg a szélben, körmeik dobognak,
S a csikósok kurjantása hallik
S pattogása hangos ostoroknak.

A tanyáknál szellők lágy ölében
Ringatózik a kalászos búza,
S a smaragdnak eleven szinével
A környéket vígan koszorúzza.

Idejárnak szomszéd nádasokból
A vadlúdak esti szürkületben,
És ijedve kelnek légi útra,
Hogyha a nád a széltől meglebben.

A tanyákon túl a puszta mélyén
Áll magányos, dőlt kéményü csárda;
Látogatják a szomjas betyárok,
Kecskemétre menvén a vásárra.

A csárdánál törpe nyárfaerdő
Sárgul a királydinnyés homokban;
Odafészkel a visító vércse,
Gyermekektől nem háborgatottan.

Ott tenyészik a bús árvalyányhaj
S kék virága a szamárkenyérnek;
Hűs tövéhez déli nap hevében
Megpihenni tarka gyíkok térnek.

Messze, hol az ég a földet éri,
A homályból kék gyümölcsfák orma
Néz, s megettök, mint halvány ködoszlop,
Egy-egy város templomának tornya. –

Szép vagy, alföld, legalább nekem szép!
Itt ringatták bölcsőm, itt születtem.
Itt borúljon rám a szemfödél, itt
Domborodjék a sir is fölöttem.', 3);