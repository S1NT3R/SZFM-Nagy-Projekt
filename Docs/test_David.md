## 1.Bevezetés
1.1 Cél

Ez a tesztelési jegyzőkönyv az Step Sepper alkalmazás felületi, iránytű és RSSI távolság mérő funkcióinak működését vizsgálja.

1.2 Verzióinformáció

    Alkalmazás verzió: 0.0.1
    Mobile :Redmi Note 9 Pro
    Tesztelő: Balogh Dávid

## 2.Tesztesetek
2.1 Felhasználói Felület Tesztek
2.1.1 Alapvető Felhasználói Élmény

    Cél:Alkalmazás felhasználói felülete intuitív és könnyen kezelhető-e.

        Lépések:
            Alkalmazás indítása.
            Navigálás a különböző képernyők között.
            Ellenőrzése a gombok és menük működésének.

        Eredmény: 
        
Distance képernyőn nem jellennek meg adatok
Az achivments képernyőn nem tölt a csík

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
            Eszköz forgatása, majd  iránytű mutatójának újboli ellenőrzése.

        Eredmény: Az iránytű pontosan mutatja az északi irányt és megfelelően reagál az eszköz forgására.
2.3 RSSI Távolság Mérés
2.3.1 Bluetooth Kapcsolat Értékelése

    Cél: Alkalmazás helyesen méri-e az RSSI értékeket a Bluetooth kapcsolat során.

        Lépések:
            Bluetooth-t bekapcsolása.
            Alkalmazás indítása egy eszközön majd Bluetooth eszközhöz való csatlakozás.
            Az RSSI értékek ellenőrzése különböző távolságokban.

        Eredmény: Az alkalmazás helyesen és megbízhatóan méri az RSSI értékeket a Bluetooth kapcsolat során.

## Összefoglalás
    Az alkalmazás felhasználói felületén vannak aprób hibák.
    Az iránytű funkció pontosan mutatja az északi irányt.
    Az RSSI távolság mérő funkció megbízhatóan méri az értékeket.
    Az alkalmazás megfelel a tervezett funkcionalitásnak.
    Hibák és problémák: Nincsenek.