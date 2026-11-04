
UNIVERSITETI “UKSHIN HOTI” – PRIZREN
FAKULTETI I SHKENCAVE KOMPJUTERIKE
DIZAJNIMI I SOFTUERËVE



RAPORTI 1 TEKNIK



Tema:
SISTEMI PËR MENAXHIMIN E QENDRAVE SPORTIVE
Lënda: Projekt






Studenti/ja: Fjolla Bajraktari-240329097                                                  Prof: Endrit Fetahi
                                





Prizren, 2027
1. HYRJE 
Qendrat sportive ofrojnë shërbime të ndryshme, si palestër, fusha sportive, kurse grupore dhe aktivitete individuale. Kur rezervimet, oraret, anëtarësimet dhe pagesat menaxhohen me shënime në letër, tabela të ndara ose komunikim jo të centralizuar, mund të paraqiten probleme si rezervime të dyfishta, paqartësi në orare, vështirësi në përcjelljen e anëtarësimeve dhe humbje kohe për stafin.
Projekti propozon një aplikacion ëeb për menaxhimin e qendrave sportive. Sistemi do t’i mbledhë në një vend të dhënat për anëtarët, hapësirat sportive, oraret, rezervimet, trajnerët dhe pagesat. Qëllimi është të lehtësojë punën administrative dhe t’u mundësojë përdoruesve të shohin disponueshmërinë dhe të menaxhojnë rezervimet sipas rolit të tyre.

2. PËRDORUESIT DHE ROLET
Roli	Përgjegjësitë kryesore
Administratori	Menaxhon përdoruesit, qendrat/hapësirat sportive, oraret, shërbimet dhe raportet.
Punonjësi/Recepsionisti	Regjistron anëtarë, krijon ose anulon rezervime dhe regjistron pagesa.
Anëtari/Klienti	Shikon shërbimet dhe oraret, rezervon hapësira ose aktivitete dhe sheh rezervimet e veta.
Trajneri	Shikon orarin dhe aktivitetet ku është caktuar; administron informacionin bazë të seancave të veta.

3. QËLLIMET DHE FUNKSIONALITETET KRYESORE
Regjistrimi dhe autentikimi i përdoruesve.
Menaxhimi i profileve të anëtarëve dhe roleve të tyre.
Regjistrimi dhe përditësimi i hapësirave sportive dhe shërbimeve.
Krijimi dhe menaxhimi i orareve për hapësirat, kurset dhe trajnerët.
Kontrollimi i disponueshmërisë para krijimit të rezervimit.
Krijimi, shikimi dhe anulimi i rezervimeve sipas rregullave të sistemit.
Regjistrimi i pagesave dhe shikimi i statusit të pagesës.
Gjenerimi i raporteve bazë për rezervime, anëtarësi dhe pagesa.

4. RRJEDHA KRYESORE E APLIKACIONIT (USER FLOË)
Përdoruesi hap aplikacionin dhe identifikohet me email dhe fjalëkalim.
Sistemi kontrollon të dhënat dhe rolin e përdoruesit.
Anëtari zgjedh shërbimin ose hapësirën sportive dhe datën/orën e dëshiruar.
Sistemi kontrollon nëse orari është i lirë dhe nëse nuk ka rezervim konfliktues.
Nëse ka disponueshmëri, sistemi ruan rezervimin dhe e shfaq në listën e rezervimeve.
Punonjësi/administratori mund të shohë rezervimin dhe të regjistrojë pagesën ose statusin e saj.

