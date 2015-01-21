# Notatki dotyczące `awk` (z podstaw systemu Unix)

## dnia 2015-01-19 o godzinie 19.40

`awk` służy do przetwarzania plików tekstowych o dosyć regularnej strukturze.

AWK jest językiem do szukania wzorców i przetwarzania ich. Główne implementacje: `nawk`, `mawk`, `gawk` (GNU).

Nazwa pochodzi od pierwszych liter twórców oryginalnego `awk`, którymi byli: Alfred Aho, Peter Weinberger oraz Brian Kernighan (ten od języka C).

Najczęstsze schematy wywołań:

* `awk '...' file.txt`
    * `... | grep ... | awk '...'`
* `awk -f script.awk file.txt`
* Wykonywalny skrypt z odpowiednik shebangiem (`#!/usr/bin/awk -f`, pamiętając o fladze `-f`):
    ```bash
chmod +x script.awk
./script.awk
```

Domyślnym separatorem rekordów jest znak nowej linii, zaś domyślnym separatorem pól są białe znaki (na pewno?).

Strukturę awkowego skryptu można podzielić na 3 części: blok `BEGIN { statements }`, blok `pattern { statements }` oraz blok `END { statements }`. W przypadku braku wzorca (_pattern_) instrukcje (_statements_) są wykonywane dla każdego rekordu. W przypadku braku instrukcji, domyślną jest wyprintowanie całego rekordu.

Warto zauważyć, że

```awk
pattern {
  statement
}
```

różni się od

```awk
pattern
{
  statemet
}
```

Klamrowy nawias otwierający musi być w tej samej linii, co wzorzec. Inaczej będzie instrukcje będą potraktowane jako takie bez wzorca (czyli zmatchują każdy rekord).

Często używa się wyrażeń regularnych (regexpów) jako wzorców, np. `$3~/hello/ { print $1 }` wyprintuje pierwsze pola tych rekordów, które w trzecim rekordzie mają "hello".

`print i j` wypisze zmienne bez spacji. `print i, j` wypisze je z `$OFS` (_output field separator_, domyślnie spacja) pomiędzy. Można też użyć `printf`, które działa podobnie do tego w C.

`awk` ma również zmienne. Ich typu nie trzeba definiować, samych zmiennych nie trzeba deklarować. Średniki w skryptach nie są obowiązkowe (tj. można używać nowych linii, podobna swoboda jak w programowaniu w bashu).

Zmienne, które warto znać to `$0` (cała linia), `$1` (pierwsze pole), `$2` (drugie pole), `NF` (liczba pól w obecnym rekordzie), `$NF` (ostatnie pole), `$(NF-1)` (przedostatnie pole).

`awk` często wykorzystuje się do wygenerowania skryptów bashowych, automagicznej zmiany plików konfiguracyjnych albo do zaawansowanego szukania/parsowania.

Opcjonalna praca domowa: napisać skrypt, który na podstawie listy ludzi w pliku tekstowym (imię, nazwisko) wygeneruje skrypt bashowy do utworzenia kont użytkowników, wygeneruje hasła i je ustawi. Nazwa użytkownika to nazwisko + pierwsza litera naziwska (wszystko małymi literami). Moje uwagi: można wyprintować hasła, aby je przekazać użytkownikom jakoś. Warto sprawdzić skrypt pod względem dwuczłonowych nazwisk oraz polskich znaków diakrytycznych. Można użyć skryptu `addlist.awk` (patrz: bonus poniżej), `passwd` tudzież `pwgen`.

(Bonus: dr inż. Marek Kozłowski wrzucił parę skryptów na http://mini.pw.edu.pl/~kozlowsm/awk/.)
