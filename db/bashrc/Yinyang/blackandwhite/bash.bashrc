# Fungsi login: reset total + tampilkan banner hijau zaitun + prompt aman
login() {
    # Hapus riwayat perintah sesi ini
    history -c 2>/dev/null || true

    # Bersihkan layar dan scrollback buffer
    clear
    printf '\e[3J'

    # Tampilkan banner dengan warna ANSI 256: 102 = hijau zaitun/abu-abu kehijauan
    echo -e '\e[38;5;102m'
    echo '	               ,,ggddY888Ybbgg,,			'
    echo '	          ,agd8""`   .d8888888888bga,			'
    echo '	       ,gdP""`     .d88888888888888888g,		'
    echo '	     ,dP"        ,d888888888888888888888b,		'
    echo '	   ,dP"         ,8888888888888888888888888b,		'
    echo '	  ,8"          ,8888888P"""88888888888888888,		'
    echo '	 ,8`           I888888I    )88888888888888888,		'
    echo '	,8`            `8888888booo8888888888888888888,		'
    echo '	d`              `88888888888888888888888888888b		'
    echo '	8                `"8888888888888888888888888888		'
    echo '	8                  `"88888888888888888888888888		'
    echo '	8                      `"8888888888888888888888		'
    echo '	Y,                        `8888888888888888888P		'
    echo '	`8,                         `88888888888888888"		'
    echo '	 `8,              .oo.       `888888888888888"		'
    echo '	  `8a             8888        88888888888888"		'
    echo '	   `Yba           `""`       ,888888888888P"		'
    echo '	     "Yba                   ,88888888888"		'
    echo '	       `"Yba,             ,8888888888P"`		'
    echo '	          `"Y8baa,      ,d88888888P"`			'
    echo '	               ``""YYba8888P888""			'
    echo -e '\e[0m'

    # Setel PS1 yang AMAN — tidak akan tertimpa saat mengetik
    export PS1='\[\033[93m\]H4CK3R\[\033[1;94m\][\[\033[1;96m\]\W\[\033[1;94m\]]\[\033[1;92m\]:\[\033[1;91m\]# \[\033[1;92m\]'
}

# Jalankan saat shell dimulai
clear
printf '\e[3J]'
login