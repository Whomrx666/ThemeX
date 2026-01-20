# Fungsi login: reset total + tampilkan banner warna + prompt aman
login() {
    # Hapus riwayat perintah sesi ini
    history -c 2>/dev/null || true

    # Bersihkan layar dan scrollback buffer
    clear
    printf '\e[3J'

    # Tampilkan banner dengan warna ANSI 256: 165 = pink/magenta cerah
    echo -e '\e[38;5;165m'
    cat << 'EOF'
            .-"""-.
           /       \
          |,.  ,-.  |
          |()L( ()| |
          |,'  `".| |
          |.___.',| `
         .j `--"' `  `.
        / '        '   \
       / /          `   `.
      / /            `    .
     / /              l   |
    . ,               |   |
    ,"`.             .|   |
 _.'   ``.          | `..-'l
|       `.`,        |      `.
|         `.    __.j         )
|__        |--""___|      ,-'
   `"--...,+""""   `._,.-' 
EOF
    echo -e '\e[0m'  # Reset ke warna default

    # Setel PS1 yang AMAN — tidak akan tertimpa saat mengetik
    export PS1='\[\033[93m\]H4CK3R\[\033[1;94m\][\[\033[1;96m\]\W\[\033[1;94m\]]\[\033[1;92m\]:\[\033[1;91m\]# \[\033[1;92m\]'
}

# Jalankan saat shell dimulai
clear
printf '\e[3J]'
login