5. KËRKESAT FUNKSIONALE
ID	Kërkesa funksionale	Kriteri i pranimit / testimi
KF-01	Përdoruesi mund të regjistrohet me emër, email dhe fjalëkalim.	Regjistrimi me të dhëna valide krijon llogari; emaili i përdorur më parë refuzohet.
KF-02	Përdoruesi i regjistruar mund të kyçet dhe të çkyçet.	Të dhënat valide lejojnë hyrjen; fjalëkalimi i gabuar nuk lejon hyrjen.
KF-03	Administratori mund të krijojë, ndryshojë dhe çaktivizojë hapësira sportive.	Hapësira ruhet me emër, lloj dhe kapacitet; të dhënat e detyrueshme nuk mund të lihen bosh.
KF-04	Administratori ose punonjësi mund të krijojë dhe ndryshojë orare.	Orari ruhet vetëm nëse koha e fillimit është para kohës së përfundimit.
KF-05	Anëtari mund të shohë shërbimet dhe oraret e disponueshme.	Lista shfaq vetëm shërbimet aktive dhe oraret që nuk janë të zëna.
KF-06	Anëtari mund të krijojë rezervim për një hapësirë ose aktivitet.	Rezervimi ruhet vetëm kur hapësira/orari është i lirë.
KF-07	Sistemi nuk lejon dy rezervime aktive për të njëjtën hapësirë në intervale kohore që mbivendosen.	Dy kërkesa konfliktuese nuk mund të përfundojnë të dyja si rezervime aktive.
KF-08	Anëtari mund të shohë dhe të anulojë rezervimet e veta.	Anëtari nuk mund të shohë ose anulojë rezervime të një anëtari tjetër.
KF-09	Punonjësi mund të regjistrojë pagesën e një anëtari.	Pagesa ruhet me shumën, datën, metodën dhe statusin.
KF-10	Administratori mund të shohë raporte bazë për rezervimet dhe pagesat.	Raporti mund të filtrohet sipas periudhës dhe shfaq numrin e rezervimeve dhe shumën e pagesave të regjistruara.
KF-11	Administratori mund t’i caktojë një trajner një aktiviteti/orari.	Aktiviteti shfaq trajnerin e caktuar dhe nuk pranon caktim të paplotë.
KF-12	Sistemi ruan statusin e rezervimit.	Rezervimi mund të jetë të paktën 'Aktiv', 'Anuluar' ose 'Përfunduar'.

6. KËRKESAT JOFUNKSIONALE
ID	Kërkesa jofunksionale	Si verifikohet
KJF-01	Fjalëkalimet ruhen vetëm si hash i sigurt, jo si tekst i lexueshëm.	Kontrollohet databaza dhe konfirmohet se nuk përmban fjalëkalime në tekst të thjeshtë.
KJF-02	Faqet private dhe backend-it-të përkatëse kërkojnë autentikim dhe kontroll të rolit.	Kërkesa pa sesion/sesion valid refuzohet; roli pa leje merr përgjigje 403 ose ekuivalente.
KJF-03	Sistemi duhet të jetë i përdorshëm në ekran desktop dhe mobil.	Testohen faqet kryesore në gjerësi ekrani 360 px dhe 1366 px pa humbje të funksioneve kryesore.
KJF-04	Për veprimet e zakonshme, përgjigjja e sistemit duhet të jetë brenda 3 sekondave në kushte normale testimi.	Kryhen të paktën 10 kërkesa testuese dhe matet koha e përgjigjes.
KJF-05	Të dhënat e futura nga përdoruesi validohen në backend.	Vlerat e pavlefshme, fushat e detyrueshme bosh dhe formatet e gabuara refuzohen.
KJF-06	Sistemi duhet të ruajë integritetin e të dhënave përmes çelësave primarë dhe të huaj.	Nuk lejohet pagesë/rezervim që lidhet me anëtar ose orar që nuk ekziston.
KJF-07	Mesazhet e gabimit duhet të jenë të kuptueshme dhe të mos ekspozojnë detaje teknike ose fjalëkalime.	Testohen gabimet e kyçjes, rezervimit dhe ruajtjes së të dhënave.
KJF-08	Kodi burimor dhe konfigurimet dokumentohen në repository; sekretet nuk ruhen në Git.	Kontrollohet repository për README dhe mungesë të fjalëkalimeve/backend-it keys.

