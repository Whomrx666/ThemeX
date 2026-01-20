# Fungsi login: reset total + tampilkan banner warna + prompt aman
login() {
    # Hapus riwayat perintah sesi ini
    history -c 2>/dev/null || true

    # Bersihkan layar dan scrollback buffer
    clear
    printf '\e[3J'

    # Tampilkan banner dengan warna ANSI 256
    echo -e '	              \e[38;5;57m...\e[0m                            	 '
    echo -e '	             \e[38;5;57m;::::;\e[0m                                 '
    echo -e '	           \e[38;5;57m;::::; :;\e[0m                          	 '
    echo -e '	         \e[38;5;57m;:::::;   :;\e[0m                        	 '
    echo -e '	        \e[38;5;57m;:::::;     ;.\e[0m                       	 '
    echo -e '	       \e[38;5;57m,:::::;       ;\e[0m           \e[38;5;15mOOO\ \e[0m         	 '
    echo -e '	       \e[38;5;57m::::::;       ;\e[0m          \e[38;5;15mOOOOO\ \e[0m        	 '
    echo -e '	       \e[38;5;57m;:::::;       ;\e[0m         \e[38;5;15mOOOOOOOO\e[0m       	 '
    echo -e '	      \e[38;5;57m,;::::::;     ;;\e[0m         \e[38;5;40m/\e[0m \e[38;5;15mOOOOOOO\e[0m      	 '
    echo -e '	    \e[38;5;57m;:::::::::`. ,,,;.\e[0m        \e[38;5;40m/  / \e[38;5;196mDOO\e[0m\e[38;5;15mOOOO\e[0m    	 '
    echo -e '	  \e[38;5;57m.;;:::::::::::::::::;,\e[0m     \e[38;5;40m/  /     \e[38;5;196mDO\e[0m\e[38;5;15mOOO\e[0m   	 '
    echo -e '	 \e[38;5;57m,::::::;::::::;;;;::::;,\e[0m   \e[38;5;40m/  /        \e[38;5;196mDO\e[0m\e[38;5;15mOO \e[0m 	 '
    echo -e '	\e[38;5;57m;`::::::`:::::::;;;:::::,\e[0m \e[38;5;10m#\e[0m\e[38;5;40m/  /          \e[38;5;196mDO\e[0m\e[38;5;15mOO\e[0m 	 '
    echo -e '	\e[38;5;57m:`:::::::`;::::::;;::: ;::\e[0m\e[38;5;10m#\e[0m  \e[38;5;40m/            \e[38;5;196mDO\e[0m\e[38;5;15mOO\e[0m	 '
    echo -e '	\e[38;5;57m::`:::::::`;:::::::: ;::::\e[0m\e[38;5;10m#\e[0m \e[38;5;40m/              \e[38;5;196mDO\e[0m\e[38;5;15mO\e[0m   '
    echo -e '	\e[38;5;57m`:`:::::::`;:::::: ;::::::\e[0m\e[38;5;10m#\e[0m\e[38;5;40m/               \e[38;5;196mDO\e[0m\e[38;5;15mO\e[0m	 '
    echo -e '	 \e[38;5;57m:::`:::::::`;; ;:::::::::\e[0m\e[38;5;10m##\e[0m                \e[38;5;196mO\e[0m\e[38;5;15mO\e[0m	 '
    echo -e '	 \e[38;5;57m::::`:::::::`;::::::::;:::\e[0m\e[38;5;10m#\e[0m                \e[38;5;196mO\e[0m\e[38;5;15mO\e[0m	 '
    echo -e '	 \e[38;5;57m`:::::`::::::::::::;``:;::\e[0m\e[38;5;10m#\e[0m                \e[38;5;196mO    '
    echo -e '	  \e[38;5;57m`:::::`:::::::::`\e[0m \e[38;5;40m/  / \e[38;5;57m`:\e[0m\e[38;5;10m#\e[0m                     '
    echo -e '	   \e[38;5;57m::::::`:::::;`\e[0m  \e[38;5;40m/  /   \e[38;5;57m`\e[0m\e[38;5;10m#\e[0m              	 '

    # Setel PS1 yang AMAN — tidak akan tertimpa saat mengetik
    export PS1='\[\033[93m\]H4CK3R\[\033[1;94m\][\[\033[1;96m\]\W\[\033[1;94m\]]\[\033[1;92m\]:\[\033[1;91m\]# \[\033[1;92m\]'
}

# Jalankan saat shell dimulai
clear
printf '\e[3J]'
login