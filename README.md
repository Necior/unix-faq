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
* Czym jest file descriptor 2?

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

* Wymień dwie główne linie Uniksów.

    * System V (SysV) - od AT&T Bell Labs
    * BSD (BSD Unix)

* Czym jest SUS?

    SUS (Single UNIX Specification) to odpowiednik POSIX-a; dokument definiujący jak powinien zachowywać się Unix. Zgodnosć z tym standardem umożliwia posługiwanie się nazwą Unix.

* Jakim poleceniem przygotować łatki (patche)?

    `diff`

* Jaki jest domyślny program rozruchowy (w Linuksie)?

    GNU GRUB (GRand Unified Bootloader)

* Jakim poleceniem wyświetlić aktualnie podmontowane zasoby (systemy plików)?

    `mount`

* W jakim pliku znajdziemy listę aktualnie podmontowanych zasobów (systemów plików)?

    `/etc/mtab`

* Które filesystemy są montowane przy starcie systemu?

    Te wylistowane w `/etc/fstab`.

* W jakim katalogu szukać plików manuala (manpage'ów)?

    `/usr/share/man/`

* Jakim poleceniem można wysłać sygnał do procesu?

    `kill`

* Czym "grzecznie" zabić proces?

    Poleceniem `kill` wysyłając SIGTERM (jest to domyślny sygnał polecenia `kill`).

* Jakim poleceniem można śledzić wywołania funkcji systemowych danego programu?

    `strace`

* Do czego służy katalog `/opt/`?

    Opcjonalne (dodatkowe) oprogramowanie, które nie jest dostarczane wraz z dystrybucją (tj. nie ma tego oprogramowania w repozytoriach dystrybucji).

* Jakie polecenie jest odpowiednikiem windowsowego `SCANDISK` (obecnie `CHKDSK`)?

    `fsck`

* Wymień 2 sygnały, których proces nie może zignorować.

    SIGKILL oraz SIGSTOP.

* Jaką funkcją systemową inicjalizuje się proces poprzez plik programu?

    `exec()`

* Jakim poleceniem sprawdzić, z jakiego Uniksa (np. FreeBSD czy Linux) korzystam?

    Za pomocą polecenia `uname`. Przykład:
    ```
$ uname
Linux
$
```

* Do czego służy plik `/etc/profile`?

    Jest to plik, który jest wykonywany przez shell po zalogowaniu użytkownika. (Dotyczy `sh` i potomków, m.in. `bash`, `zsh`).

* Jakim poleceniem sprawdzić, ile mamy miejsca na dysku?

    Poleceniem `df`. Przykład (flaga `-h` pokazuje w ludzkich jednostkach ("human readable")):
    ```
$ df -h
Filesystem      Size  Used Avail Use% Mounted on
/dev/sda6        92G   42G   46G  48% /
```

* Czym jest hard link? Czym jest symlink (symbolic link)?

    Hard link to referenacja, która wskazuje na plik (wszystkie takie referencje mają taki sam i-węzęł).
    
    Symlink to referencja, która wskazuje na inny plik za pomocą jego nazwy.
    
    Przykład, lekko zreformatowany dla jasności przekazu (`-i` wyświetla i-węzły):
    ```
$ touch plik
$ ls -i
5253482 plik
$ ln plik hard_link
$ ls -i
5253482 hard_link
5253482 plik
$ ln -s plik symlink
$ ls -i
5253482 hard_link
5253482 plik
5253486 symlink -> plik
```

* Do czego służy polecenie `pwd`?

    `pwd` ("print name of current/working directory") wypisuje nazwę bieżącego katalogu.
    ```
$ cd /var/log/
$ pwd
/var/log
```

* Jakim poleceniem wyświetlić informacje z i-węzła?

    `stat`

* Jaki jest domyślny system plików w Linuksach?

    Obecnie najczęściej jest to ext3 lub ext4.

* Jakiego polecenia można użyć, aby stworzyć bootowalnego pendrive'a?

    `dd`

* W jakim pliku jest zapisana grupa główna użytkownika?

    `/etc/passwd`

* Do czego służy grupa główna użytkownika?

    * Jest domyślną grupą pliku stworzonego przez danego użytkownika.
    * Jest domyślną grupą procesu uruchomionego przez użytkownika.

* W jakim katalogu należy szukać ikon?

    W `/usr/share/`. `/usr/share/pixmaps/` zawiera ikony aplikacji, zaś `/usr/share/icons/` ikony motywów graficznego interfejsu.

* Dla jakiego katalogu często się stosuje sticky bit?

    `/tmp/`

* Jakim poleceniem można wylistować otwarte pliki?

    `lsof`

* Jaki dokument jest odpowiednikiem POSIX-a?

    SUS (Single UNIX Specification).

* Jaki znak jest znakiem komentarza w bashu?

    Kratka (`#`).
