v## 1. Bevezetés
1.1 Cél

Ez a tesztelési jegyzőkönyv az Step Sepper alkalmazás felületi, iránytű és RSSI távolság mérő funkcióinak működését vizsgálja.

1.2 Verzióinformáció

    Alkalmazás verzió: 0.0.1
    Mobil: Samsung Galaxy S20FE
    OS: Android 13
    API level: 33
    Tesztelő: Bellér Csaba

## 2. Tesztesetek
2.1 Felhasználói Felület Tesztek
2.1.1 Alapvető Felhasználói Élmény

    Cél: Alkalmazás felhasználói felülete intuitív és könnyen kezelhető-e.

        Lépések:
            Alkalmazás indítása.
            Navigálás a különböző képernyők között.
            Ellenőrzése a gombok és menük működésének.

        Eredmény: 
        - Distance képernyőn nem jelennek meg adatok
        - Az achivments képernyőn nem tölt a csík


2.1.2 Képernyőméret és Felbontás

    Cél: Alkalmazás megfelelően adaptálódik-e különböző képernyőméretekhez és felbontásokhoz.

        Lépések:
            Az alkalmazás tesztelése különböző eszközökön és képernyőméretekkel.
            Eszköz forgatás, és megfelelő alkalmazkodás ellenőrzése.

        Eredmény: Az alkalmazás helyesen adaptálódik a különböző képernyőméretekhez és felbontásokhoz.

2.2 Iránytű Funkcionalitás
2.2.1 Iránytű Pontossága

    Cél: Iránytű pontosan mutatja-e a valós északi irányt.

        Lépések:
            Alkalmazás indítása.
            Iránytű mutatójának ellenőrzése.
            Eszköz forgatása, majd iránytű mutatójának újboli ellenőrzése.

        Eredmény: Az iránytű pontosan mutatja az északi irányt és megfelelően reagál az eszköz forgására.

2.3 RSSI Távolság Mérés
2.3.1 RSSI Pontossága

    Cél: RSSI távolság mérő pontosan méri-e a távolságot.

        Lépések:
            Alkalmazás indítása.
            RSSI távolság mérő indítása.
            Távolság mérés ellenőrzése.

        Eredmény: A távolság mérés nem túl pontos, mivel az RSSI érték alapján nem lehet pontosan meghatározni a távolságot.

2.4 Felhasználói Élmény Tesztek
2.4.1 Felhasználói Élmény

    Cél: Alkalmazás felhasználói élménye megfelelő-e.

        Lépések:
            Alkalmazás indítása.
            Alkalmazás használata.
            Alkalmazás bezárása.

        Eredmény: Az alkalmazás felhasználói élménye megfelelő.
