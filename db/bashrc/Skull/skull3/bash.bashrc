# Fungsi login: reset total + tampilkan banner merah + prompt aman
login() {
    # Hapus riwayat perintah sesi ini
    history -c 2>/dev/null || true

    # Bersihkan layar dan scrollback buffer
    clear
    printf '\e[3J'

    # Tampilkan banner dengan warna ANSI 256: 196 = merah cerah (fire/red alert)
    echo -e '\e[38;5;196m'
    cat << 'EOF'
	          .                                                      .
	        .n                   .                 .                  n.
	  .   .dP                  dP                   9b                 9b.    .
	 4    qXb         .       dX                     Xb       .        dXp     t
	dX.    9Xb      .dXb    __                         __    dXb.     dXP     .Xb
	9XXb._       _.dXXXXb dXXXXbo.                 .odXXXXb dXXXXb._       _.dXXP
	 9XXXXXXXXXXXXXXXXXXXVXXXXXXXXOo.           .oOXXXXXXXXVXXXXXXXXXXXXXXXXXXXP
	  `9XXXXXXXXXXXXXXXXXXXXX'~   ~`OOO8b   d8OOO'~   ~`XXXXXXXXXXXXXXXXXXXXXP'
	    `9XXXXXXXXXXXP' `9XX'   DIE    `98v8P'  HUMAN   `XXP' `9XXXXXXXXXXXP'
~~~~~~~       9X.          .db|db.          .XP       ~~~~~~~
	                        )b.  .dbo.dP'`v'`9b.odb.  .dX(
	                      ,dXXXXXXXXXXXb     dXXXXXXXXXXXb.
	                     dXXXXXXXXXXXP'   .   `9XXXXXXXXXXXb
	                    dXXXXXXXXXXXXb   d|b   dXXXXXXXXXXXXb
	                    9XXb'   `XXXXXb.dX|Xb.dXXXXX'   `dXXP
	                     `'      9XXXXXX(   )XXXXXXP      `'
	                              XXXX X.`v'.X XXXX
	                              XP^X'`b   d'`X^XX
	                              X. 9  `   '  P )X
	                              `b  `       '  d'
	                               `             '
EOF
    echo -e '\e[0m'  # Reset ke warna default

    # Setel PS1 yang AMAN — tidak akan tertimpa saat mengetik
    export PS1='\[\033[93m\]H4CK3R\[\033[1;94m\][\[\033[1;96m\]\W\[\033[1;94m\]]\[\033[1;92m\]:\[\033[1;91m\]# \[\033[1;92m\]'
}

# Jalankan saat shell dimulai
clear
printf '\e[3J]'
login