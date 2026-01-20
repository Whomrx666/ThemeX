# Fungsi login: reset total seperti membuka Termux baru
login() {
    # Hapus riwayat perintah sesi ini (aman di Bash & Zsh)
    history -c 2>/dev/null || true

    # Bersihkan layar dan scrollback buffer
    clear
    printf '\e[3J'  # Clear terminal scrollback (Termux compatible)

    # Tampilkan banner dengan warna pink-ungu (162 = vibrant magenta/pink)
    echo -e '\e[38;5;162m'
    cat << 'EOF'
                      _..-'(                       )`-.._
                   ./'. '||\\.       (\_/)       .//||` .`\.
                ./'.|'.'||||\\|..    )O O(    ..|//||||`.`|.`\.
             ./'..|'.|| |||||\`````` '`"'` ''''''/||||| ||.`|..`\.
           ./'.||'.|||| ||||||||||||.     .|||||||||||| |||||.`||.`\.
          /'|||'.|||||| ||||||||||||{     }|||||||||||| ||||||.`|||`\
         '.|||'.||||||| ||||||||||||{     }|||||||||||| |||||||.`|||.`
        '.||| ||||||||| |/'   ``\||``     ''||/''   `\| ||||||||| |||.`
        |/' \./'     `\./         \!|\   /|!/         \./'     `\./ `\|
        V    V         V          }' `\ /' `{          V         V    V
        `    `         `               V               '
EOF
    echo -e '\e[0m'  # Reset ke warna default

    # ✅ PS1 YANG DIPERBAIKI: semua kode ANSI dibungkus dengan \[ ... \]
    export PS1='\[\033[93m\]H4CK3R\[\033[1;94m\][\[\033[1;96m\]\W\[\033[1;94m\]]\[\033[1;92m\]:\[\033[1;91m\]# \[\033[1;92m\]'
}

# Jalankan sekali saat shell dimulai
clear
printf '\e[3J]'
login