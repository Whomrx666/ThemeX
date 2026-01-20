# Fungsi login: reset total + tampilkan banner dengan lolcat + prompt aman
login() {
    # Hapus riwayat perintah sesi ini
    history -c 2>/dev/null || true

    # Bersihkan layar dan scrollback buffer
    clear
    printf '\e[3J'

    # Tampilkan banner melalui lolcat (lebih efisien: sekali pipa)
    if command -v lolcat >/dev/null 2>&1; then
        cat << 'EOF' | lolcat
	                     __---__				
	                   _-       _--______			
	              __--( /     \ )XXXXXXXXXXXXX_		
	            --XXX(   O   O  )XXXXXXXXXXXXXXX-		
	           /XXX(       U     )        XXXXXXX\		
	         /XXXXX(              )--_  XXXXXXXXXXX\	
	        /XXXXX/ (      O     )   XXXXXX   \XXXXX\	
	        XXXXX/   /            XXXXXX   \__ \XXXXX----	
	        XXXXXX__/          XXXXXX         \__----  -	
	---___  XXX__/          XXXXXX      \__         ---	
	  --  --__/   ___/\  XXXXXX            /  ___---=	
	    -_    ___/    XXXXXX              "--- XXXXXX	
	      --\/XXX\ XXXXXX                      /XXXXX	
	        \XXXXXXXXX                        /XXXXX/	
	         \XXXXXX                        _/XXXXX/	
	           \XXXXX--__/              __-- XXXX/		
	            --XXXXXXX---------------  XXXXX--		
	               \XXXXXXXXXXXXXXXXXXXXXXXXXX-		
	                 --XXXXXXXXXXXXXXXXXXX--			
EOF
    else
        # Fallback jika lolcat tidak terinstal
        cat << 'EOF'
	                     __---__				
	                   _-       _--______			
	              __--( /     \ )XXXXXXXXXXXXX_		
	            --XXX(   O   O  )XXXXXXXXXXXXXXX-		
	           /XXX(       U     )        XXXXXXX\		
	         /XXXXX(              )--_  XXXXXXXXXXX\	
	        /XXXXX/ (      O     )   XXXXXX   \XXXXX\	
	        XXXXX/   /            XXXXXX   \__ \XXXXX----	
	        XXXXXX__/          XXXXXX         \__----  -	
	---___  XXX__/          XXXXXX      \__         ---	
	  --  --__/   ___/\  XXXXXX            /  ___---=	
	    -_    ___/    XXXXXX              "--- XXXXXX	
	      --\/XXX\ XXXXXX                      /XXXXX	
	        \XXXXXXXXX                        /XXXXX/	
	         \XXXXXX                        _/XXXXX/	
	           \XXXXX--__/              __-- XXXX/		
	            --XXXXXXX---------------  XXXXX--		
	               \XXXXXXXXXXXXXXXXXXXXXXXXXX-		
	                 --XXXXXXXXXXXXXXXXXXX--			
EOF
    fi

    # Setel PS1 yang AMAN — tidak akan tertimpa saat mengetik
    export PS1='\[\033[93m\]H4CK3R\[\033[1;94m\][\[\033[1;96m\]\W\[\033[1;94m\]]\[\033[1;92m\]:\[\033[1;91m\]# \[\033[1;92m\]'
}

# Jalankan saat shell dimulai
clear
printf '\e[3J]'
login