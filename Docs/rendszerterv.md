
## Rendszer Leírása:
Az alkalmazás egy beltéri lépésszámlálásra épülő rendszer, amely a felhasználó által megtett távolságot és az irányt pontosan rögzíti. A rendszer lépésszámláló szenzorokat használ a felhasználó mozgásának követésére, és a következő funkciókat kínálja:

-	Lépésszámlálás:    
     Az alkalmazás folyamatosan figyeli a felhasználó lépéseit, és számlálja azokat, hogy meghatározza a megtett távolságot.

-	Pontos irány meghatározás:   
     Az alkalmazás a felhasználó mozgásának alapján képes meghatározni az irányt, például észak, dél, kelet, nyugat. Ehhez a telefon beépített iránymutató szenzorait használja.

-	Részletes útvonal rögzítés:   
     Az alkalmazás rögzíti és tárolja az egész útvonalat, amit a felhasználó megtett. Az útvonalat térképen is megjeleníti.

-	Távolság mérése:    
     Az alkalmazás a lépésszámlálás alapján kiszámolja a megtett távolságot mérföldben vagy kilométerben.

-	Felhasználói profil és statisztikák:   
     A rendszer lehetőséget biztosít a felhasználóknak adataik rögzítésére és az eddig megtett távolságok és irányok statisztikáinak megtekintésére.

-	Pontosság optimalizálása:    
     Az alkalmazás folyamatosan kalibrálja a szenzorokat a legjobb pontosság érdekében.

-	Egyszerű használat:   
     Felhasználóbarát felület, amely lehetővé teszi az alkalmazás könnyű indítását és adatainak könnyű elérését.

-	Adatmegosztás:   
     A felhasználók megoszthatják az útvonalaikat és eredményeiket közösségi médiában vagy más alkalmazásokban.  
     Ez az alkalmazás ideális beltéri tevékenységekhez, például edzőtermi edzésekhez vagy egyéb zárt térben végzett mozgásformákhoz, ahol a GPS jelet nem lehet használni.   
     A lépésszámlálás és az iránymeghatározás kombinációjával a rendszer pontosan követi a felhasználó tevékenységét, és lehetővé teszi számukra, hogy nyomon kövessék előrehaladásukat és javulásukat.

## Rendszer Célja:
Ez a technológia különösen számos felhasználó számára lehet értékes, és az egyes csoportok számára különböző funkciók lehetnek a legfontosabbak:

1.	Sportolók és Fitnesz Rajongók:    
      Sportolók és aktív életmódot élők a leginkább értékelhetik a rendszer lépésszámláló és távolságmérő funkcióját. Ez segít nekik nyomon követni és optimalizálni a teljesítményüket, valamint nyomon követni az edzéseik hatékonyságát.

2.	Túrázók és Szabadidős Aktivisták:   
      A túrázók és a természetjárók számára az iránymeghatározás lenne a legfontosabb, mivel lehetővé tenné számukra, hogy nyomon kövessék, merre jártak a természetben és könnyebben visszataláljanak a kiindulóponthoz.

3.	Idősebb Emberek és Egészségügyi Szakemberek:   
      Az idősebb emberek és az egészségügyi szakemberek a lépésszámlálás és a távolságmérés segítségével könnyebben monitorozhatják a fizikai aktivitást, ami hozzájárulhat az egészségmegőrzéshez és a rehabilitációhoz.

4.	Belső Sportlétesítmények Felhasználói:   
      Azok, akik beltéri sportlétesítményekben, például futópadokon vagy konditermekben edzenek, a beltéri lépésszámlálás és a távolság mérésének képességét találhatják a leghasznosabbnak, mivel nincs hozzáférésük GPS jelhez.

5.	Okostelefon-alkalmazás Fejlesztők:   
      Az alkalmazásfejlesztők és technológiai vállalkozások értékelhetik az adatkezelési és megosztási funkciókat, mivel ezek segítenek az alkalmazások funkcionalitásának bővítésében és az adatok elemzésében.   
      Az említett célcsoportok között az alkalmazás különböző funkciói változó mértékben lehetnek relevánsak, de az egyedi igények és elvárások szerint személyre szabhatók, hogy minél szélesebb körű felhasználói elégedettséget biztosítsanak.

