# Fungsi login: reset total + tampilkan banner 8888 dengan lolcat + prompt aman
login() {
    # Hapus riwayat perintah sesi ini
    history -c 2>/dev/null || true

    # Bersihkan layar dan scrollback buffer
    clear
    printf '\e[3J'

    # Tampilkan banner melalui lolcat (lebih efisien: sekali pipa)
    if command -v lolcat >/dev/null 2>&1; then
        cat << 'EOF' | lolcat
	               ,,ggddY888Ybbgg,,			
	          ,agd8""`   .d8888888888bga,			
	       ,gdP""`     .d88888888888888888g,		
	     ,dP"        ,d888888888888888888888b,		
	   ,dP"         ,8888888888888888888888888b,		
	  ,8"          ,8888888P"""88888888888888888,		
	 ,8`           I888888I    )88888888888888888,		
	,8`            `8888888booo8888888888888888888,		
	d`              `88888888888888888888888888888b		
	8                `"8888888888888888888888888888		
	8                  `"88888888888888888888888888		
	8                      `"8888888888888888888888		
	Y,                        `8888888888888888888P		
	`8,                         `88888888888888888"		
	 `8,              .oo.       `888888888888888"		
	  `8a             8888        88888888888888"		
	   `Yba           `""`       ,888888888888P"		
	     "Yba                   ,88888888888"		
	       `"Yba,             ,8888888888P"`		
	          `"Y8baa,      ,d88888888P"`			
	               ``""YYba8888P888""			
EOF
    else
        # Fallback jika lolcat tidak terinstal
        cat << 'EOF'
	               ,,ggddY888Ybbgg,,			
	          ,agd8""`   .d8888888888bga,			
	       ,gdP""`     .d88888888888888888g,		
	     ,dP"        ,d888888888888888888888b,		
	   ,dP"         ,8888888888888888888888888b,		
	  ,8"          ,8888888P"""88888888888888888,		
	 ,8`           I888888I    )88888888888888888,		
	,8`            `8888888booo8888888888888888888,		
	d`              `88888888888888888888888888888b		
	8                `"8888888888888888888888888888		
	8                  `"88888888888888888888888888		
	8                      `"8888888888888888888888		
	Y,                        `8888888888888888888P		
	`8,                         `88888888888888888"		
	 `8,              .oo.       `888888888888888"		
	  `8a             8888        88888888888888"		
	   `Yba           `""`       ,888888888888P"		
	     "Yba                   ,88888888888"		
	       `"Yba,             ,8888888888P"`		
	          `"Y8baa,      ,d88888888P"`			
	               ``""YYba8888P888""			
EOF
    fi

    # Setel PS1 yang AMAN — tidak akan tertimpa saat mengetik
    export PS1='\[\033[93m\]H4CK3R\[\033[1;94m\][\[\033[1;96m\]\W\[\033[1;94m\]]\[\033[1;92m\]:\[\033[1;91m\]# \[\033[1;92m\]'
}

# Jalankan saat shell dimulai
clear
printf '\e[3J]'
login