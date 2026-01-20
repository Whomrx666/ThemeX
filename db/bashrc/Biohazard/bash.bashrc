# Fungsi login: reset total seperti membuka Termux baru — dengan banner hijau neon
login() {
    # Hapus riwayat perintah sesi ini (aman di Bash & Zsh)
    history -c 2>/dev/null || true

    # Bersihkan layar dan scrollback buffer
    clear
    printf '\e[3J'  # Clear scrollback — penting agar tidak bisa scroll ke atas

    # Tampilkan banner dengan warna hijau neon (ANSI 256 color 154)
    echo -e '\e[38;5;154m'
    cat << 'EOF'
                         __    _                                   
                    _wr""        "-q__                             
                 _dP                 9m_     
               _#P                     9#_                         
              d#@                       9#m                        
             d##                         ###                       
            J###                         ###L                      
            {###K                       J###K                      
            ]####K      ___aaa___      J####F                      
        __gmM######_  w#P""   ""9#m  _d#####Mmw__                  
     _g##############mZ_         __g##############m_               
   _d####M@PPPP@@M#######Mmp gm#########@@PPP9@M####m_             
  a###""          ,Z"#####@" '######"\g          ""M##m            
 J#@"             0L  "*##     ##@"  J#              *#K           
 #"               `#    "_gmwgm_~    dF               `#_          
7F                 "#_   ]#####F   _dK                 JE          
]                    *m__ ##### __g@"                   F          
                       "PJ#####LP"                                 
 `                       0######_                      '           
                       _0########_                                   
     .               _d#####^#####m__              ,              
      "*w_________am#####P"   ~9#####mw_________w*"                  
          ""9@#####@M""           ""P@#####@M""                     
EOF
    echo -e '\e[0m'  # Reset ke warna default

    # ✅ PS1 YANG DIPERBAIKI: semua kode ANSI dibungkus dengan \[ ... \]
    export PS1='\[\033[93m\]H4CK3R\[\033[1;94m\][\[\033[1;96m\]\W\[\033[1;94m\]]\[\033[1;92m\]:\[\033[1;91m\]# \[\033[1;92m\]'
}

# Jalankan sekali saat shell dimulai
clear
printf '\e[3J]'
login