## Terv:

1. Felhasználói Regisztráció és Belépés:
    - Az adatokat egy biztonságos módon tároljuk egy adatbázisban (pl. Firebase, MySQL).
    - A regisztrációhoz és a belépéshez kapcsolódó folyamatokat kezeljük az alkalmazásban lévő űrlapokkal és bejelentkezési kezelőkkel.

2. Profil Szerkesztése:
    - A felhasználók személyes adatokat tárolhatnak az adatbázisban, és ezeket az adatokat jeleníthetik meg a profiljukon.
    - A felhasználók a profilképüket feltölthetik egy képfeltöltő felület segítségével, amely lehetővé teszi a képek kiválasztását és feltöltését.

3. Barátok Hozzáadása:
    - Az alkalmazásba építhetünk barátkereső funkciót, amely lehetővé teszi a felhasználók számára más felhasználók keresését név vagy e-mail cím alapján.
    - A barátkéréseket és jóváhagyásokat szintén az adatbázisban tároljuk, és az alkalmazás értesítéseket küldhet, amikor új barátokat adnak hozzá vagy jóváhagyják.

4. Guest Mód:
    - Az alkalmazás lehetőséget nyújthat a felhasználóknak arra, hogy "vendégként" használják, és csak a lépéseiket követhessék anélkül, hogy regisztrálnának.

5. Kitüntetések Gyűjtése:
    - Az alkalmazás követi a felhasználók aktivitását, és automatikusan ad kitüntetéseket az elért eredményekért.
    - A kitüntetéseket az adatbázisban tároljuk és az alkalmazás felhasználói felületén jelenítjük meg.

6. Versenyek:
    - Az alkalmazás lehetőséget ad versenyek szervezésére és csatlakozásra.
    - A versenyek eredményeit és nyerteseit az adatbázisban tároljuk, és a felhasználók számára megjelenítjük az eredményeket.

7. Részletes Statisztikák és Grafikonok:
    - Az alkalmazás lehetőséget nyújthat a felhasználóknak arra, hogy részletes statisztikákat és grafikonokat készítsenek a lépéseikről és aktivitásaikról.
    - Az adatokat az alkalmazás gyűjti és az adatbázisban tárolja, majd ezeket adatokat használja a grafikonok létrehozásához és megjelenítéséhez.

8. Támogatás Külső Eszközökkel:
    - Az alkalmazás lehetővé teheti az okosórák és más külső eszközök csatlakoztatását a lépésszámlálás és aktivitás nyomon követéséhez.
    - Használjunk megfelelő API-kat és szolgáltatásokat a külső eszközökkel történő kommunikációhoz és adatok szinkronizálásához.


## Projektterv:
A projektterv során az "Agilis Scrum" módszerét alkalmazzuk a rendszer fejlesztéséhez. Az Agilis Scrum alkalmazásának előnyei és működése a következők:

1.	Előnyök: 
-	Rugalmas és Iteratív Fejlesztés: Az Agilis Scrum lehetővé teszi az iteratív fejlesztést, amely lehetővé teszi a gyors visszajelzést és a változások könnyű bevezetését a projektbe.

-	Ügyfélközpontúság:    
A rendszer folyamatosan kap visszajelzést a felhasználóktól, így a fejlesztőcsapat képes az ügyfelek igényeire reagálni.

-	Csapatmunka és Kommunikáció:   
 A Scrum ösztönzi a csapatmunkát és a rendszeres kommunikációt a csapat tagjai között, ami javítja az együttműködést.

-	Rövid Szállítási Ciklusok:   
 Az alkalmazott sprints (szállítási ciklusok) segítenek a rendszer fokozatos és gyakori fejlesztésében.

 2.	Működés:   
-	A projekt kezdetén létrehozzuk a termék backlog-ot, amely tartalmazza az összes funkciót és követelményt.

