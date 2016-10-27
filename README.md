# mobilny-punkt-informacyjny
Projekt mobilnego punktu informacyjnego umożliającego przeglądanie, a także dodawanie wszelakich zabytków, czy miejsc rozrywkowych do listy.

Obejmuje on tabelę z listą obiektów, oraz panel administratora, który zezwala na dodawanie i usuwanie rekordów.

Całość znajduje się w brach: index w pliku miejsca_warte_odwiedzenia.zip

Aby strona działała poprawnie trzeba wykonać parę kroków

1. Włączyć Apache i MySQL
2. Wypakować plik miejsca_warte_odwiedzenia.zip do xampp/htdocs
3. W przeglądarce wchodzimy w localhost/phpmyadmin i tworzymy bazę danych o nazwie miejsca_warte_odwiedzenia i importujemy tak plik z głównego folderu o tej samej nazwie
4. Jeżeli wszystko zostało zrobione poprawnie, strona będzie działać pod adresem localhost/miejsca_warte_odwiedzenia a panel administracyjny localhost/miejsca_warte_odwiedzenia/admin   Login: admin Hasło:admin
