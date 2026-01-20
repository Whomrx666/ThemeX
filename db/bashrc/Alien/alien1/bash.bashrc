# Fungsi login: reset total seperti sesi Termux baru
login() {
    # Hapus seluruh riwayat perintah saat ini (opsional)
    history -c 2>/dev/null || true

    # Bersihkan layar dan scrollback buffer
    clear
    printf '\e[3J'

    # Tampilkan banner ASCII art dengan warna neon cyberpunk (biru muda + merah)
    echo -e "\e[38;5;45m.     .       .  .   . .   .  . .    \e[38;5;196m+  .        \e[0m                   "
    echo -e "\e[38;5;45m  .     .  :     .    .. :. .___-----\e[38;5;196m----___.                        "
    echo -e "\e[38;5;45m    .   .  .   .    .  :.:. _\".^ .^ ^\e[38;5;196m.   .. :\"-_. .                  "
    echo -e "\e[38;5;45m    .  :       .  .  .:../:          \e[38;5;196m  . .^  :.:\.                   "
    echo -e "\e[38;5;45m        .   . :: +. :.:/: .   .    . \e[38;5;196m       . . .:\                  "
    echo -e "\e[38;5;45m .  :    .     . _ :::/:             \e[38;5;196m  .  ^ .  . .:\                 "
    echo -e "\e[38;5;45m  .. . .   . - : :.:./.               \e[38;5;196m         .  .:\                "
    echo -e "\e[38;5;45m  .      .     . :..|:               \e[38;5;196m     .  .  ^. .:|               "
    echo -e "\e[38;5;45m    .       . : : ..||        .      \e[38;5;196m          . . !:|               "
    echo -e "\e[38;5;45m  .     . . . ::. ::\(               \e[38;5;196m            . :)/               "
    echo -e "\e[38;5;45m .   .     : . : .:.|. ######        \e[38;5;196m      .#######::|               "
    echo -e "\e[38;5;45m  :.. .  :-  : .:  ::|.#######       \e[38;5;196m    ..########:|                "
    echo -e "\e[38;5;45m .  .  .  ..  .  .. :\ ########      \e[38;5;196m    :######## :/                "
    echo -e "\e[38;5;45m  .        .+ :: : -.:\ ########     \e[38;5;196m  . ########.:/                 "
    echo -e "\e[38;5;45m    .  .+   . . . . :.:\. #######    \e[38;5;196m   #######..:/                  "
    echo -e "\e[38;5;45m      :: . . . . ::.:..:\           \e[38;5;196m.   .   ..:/                    "
    echo -e "\e[38;5;45m   .   .   .  .. :  -::::.\.       | \e[38;5;196m|     . .:/                     "
    echo -e "\e[38;5;45m      .  :  .  .  .-:.\":.::.\        \e[38;5;196m     ..:/                       "
    echo -e "\e[38;5;45m .      -.   . . . .: .:::.:.\.      \e[38;5;196m     .:/                        "
    echo -e "\e[38;5;45m.   .   .  :      : ....::_:..:\   __\e[38;5;196m_.  :/                          "
    echo -e "\e[38;5;45m   .   .  .  .:. .. .  .: :.:.:\    \e[38;5;196m   :/                           "
    echo -e "\e[38;5;45m     +   .   .   : . ::. :.:. .:.|\  \e[38;5;196m.:/|                            "
    echo -e "\e[38;5;45m     .         +   .  .  ...:: ..|  -\e[38;5;196m-.:|                            "
    echo -e "\e[38;5;45m.      . . .   .  .  . ... :..:..\"(  \e[38;5;196m..)\"                            "
    echo -e "\e[38;5;45m .   .       .      :  .   .: ::/  . \e[38;5;196m .::\                           "

    # ✅ PS1 yang DIPERBAIKI: semua kode ANSI dibungkus dengan \[...\]
    export PS1='\[\033[93m\]H4CK3R\[\033[1;94m\][\[\033[1;96m\]\W\[\033[1;94m\]]\[\033[1;92m\]:\[\033[1;91m\]# \[\033[1;92m\]'

    # Opsional: pastikan terminal dalam mode UTF-8 (aman untuk Termux & Linux)
    [ -n "$LANG" ] || export LANG=en_US.UTF-8
}

# Jalankan sekali saat sesi dimulai
clear
printf '\e[3J'
login