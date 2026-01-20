# Fungsi login: reset total + tampilkan banner merah muda + prompt aman
login() {
    # Hapus riwayat perintah sesi ini
    history -c 2>/dev/null || true

    # Bersihkan layar dan scrollback buffer
    clear
    printf '\e[3J'

    # Tampilkan banner dengan warna ANSI 256: 163 = pink/ungu kemerahan (soft red)
    echo -e '\e[38;5;163m'
    cat << 'EOF'
	           eed*"""""""""**be,
	        .d"                  "b.
	      .d                        b.
	    ."         ..eeeeee..         ".
	   P        z$*"        "*e.        9.
	  A       d"                "b       A
	 J       J    .e*""""""%c     A       L
	A       A    d"          $     L      A
	#       %   d      d**y  'L    %      #
	#       %   $     $ ,, Y  .$   %      #       _ _ 
	#       %   $     *  """   F   %      #      (@)@)
	#       V    4.    $.   .e"    Y      #        % %
	#        $    *.    """"     .Y      V         $ $
	#        'b     "b.      ..e*       Y         .eeee
	V         '$      ""eeee""        eP         A     %
	 Y         eb                ..d*"         _#    O %
	 I    _e%*""""*$ee......ee$*"eeeeeeeezee$**"       $
	  V ,"                                            B
	  J'                                        _,e=""
	.'#######################################DWB''
EOF
    echo -e '\e[0m'  # Reset ke warna default

    # Setel PS1 yang AMAN — tidak akan tertimpa saat mengetik
    export PS1='\[\033[93m\]H4CK3R\[\033[1;94m\][\[\033[1;96m\]\W\[\033[1;94m\]]\[\033[1;92m\]:\[\033[1;91m\]# \[\033[1;92m\]'
}

# Jalankan saat shell dimulai
clear
printf '\e[3J]'
login