-	A backlog elemeket prioritizáljuk, és a sprintekben (2-4 hetes időszakokban) dolgozunk az éppen aktuális legfontosabb feladatokon.

-	Minden sprint végén előállítjuk a működő, tesztelt rendszert, amely tartalmazza az addig elkészült új funkciókat.

-	Az ügyfelekkel rendszeres időközönkénti értékelő és visszajelző megbeszéléseket tartunk, ahol a fejlesztések terén bevezetett változásokról és az új feladatokról tárgyalunk.

-	Az agilis Scrum módszer alkalmazásával a projekt csapata rugalmasan reagálhat a változó követelményekre, és az előrehaladás folyamatosan ellenőrizhető és fejleszthető   
Az Agilis Scrum módszerének alkalmazása lehetővé teszi, hogy a projekt dinamikusan és hatékonyan haladjon előre, miközben biztosítja a folyamatos ügyfélkapcsolatot és a projekt átláthatóságát.   
 A rendszer folyamatosan fejlődik és alkalmazkodik az új igényekhez, amely hozzájárul a projekt sikeréhez és az ügyfelek elégedettségéhez.

 ## Képernyőterv:

https://www.figma.com/file/aXqtArActBWCTs8CsKbCFl/Lépésszámláló?type=design&node-id=0-1&mode=design&t=19d9G9Fz8fpSFDsI-0

## Karbantartási terv:
A következőkben egy karbantartási és továbbfejlesztési terv szempontjait mutatunk be az  alkalmazás számára:
1.	Verziófrissítések:   
 Rendszeres verziófrissítésekkel javítjuk a stabilitást és biztonságot, és az új funkciókat vezetünk be.

2.	Felhasználói Visszajelzés Elemzése:   
 Folyamatosan figyeljük a felhasználók visszajelzéseit, és ezek alapján tervezünk további fejlesztéseket.

3.	Pontosság Optimalizálása:    
A lépésszámláló és iránymeghatározás pontosságának növelése érdekében folyamatosan kalibráljuk a szenzorokat.

4.	Felhasználói Élmény Javítása:   
 Az interfész kényelmét és felhasználói élményét fejlesztjük, hogy még könnyebben használható legyen.

5.	Térkép Frissítések:  
 A térképes navigációhoz frissítjük a térképadatokat és lehetővé tesszük az offline térkép használatát.

6.	Felhasználói Profil Kibővítése:  
 Az egyéni felhasználói profilokat tovább fejlesztjük, hogy több információt és beállítást lehessen tárolni.

7.	Social Sharing Funkció:  
 A felhasználóknak lehetőséget adunk az aktivitásaik közösségi médiában történő megosztására.

8.	Beépített Kalóriaszámlálás:  
 Az alkalmazáshoz kalóriaszámláló funkciót adunk hozzá a teljes kép megjelenítéséhez.
 
9.	Integrációk:    
 Integráljuk az alkalmazást más egészségügyi és fitnesz alkalmazásokkal, például pulzusmérőkkel és étrendkövetőkkel.

10.	Tesztelés és Hibajavítás:   
 Rendszeres tesztelést és hibajavítást végzünk a stabilitás és megbízhatóság érdekében.

11.	Platformkompatibilitás:   
 Biztosítjuk, hogy az alkalmazás zavartalanul működjön a legújabb mobilplatformokon és operációs rendszereken.

12.	Felhasználói Oktatás:   
 Készítünk oktatóanyagokat és segítségfunkciókat az új funkciók és beállítások megértéséhez.
Ez a karbantartási és továbbfejlesztési terv segít abban, hogy az alkalmazás naprakész maradjon, javítsa a felhasználói élményt és reagáljon az ügyfelek igényeire.   
A folyamatos fejlesztés és frissítések hozzájárulnak az alkalmazás hosszú távú sikeréhez és relevanciájához.

## Időpontok:

6. Hét:

