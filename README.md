# maxWait
Check all provisioner.* files for maxWait and if it's 150.000 than change it to 5.

HUN dokumentation:<br><br>
Erőforrás config MaxWait timeout migrálása:
Mivel az ügyfélnél, most vegyesen 5 és 150000 értékek szerepelnek a configban ezért migrálni kell a configot egységesen 5-re
Ennek módja:
 - erőforrások export-ja,
 - export-ban a maxwait kulcsra keresve feljegyezni azokat az erőforrásokat, ahol 150000,
 - a feljegyzett erőforrások megnyitása a felületen és a "Haladó" fülön a "Maximális várakozási idő (s)" értékének módosítása 5-re.
 <br><br>
 - Ha nem szeretnénk egyesével átnézni az akár több száz provisioner fájlban lévő maxWait értékeket, akkor futtassuk ezt a rövid bash scriptet, amely végigmegy az összes fájlon a conf mappában és miután minden 150000-es értéket átállított 5-re, készít egy LOG.txt fájlt is, melyben rögzíti, hogy mely fájlokon történt meg a változtatás (utólagos ellenőrzés érdekében szükséges).