7. TEKNOLOGJITË E PROPOZUARA (TECH STACK)
Shtresa	Teknologjia	Arsyeja e zgjedhjes
Frontend	HTML + CSS	HTML dhe CSS përdoren për strukturën dhe pamjen e faqeve; janë të përshtatshme për ndërfaqe të thjeshtë ëeb.
Backend	PHP	PHP përpunon formularët, kontrollon të dhënat, zbaton rregullat e rezervimit dhe komunikon me MySQL.
Database	MySQL	Databazë relacionale e përshtatshme për anëtarë, rezervime, orare dhe pagesa me relacione të qarta.
Komunikimi	HTTP/HTTPS dhe forma HTML	Përdoruesi dërgon të dhëna përmes formularëve HTML; në publikim përdoret HTTPS për të mbrojtur komunikimin.
Kontrolli i versioneve	Git + GitHub	Ruajtje e historikut të kodit, bashkëpunim dhe demonstrim i progresit.
Testimi	Teste manuale dhe kontrolle në PHP	Testohen formularët, autentikimi, validimet dhe rregullat e rezervimit në shfletues dhe në backend.

8. DIAGRAMI I ARKITEKTURËS SË SISTEMIT
PËRDORUESI (Admin / Punonjës / Anëtar / Trajner)
FRONTEND – HTML + CSS (faqet dhe formularët)
HTTP/HTTPS – dërgimi i të dhënave nga formularët
BACKEND – PHP (autentikim, role, rezervime, pagesa)
DATABASE – MySQL (tabelat dhe relacionet)



9. MODELI FILLESTAR I DATABAZËS
Modeli përdor databazë relacionale. Çdo tabelë ka primary key (PK); foreign key (FK) lidh të dhënat që varen nga entitete të tjera.
Tabela	Fushat kryesore	Shpjegimi
Users	user_id (PK), full_name, email (UNIQUE), passëord_hash, role, created_at, is_active	Llogaritë e të gjithë përdoruesve dhe roli i tyre.
Members	member_id (PK), user_id (FK, UNIQUE), phone, membership_start, membership_end, status	Të dhënat e anëtarësisë; user_id lidhet me Users.
SportsFacilities	facility_id (PK), name, facility_type, capacity, location, is_active	Hapësirat sportive, p.sh. fusha, sallë ose palestër.
Trainers	trainer_id (PK), user_id (FK, UNIQUE), specialization	Të dhënat e trajnerëve; llogaria lidhet me Users.
Activities	activity_id (PK), name, description, capacity, trainer_id (FK, NULL)	Aktivitete/kurse dhe trajneri i caktuar, nëse ka.
Schedules	schedule_id (PK), facility_id (FK, NULL), activity_id (FK, NULL), start_at, end_at, status	Orari i një hapësire ose aktiviteti. Njëri prej facility_id/activity_id duhet të jetë i plotësuar sipas llojit të orarit.
Bookings	booking_id (PK), member_id (FK), schedule_id (FK), booked_at, status	Rezervimi i anëtarit për një orar.
Payments	payment_id (PK), member_id (FK), booking_id (FK, NULL), amount, currency, method, status, paid_at	Pagesat e anëtarit; mund të lidhen me rezervim ose anëtarësi.








10. RELACIONET KRYESORE DHE ARSYETIMI
Relacioni	Kardinaliteti	Arsyetimi
Users – Members	1 : 0..1	Një llogari mund të ketë maksimumi një profil anëtari; profili i anëtarit i përket një llogarie.
Users – Trainers	1 : 0..1	Një llogari mund të ketë maksimumi një profil trajneri.
Members – Bookings	1 : N	Një anëtar mund të bëjë shumë rezervime, por çdo rezervim i përket një anëtari.
Schedules – Bookings	1 : N	Një orar mund të ketë shumë rezervime nëse është aktivitet grupor; kapaciteti duhet të respektohet. Për hapësira me përdorim individual, lejohet vetëm një rezervim aktiv në të njëjtin interval.
SportsFacilities – Schedules	1 : N	Një hapësirë mund të ketë shumë orare në kohë të ndryshme; çdo orar i hapësirës lidhet me një hapësirë.
Activities – Schedules	1 : N	Një aktivitet mund të zhvillohet në shumë orare.
Trainers – Activities	1 : N	Një trajner mund të udhëheqë disa aktivitete; për modelin fillestar, çdo aktivitet ka maksimumi një trajner.
Members – Payments	1 : N	Një anëtar mund të kryejë shumë pagesa; çdo pagesë lidhet me një anëtar.
Bookings – Payments	1 : 0..N	Një rezervim mund të mos ketë pagesë të regjistruar ose mund të ketë disa regjistrime pagese, p.sh. pagesë dhe rimbursim, nëse kjo mbështetet.






