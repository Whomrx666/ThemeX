# Fungsi login: reset total seperti membuka Termux baru
login() {
    # Hapus history perintah sesi ini
    history -c 2>/dev/null || true

    # Bersihkan layar & scrollback buffer
    clear
    printf '\e[3J'  # Clear scrollback (Termux support)

    # Tampilkan banner dengan warna kustom (kuning kehijauan / cyberpunk)
    echo -e '\e[38;5;58m'
    cat << 'EOF'
               \.   \.      __,-"-.__      ./   ./
           \.   \`.  \`.-'"" _,="=._ ""`-.'/  .'/   ./
            \`.  \_`-''      _,="=._      ``-'_/  .'/
             \ `-',-._   _.  _,="=._  ,_   _.-,`-' /
          \. /`,-',-._"""  \ _,="=._ /  """_.-,`-,'\ ./
           \`-'  /    `-._  "       "  _.-'    \  `-'/
           /)   (         \    ,-.    /         )   (\
        ,-'"     `-.       \  /   \  /       .-'     "`-,
      ,'_._         `-.____/ /  _  \ \____.-'         _._`,
     /,'   `.                \_/ \_/                .'   `,\
    /'       )                  _                  (       `\
            /   _,-'"`-.  ,++|T|||T|++.  .-'"`-,_   \
           / ,-'        \/|`|`|`|'|'|'|\/        `-, \
          /,'             | | | | | | |             `,\
         /'               ` | | | | | '               `\
                            ` | | | '
                              ` | '
EOF
    echo -e '\e[0m'

    # ✅ PS1 YANG DIPERBAIKI: semua escape sequence dibungkus dengan \[ ... \]
    export PS1='\[\033[93m\]H4CK3R\[\033[1;94m\][\[\033[1;96m\]\W\[\033[1;94m\]]\[\033[1;92m\]:\[\033[1;91m\]# \[\033[1;92m\]'
}

# Jalankan sekali saat shell dimulai
clear
printf '\e[3J'
login