Unix FAQ
========

## Polecenia/pytania

* Podaj 8 przykładowych plików w `/etc/`.

    1. `/etc/passwd`
    2. `/etc/shadow`
    3. `/etc/group`
    4. `/etc/mtab`
    5. `/etc/fstab`
    6. `/etc/shells`
    7. `/etc/inittab`
    8. `/etc/profile`

* Jak zmienić nazwę pliku?

    `mv <stara nazwa> <nowa nazwa>`

* Co jest domyślnym shellem we FreeBSD?

    `tcsh`

* Co robi polecenie `touch`?

    * tworzy pusty plik, gdy podany plik nie istnieje
    * zmienia datę i czas dostępu oraz modyfikacji, gdy plik istnieje

* Jakim poleceniem można zmienić prawa do pliku?

    `chmod`

* Z czego się buduje okienka w GUI?

    Z UI Toolkitów, np. Qt albo GTK+.

* Wymień 5 narzędzi do obejrzenia pliku tekstowego.

    `cat`, `more`, `less`, `head`, `tail`
* Czym jest _file descriptor_ 2?

    Jest to _stderr_, czyli standardowe wyjście błędów (standardowe wyjście diagnostyczne).

* Co robi polecenie `script`?

    `script` tworzy kopię wszystkiego, co jest wypisywane na ekran i zapisuje do pliku.

* Gdzie jest zapisana grupa główna użytkownika?

    W `/etc/passwd`.

* Jakiego polecenia można użyć, aby sprawdzić czym jest piąta sekcja manuala?

    `man man` i podejrzeć listę sekcji.

* Co zachowuje specjalne znaczenie w cudzysłowach (`"`)?

    Znak dolara (`$`), grawis (``` ` ```), backslach (`\`).

* Od kiedy istnieje świat (albo: kiedy miała początek era Uniksa)?

    1 stycznia 1970

* Jakim poleceniem wykonać odpowiednik windowsowego formatowania?

    `mkfs`

* Jakie polecenia służą do modyfikowania ACL-i?

    * `getfacl` - sprawdzanie ACL-i.
    * `setfacl` - ustawianie ACL-i.

* Jak sprawdzić wielkość katalogu wraz z zawartością?

    Używając polecenia `du`. Wykonując `du -sh` zobaczymy jedynie sumaryczną wielkość (bez pojedynczych plików) w ludzkich jednostkach ("human readable"). Przykład:
    ```
$ du -sh downloads/
22G	downloads/
$ 
```

* Wymień najważniejsze zmienne shella.

    * `$HOME`
    * `$PATH`
    * `$SHELL`
    * `$PS1`