11. DIAGRAMI TEKSTUAL I RELACIONEVE TË DATABAZËS
Users(user_id PK)
  | 1                 | 1
  |                   |
  | 0..1              | 0..1
Members (member_id PK)   Trainers (trainer_id PK)
  | 1                         | 1
  |                           |
  | N                         | N
Bookings (booking_id PK)   Activities (activity_id PK)
  | N                         | 1
  |                           |
  | 0..N                      | N
Payments (payment_id PK)  Schedules (schedule_id PK)
                              |
                              | N
                              |
                              | 1
                       SportsFacilities (facility_id PK)

FK links:
Members.user_id -> Users.user_id
Trainers.user_id -> Users.user_id
Bookings.member_id -> Members.member_id
Bookings.schedule_id -> Schedules.schedule_id
Payments.member_id -> Members.member_id
Payments.booking_id -> Bookings.booking_id
Schedules.facility_id -> SportsFacilities.facility_id
Schedules.activity_id -> Activities.activity_id
Activities.trainer_id -> Trainers.trainer_id
Bookings.member_id -> Members.member_id
Bookings.schedule_id -> Schedules.schedule_id
Payments.member_id -> Members.member_id
Payments.booking_id -> Bookings.booking_id
Schedules.facility_id -> SportsFacilities.facility_id
Schedules.activity_id -> Activities.activity_id
Activities.trainer_id -> Trainers.trainer_id

12. ÇFARË PËRFSHIHET DHE ÇFARË NUK PËRFSHIHET NË PROJEKT
Menaxhimi i llogarive dhe roleve bazë.
Menaxhimi i hapësirave, aktiviteteve dhe orareve.
Rezervimet dhe kontrolli i konflikteve të orareve.
Regjistrimi manual i pagesave dhe statusit të tyre.
Raporte të thjeshta për përdorim administrativ.

13. PLANI I PUNËS DERI NË RAPORTIN TEKNIK 2
Faza	Detyrat	Rezultati i pritshëm
Java 1	Krijimi i repository-t, README dhe strukturës së frontend/backend.	Krijimi i repository-t, README dhe strukturës së frontend/backend.
Java 2	Krijimi i skemës së databazës dhe lidhjeve kryesore.	Tabelat fillestare dhe diagrami ER.

Java 3	Implementimi i regjistrimit, kyçjes dhe roleve bazë.	Autentikim fillestar dhe mbrojtje e faqeve private.
Java 4	Implementimi i CRUD për hapësirat, aktivitetet dhe oraret.	Administratori mund të menaxhojë të dhënat kryesore.
Java 5	Implementimi i listimit të orareve dhe krijimit/anulimit të rezervimeve.	Rrjedha kryesore e rezervimit funksionon.
Java 6	Testimi i konflikteve, validimeve dhe përmirësimi i ndërfaqes.	Demonstrim i një prototipi funksional dhe listë testesh.


14. PËRFUNDIM
Raporti përcakton problemin, prdoruesit, funksionalitetet, kërkesat e testueshme, teknologjitë, arkitekturën dhe modelin fillestar të të dhënave për Sistemin e Menaxhimit të Qendrave Sportive. Në fazën e parë synohet të vërtetohet se zgjidhja është e planifikuar dhe e realizueshme. Implementimi do të zhvillohet gradualisht, duke filluar nga databaza dhe autentikimi e më pas duke kaluar te oraret, rezervimet dhe raportet.


RAPORTI TEKNIK 2
Nga Dizajni në Implementim Real: Databaza, Backend Logjika dhe API Endpoints