- Követelmény specifikációk:
    - Jelenlegi helyzet leírása, mi a céluja mit szeretnéne a  elérni a megrendelő.
    - Vágyálom rendszer leírása mit szeretne hogy képzeli el a jövőt a megrendelő.
    - Jelenlegi üzleti folyamatok leírása.
    - Igényelt üzleti folyamatok leírása, hogy és mit szeretne elérni.
    - Rendszerre Vonatkozó szabályok megfolgamazása a megrendelő által.
    - Követelmény lista összeállítása.

- Funkcionálos specifikációk:
    - Jelenlegi helyzet leírása, mi a célunk mit akarunk elérni.
    - Vágyálom rendszer leírása mit szeretnénk hogy képzeljük el a jövőt.
    - Jelenlegi üzleti folyamatok leírása.
    - Igényelt üzleti folyamatok leírása, hogy és mit szeretnénk elérni.
    - Rendszerre Vonatkozó szabályok megfolgamazása.
    - Követelmény lista összeállítása. 
    - Képernyőtervek  összeállítása.

7. Hét:

- Rendszer terv:
    - Rendszer Leírása, azaz mit szeretnénk elérni hogy is fog kinézni az aplikációnk.
    - Rendszer Célja, a nagy cél amit el szeretnénk érni.
    - Terv, a fejlesztés menete elképzelés hogy és mi fog megvalósulni.
    - Időpontok, hogy fogunk haladni a proketel.
    - Erőforrások, mijen erőforrások álnak rendelkezésre és mire van szükség.
    - Rendszerarchitektúra.
    - Felhasználói Interfész, hogy fog kinézni mit fog látni a felhasználó.
    - Projektterv, a projekt felépítése mit fogunk megvalósítani.
    - Képernyőterv, egy vázlata és prototipus a felhasználói iterfacre.
    - Karbantartási terv, hogy is fog alakulni a jövő mi lesz a fejlesztés lezajlása után.
    - Fogalom szótár, idegen szavak leírása.

8. Hét:

- Fejlesztés sprint 1

9. Hét:

- Fejlesztés sprint 2

10. Hét:

- Demó (projekt bemutató, értékeléssel) + sprint 3

11. Hét:

- Fejlesztés sprint 4, tesztelés
- tesztelés: tesztesetek és jegyzőkönv

12. Hét:

- Fejlesztés sprint 5, tesztelés, teszt dokumentáció tesztelés

13. Hét:

- Átadás-átvétel (értékelés)

## Erőforrások:

1. Fejlesztők:

- Android alkalmazás fejlesztő:    
  Ha az alkalmazást Android platformra tervezed, szükséged lesz Android alkalmazásfejlesztőre.

- iOS alkalmazás fejlesztő:    
  Ha az alkalmazást iOS platformra is szeretnéd elérhetővé tenni, iOS alkalmazásfejlesztőre is szükséged lesz.

- Back-end fejlesztő:    
  Amennyiben szerveroldali komponenst is tervezel az alkalmazásodhoz, back-end fejlesztőre lesz szükséged.

2. UI/UX tervező:  

   Az alkalmazás felhasználói felületének és felhasználói élményének tervezéséhez és kialakításához szükséges egy UI/UX 
tervező.


3. Térképszolgáltató:   

   Ha térkép szolgáltatást használsz, például a Google Térképet vagy az OpenStreetMap-et, akkor a térképszolgáltató 
költségeivel is számolnod kell.


4. Adatbázis és szerverinfrastruktúra:

   Az útvonalak és felhasználói adatok tárolásához szükség lesz egy megbízható adatbázisra és szerverinfrastruktúrára. 
Ezt is finanszírozni kell.


5. Tesztelés és minőségbiztosítás:

   Tesztelők vagy minőségbiztosítási szakemberek szükségesek az alkalmazás hibáinak kiszűréséhez és a minőségi 
felhasználói élmény biztosításához.


6. Projektmenedzser:   

   Egy projektmenedzser segíthet a projekt irányításában, a határidők betartásában és a költségek ellenőrzésében.


7. Költségek:   

   Az alkalmazás fejlesztésének költségei jelentősen változhatnak a projekt komplexitásától és az alkalmazás 
