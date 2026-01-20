# Fungsi login: reset total + tampilkan banner hijau + prompt aman
login() {
    # Hapus riwayat perintah sesi ini
    history -c 2>/dev/null || true

    # Bersihkan layar dan scrollback buffer
    clear
    printf '\e[3J'

    # Tampilkan banner dengan warna ANSI 256: 142 = hijau lime/cerah (seperti lumut digital)
    echo -e '\e[38;5;142m'
    cat << 'EOF'
                                                                _
                                                              _( (~\
       _ _                        /                          ( \> > \
   -/~/ / ~\                     :;                \       _  > /(~\/
  || | | /\ ;\                   |l      _____     |;     ( \/    > >
  _\\)\)\)/ ;;;                  `8o __-~     ~\   d|      \      //
 ///(())(__/~;;\                  "88p;.  -. _\_;.oP        (_._/ /
(((__   __ \\   \                  `>,% (\  (\./)8"         ;:'  i
)))--`.'-- (( ;,8 \               ,;%%%:  ./V^^^V'          ;.   ;.
((\   |   /)) .,88  `: ..,,;;;;,-::::::'_::\   ||\         ;[8:   ;
 )|  ~-~  |(|(888; ..``'::::8888oooooo.  :\`^^^/,,~--._    |88::  |
 |\ -===- /|  \8;; ``:.      oo.8888888888:`((( o.ooo8888Oo;:;:'  |
 |_~-___-~_|   `-\.   `        `o`88888888b` )) 888b88888P""'     ;
 ; ~~~~;~~         "`--_`.       b`888888888;(.,"888b888"  ..::;-'
   ;      ;              ~"-....  b`8888888:::::.`8888. .:;;;'
      ;    ;                 `:::. `:::OOO:::::::.`OO' ;;;''
 :       ;                     `.      "``::::::''    .'
    ;                           `.   \_              /
  ;       ;                       +:   ~~--  `:'  -';
                                   `:         : .::/
      ;                            ;;+_  :::. :..;;;
                                   ;;;;;;,;;;;;;;;,;
EOF
    echo -e '\e[0m'  # Reset ke warna default

    # Setel PS1 yang AMAN — tidak akan tertimpa saat mengetik
    export PS1='\[\033[93m\]H4CK3R\[\033[1;94m\][\[\033[1;96m\]\W\[\033[1;94m\]]\[\033[1;92m\]:\[\033[1;91m\]# \[\033[1;92m\]'
}

# Jalankan saat shell dimulai
clear
printf '\e[3J]'
login