1. HYRJE DHE OBJEKTIVAT E RAPORTIT TË DYTË
Në vazhdimësi të Raportit të Parë, ku u përcaktuan kërkesat funksionale, rolet e përdoruesve dhe
arkitektura fillestare, Raporti i Dytë shënon kalimin nga faza e dizajnit dhe planifikimit konceptual
në implementimin real të sistemit. Fokusi kryesor i kësaj faze është zhvillimi i shtresës së të
dhënave (Data Layer) dhe logjikës së backend-it për Sistemin e Menaxhimit të Qendrave Sportive.
Gjatë kësaj faze është realizuar krijimi fizikisht i databazës në MySQL (përmes phpMyAdmin), lidhjae sigurt me backend-in e zhvilluar në PHP përmes mekanizmit PDO (PHP Data Objects), si dhendërtimi i logjikës për kontrollin e konflikteve të orareve (Double Booking), validimin e të dhënavedhe autentikimin e përdoruesve.

2. SHTRESA E TË DHËNAVE (DATABASE IMPLEMENTATION)
Databaza e sistemit është emërtuar qendra_sportive dhe është implementuar me sukses në MySQL
Server. Të gjitha tabelat përmbajnë çelësat primarë (PRIMARY KEY), çelësat e huaj (FOREIGN KEY)me rregullat e integritetit referencial, si dhe llojet e duhura të të dhënave dhe constraints.
Tabela	Fushat kryesore &Constraints	Lidhje(FK)	Rëndësia &amp; Logjika
users	user_id (PK, AUTO_INC)
full_name (NOT NULL)
email (UNIQUE, NOT NULL)
password_hash (VARCHAR
255)
role (ENUM: admin, staff,
member, trainer)
created_at, is_active	--	Llogaritë e përdoruesve.
Emaili është UNIQUE për të
parandaluar duplikimet.
sportsfacilities	facility_id (PK)
name (VARCHAR 100)
facility_type (VARCHAR 50)
capacity (INT)
is_active (TINYINT)	--	Hapësirat sportive (fusha
futbolli, tenisi, sallë, etj.).
schedules	schedule_id (PK)
facility_id (FK)
start_at (DATETIME)
end_at (DATETIME)
status (VARCHAR)	facility_id -&gt;
sportsfacilities.facility_
id	Oraret e caktuara për
hapësirat ose aktivitetet.
bookings	booking_id (PK)
user_id (FK)
schedule_id (FK)
booked_at (TIMESTAMP)
status (ENUM: Aktiv,
Anuluar, Përfunduar)	user_id -&gt; users.user_id
schedule_id -&gt;
schedules.schedule_id	Rezervimet e anëtarëve.
Lidh përdoruesin me orarin
e zgjedhur.
members 	member_id (PK)
user_id (FK, UNIQUE)
phone, status	user_id -&gt; users.user_id	Profili plotësues i
anëtarësisë për përdoruesit
me rol member.
payments	payment_id (PK)
member_id (FK)
booking_id (FK, NULL)
amount, paid_at	member_id -&gt;
members.member_id
booking_id -&gt;
bookings.booking_id	Regjistrimi i pagesave të
anëtarëve.

2.2 Ndryshimet nga Versioni Fillestar dhe Arsyetimi i Constraints
• Emërtimi i Databazës: Databaza u zyrtarizua me emrin qendra_sportive për t’u përputhur
saktësisht me konfigurimet e lokaleve të serverit Apache/MySQL në XAMPP.
• Integrity Constraints: U përdor ON DELETE CASCADE te Foreign Keys për të siguruar fshirjen
ose përditësimin konsistent të të dhënave relacionale.
• Indeksimi dhe Uniciteti: Fusha email është caktuar UNIQUE për të mos lejuar regjistrimin e
shumëfishtë. Fusha schedule_id është indeksuar automatikisht përmes Foreign Key për të lehtësuar
kërkimet e shpejta gjatë kontrollit të mbivendosjes së orareve.


