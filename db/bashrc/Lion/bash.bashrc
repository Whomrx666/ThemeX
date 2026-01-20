# Fungsi login: reset total + tampilkan banner oranye + prompt aman
login() {
    # Hapus riwayat perintah sesi ini
    history -c 2>/dev/null || true

    # Bersihkan layar dan scrollback buffer
    clear
    printf '\e[3J'

    # Tampilkan banner dengan warna oranye terang (ANSI 256 color 202)
    echo -e '\e[38;5;202m'
    cat << 'EOF'
                     ,.
                   ,_> `.   ,';
               ,-`'      `'   '`'._
            ,,-) ---._   |   .---''`-),.
          ,'      `.  \  ;  /   _,'     `,
       ,--' ____       \   '  ,'    ___  `-,
      _>   /--. `-.              .-'.--\   \__
     '-,  (    `.  `.,`~ \~'-. ,' ,'    )    _\
     _<    \     \ ,'  ') )   `. /     /    <,.
  ,-'   _,  \    ,'    ( /      `.    /        `-,
  `-.,-'     `.,'       `         `.,'  `\    ,-'
   ,'       _  /   ,,,      ,,,     \     `-. `-._
  /-,     ,'  ;   ' _ \    / _ `     ; `.     `(`-\
   /-,        ;    (o)      (o)      ;          `'`,
 ,~-'  ,-'    \     '        `      /     \      <_
 /-. ,'        \                   /       \     ,-'
   '`,     ,'   `-/             \-' `.      `-. <
    /_    /      /   (_     _)   \    \          `,
      `-._;  ,' |  .::.`-.-' :..  |       `-.    _\
        _/       \  `:: ,^. :.:' / `.        \,-'
      '`.   ,-'  /`-..-'-.-`-..-'\            `-.
        >_ /     ;  (\/( ' )\/)  ;     `-.    _<
        ,-'      `.  \`-^^^-'/  ,'        \ _<
         `-,  ,'   `. `"""""' ,'   `-.   <`'
           ')        `._.,,_.'        \ ,-'
            '._        '`'`'   \       <
               >   ,'       ,   `-.   <`'
                `,/          \      ,-`
                 `,   ,' |   /     /
                  '; /   ;        (
                   _)|   `       (
                   `')         .-'
                     <_   \   /
                       \   /\(
                        `;/  `
EOF
    echo -e '\e[0m'  # Reset ke warna default

    # Setel PS1 yang AMAN — tidak akan tertimpa saat mengetik
    # Catatan: Mengasumsikan "H4CK3R" hanya sekali (bukan "H4CK3RH4CK3R")
    export PS1='\[\033[93m\]H4CK3R\[\033[1;94m\][\[\033[1;96m\]\W\[\033[1;94m\]]\[\033[1;92m\]:\[\033[1;91m\]# \[\033[1;92m\]'
}

# Jalankan saat shell dimulai
clear
printf '\e[3J]'
login