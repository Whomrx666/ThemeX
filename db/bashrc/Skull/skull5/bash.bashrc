# Fungsi login: reset total + tampilkan banner warna campur + prompt aman
login() {
    # Hapus riwayat perintah sesi ini
    history -c 2>/dev/null || true

    # Bersihkan layar dan scrollback buffer
    clear
    printf '\e[3J'

    # Tampilkan banner dengan warna ungu gelap (55) dan hijau cerah (92)
    echo -e '	               \e[38;5;55m ..:::::::::..\e[0m			'
    echo -e '	          \e[38;5;55m ..:::\e[92maad8888888baa\e[38;5;55m:::..\e[0m		'
    echo -e '	        \e[38;5;55m.::::\e[92md\e[38;5;55m:\e[92m?88888888888?\e[38;5;55m::\e[92m8b\e[38;5;55m::::.\e[0m		'
    echo -e '	      \e[38;5;55m.:::\e[92md8888\e[38;5;55m:\e[92m?88888888??a888888b\e[38;5;55m:::.\e[0m		'
    echo -e '	   \e[38;5;55m .:::\e[92md8888888a8888888aa8888888888b\e[38;5;55m:::.\e[0m	'
    echo -e '	   \e[38;5;55m::::\e[92mdP\e[38;5;55m::::::::\e[92m88888888888\e[38;5;55m::::::::\e[92mYb\e[38;5;55m::::\e[0m	'
    echo -e '	  \e[38;5;55m::::\e[92mdP\e[38;5;55m:::::::::\e[92mY888888888P\e[38;5;55m:::::::::\e[92mYb\e[38;5;55m::::\e[0m	'
    echo -e '	\e[38;5;55m ::::\e[92md8\e[38;5;55m:::::::::::\e[92mY8888888P\e[38;5;55m:::::::::::\e[92m8b\e[38;5;55m::::\e[0m	'
    echo -e '	\e[38;5;55m.::::\e[92m88\e[38;5;55m::::::::::::\e[92mY88888P\e[38;5;55m::::::::::::\e[92m88\e[38;5;55m::::.\e[0m	'
    echo -e '	\e[38;5;55m:::::\e[92mY8baaaaaaaaaa88P\e[38;5;55m:\e[92mT\e[38;5;55m:\e[92mY88aaaaaaaaaad8P\e[38;5;55m:::::\e[0m	'
    echo -e '	\e[38;5;55m:::::::\e[92mY88888888888P\e[38;5;55m::\e[92m|\e[38;5;55m::\e[92mY88888888888P\e[38;5;55m:::::::\e[0m	'
    echo -e '	\e[38;5;55m::::::::::::::::\e[92m888\e[38;5;55m:::\e[92m|\e[38;5;55m:::\e[92m888\e[38;5;55m::::::::::::::::\e[0m	'
    echo -e '	\e[38;5;55m`:::::::::::::::\e[92m8888888888888b\e[38;5;55m::::::::::::::`\e[0m	'
    echo -e '	 \e[38;5;55m:::::::::::::::\e[92m88888888888888\e[38;5;55m::::::::::::::\e[0m	'
    echo -e '	  \e[38;5;55m:::::::::::::\e[92md88888888888888\e[38;5;55m:::::::::::::\e[0m	'
    echo -e '	   \e[38;5;55m::::::::::::\e[92m88\e[38;5;55m::\e[92m88\e[38;5;55m::\e[92m88\e[38;5;55m:::\e[92m88\e[38;5;55m::::::::::::\e[0m	'
    echo -e '	    \e[38;5;55m`::::::::::\e[92m88\e[38;5;55m::\e[92m88\e[38;5;55m::\e[92m88\e[38;5;55m:::\e[92m88\e[38;5;55m::::::::::`\e[0m	'
    echo -e '	      \e[38;5;55m`::::::::\e[92m88\e[38;5;55m::\e[92m88\e[38;5;55m::\e[92mP\e[38;5;55m::::\e[92m88\e[38;5;55m::::::::`\e[0m		'
    echo -e '	        \e[38;5;55m`::::::\e[92m88\e[38;5;55m::\e[92m88\e[38;5;55m:::::::\e[92m88\e[38;5;55m::::::`\e[0m		'
    echo -e '	           \e[38;5;55m``:::::::::::::::::::::`\e[0m		'
    echo -e '	               \e[38;5;55m``:::::::::::::``\e[0m		'

    # Setel PS1 yang AMAN — tidak akan tertimpa saat mengetik
    export PS1='\[\033[93m\]H4CK3R\[\033[1;94m\][\[\033[1;96m\]\W\[\033[1;94m\]]\[\033[1;92m\]:\[\033[1;91m\]# \[\033[1;92m\]'
}

# Jalankan saat shell dimulai
clear
printf '\e[3J]'
login