3. BACKEND LOGJIKA DHE LIDHJA ME DATABAZËN
Logjika e backend-it është ndërtuar në PHP duke përdorur PDO (PHP Data Objects). PDO u zgjodh
sepse ofron mbrojtje maksimale ndaj SQL Injection përmes Prepared Statements dhe e bën
menaxhimin e përjashtimeve (Exceptions) shumë eficient.
3.1 Lidhja me Databazën (db.php)
Fajli db.php realizon lidhjen me MySQL serverin në localhost dhe vendos modalitetin e gabimeve në ERRMODE_EXCEPTION.
 

4. API ENDPOINTS DHE TRAJTIMI I GABIMEVE (REST API &AMP; ERROR HANDLING)
Sistemi komunikon me klientin (browser/frontend ose Postman) përmes kërkesave HTTP dhe
përgjigjeve të strukturuara në formatin JSON. Më poshtë paraqiten endpoint-et kryesore të sistemit:
Method	Endpoint	Qëllimi	Status Code &amp; Output
Post	/login.php	Autentikimi i përdoruesit
(kontrolli i fjalëkalimit me
password_verify)	HTTP 200 (Success) / HTTP
401 (Unauthorized)
Get	/facilities.php	Kthen listën e hapësirave
sportive aktive në
dispozicion	HTTP 200 OK (JSON Array
of Facilities)
Post	/create_booking.php	Krijon një rezervim të ri
duke kontrolluar
disponueshmërinë	HTTP 201 Created / HTTP
409 Conflict
Get	/errorHandling.php	Testimi i kontrollit të
konflikteve të orarit
(Double Booking)	HTTP 200 (Lirë) ose JSON
Error Response





4.1 LOGJIKA E VALIDIMIT DHE VALIDIMI I KONFLIKTEVE 
Në përputhje me kërkesën funksionale KF-07, sistemi nuk lejon rezervimin e dyfishtë të së njëjtës hapësirë në të njëjtën fashë orare. Skripti errorHandling.php analizon nëse ekziston një rezervim me status ‘Aktiv’ për schedule_id përkatëse.
 

4.2 REZULTATI I TESTIMIT NË SHFLETUES (PRETTY-PRINT JSON OUTPUT)
Gjatë testimit real në shfletues (localhost/sport_db/errorHandling.php), në rast se fusha është e
zënë, API kthen përgjigjen standarde JSON me header &#39;application/json&#39;, e cila nga shfletuesi shfaqet si Pretty-print:
 


5. SIGURIA DHE AUTENTIKIMI
1. Enkriptimi i Fjalëkalimeve (KJF-01): Të gjitha fjalëkalimet e përdoruesve ruhen në databazë
me hash të sigurt duke përdorur funksionin password_hash($password, PASSWORD_DEFAULT).Fjalëkalimet nuk ruhen asnjëherë si plain text.
2. Kontrolli i Aksesit dhe Sesioneve (KJF-02): Sistemi menaxhon të drejtat e hyrjes përmes
$_SESSION. Pas verifikimit të fjalëkalimit me password_verify(), përdoruesi ridrejtohet te paneli përkatës sipas rolit (admin, staff, member, trainer).

6. MENAXHIMI I PROJEKTIT DHE HISTORIKU I GIT (GIT HISTORY &AMP; PROGRESS)
Projekti është vendosur në repository në GitHub. Të gjitha ndryshimet nga faza e dizajnit (Raporti1) e deri te krijimi i databazës reale, lidhjes PDO dhe ndërtimit të API-së për Raportin 2 janë dokumentuar përmes committ-eve të rregullta në Git. Dosja e projektit është e vendosur në mjedisin lokal të punës në C:/xampp/htdocs/sport_db/.

7. PËRFUNDIM
Raporti i Dytë provon plotësisht kalimin me sukses nga planifikimi te prototipi funksional. Shtresa e të dhënave ekziston realisht në MySQL me të gjitha relacionet e nevojshme, backend-i në PHP përpunon me sukses kërkesat dhe validon gabimet/konflikteve të orareve, si dhe komunikimi përmes API JSON është testuar dhe konfirmuar me sukses. Sistemi është gati për integrim të mëtejshëm me ndërfaqen e përdoruesit në faqet e frontend-it.
