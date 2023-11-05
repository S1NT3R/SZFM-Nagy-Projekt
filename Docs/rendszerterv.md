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

## Fogalom szótár:
[TODO]