funkcionalitásától függően. Az alábbi tényezők befolyásolhatják a költségeket:


9. Munkaerő költségek:   

   A fejlesztők és tervezők bérezése jelentős tényező. A fejlesztők tapasztalata és helye is befolyásolja a béreket.


10. Infrastruktúra költségei:   

    A szerverek, adatbázisok és egyéb infrastruktúra költségek ismeretlenek lehetnek. Ez a költség nagyban függ attól, 
hogy milyen méretű és forgalmú alkalmazást tervezel.


11. Térképszolgáltatás díjai:  

    Térképszolgáltatástól függően a lekérdezések és használat díjszabása eltérő lehet.


12. Tesztelési és minőségbiztosítási költségek: 

    A tesztelés és minőségbiztosítás költségei szintén változóak lehetnek.

## Rendszerarchitektúra:

Az RSSI (Received Signal Strength Indication) egy vezeték nélküli kommunikációs paraméter, amely azt mutatja meg, mennyire erős a fogadott rádiófrekvenciás jel. Az RSSI értéket általában decibelben (dBm) vagy relatív értékben fejezik ki, és azt mutatja meg, hogy a vételi eszköz (pl. okostelefon, Wi-Fi adapter) milyen erősségű jelet észlel egy küldő eszköztől (például vezeték nélküli hozzáférési pont, Bluetooth eszköz).

Néhány kulcsfontosságú pont az RSSI-vel kapcsolatban:

1.  Mérési skála:

    Az RSSI érték egy negatív skálán van kifejezve, például -30 dBm és -100 dBm között. Minél kisebb az érték abszolút értékben, annál erősebb a fogadott jel. Tehát egy -30 dBm érték egy erősebb jelre utal, mint egy -80 dBm érték.

2.   Távolság és jelminőség:

     Az RSSI segíthet becsülni a két eszköz közötti távolságot és a vezeték nélküli kapcsolat minőségét. Általában az erősebb jel erősebb kapcsolatot és közelebbi távolságot jelez.

3.   Zavarok és interferencia:

     Az RSSI         figyelembevételével az eszközök képesek felmérni a környezeti zavarokat és interferenciát. Az alacsony RSSI-értékek gyakran jelzik, hogy zavarok vagy távolság miatt problémák lehetnek a kommunikációval.



## Felhasználói Interfész:

A tervezett felhasználói interfész egy átfogó és modern megközelítést alkalmaz az alkalmazás használatának 
megkönnyítésére és a felhasználók számára valódi élmény nyújtására. Az alábbiakban részletesen bemutatjuk a 
tervezett interfész fontosabb tulajdonságait:

1. Fő Kezdőképernyő:   

      Az alkalmazás fő kezdőképernyője tartalmazza a lépésszámlálást, a megtett távolságot és az aktuális irányt. 
A felhasználó itt láthatja az eddigi eredményeket és az útvonalat térképen.


2.	Térképes Navigáció: 

      Az interfész egy integrált térképet is tartalmaz, ahol a felhasználók nyomon követhetik útvonalaikat, és az 
iránymutató jelek alapján könnyen tájékozódhatnak.


3.	Felhasználói Profil: 

      A felhasználók egyéni profilokat hozhatnak létre, ahol tárolhatják adataikat, elérhetik korábbi aktivitásaikat 
és követhetik fejlődésüket.


4.	Statisztikák és Diagramok: 

      Az alkalmazás részletes statisztikákat és diagramokat nyújt a lépésszámokról, távolságokról és aktivitásokról, 
ami segíti a felhasználókat a céljaik elérésében.


5.	Beállítások és Testreszabás:  

      A felhasználóknak lehetőségük van az interfész testreszabására, például mértékegység kiválasztására, értesítések 
beállítására és szenzorok kalibrálására.


6.	Történet és Megosztás:  

      Az interfész lehetőséget biztosít az aktivitások történetének visszakeresésére és megosztására közösségi médiában 
vagy e-mailen keresztül.

## Fogalomszótár:
