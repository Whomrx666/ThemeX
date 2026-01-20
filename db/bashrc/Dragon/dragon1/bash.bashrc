# Fungsi login: reset total seperti membuka Termux baru — dengan banner ungu neon
login() {
    # Hapus riwayat perintah sesi ini (aman di Bash & Zsh)
    history -c 2>/dev/null || true

    # Bersihkan layar dan scrollback buffer
    clear
    printf '\e[3J'  # Clear scrollback — penting agar tidak bisa scroll ke atas

    # Tampilkan banner dengan warna ungu neon (ANSI 256 color 93)
    echo -e '\e[38;5;93m'
    cat << 'EOF'
                                                 ,--,  ,.-.             
                     ,                   \       '-,-`,'-.' | ._         
                    /|         \    ,    |\         }  )/  / `-,',       
                   | ;         |\  /|    | |       /  \|  |/`  ,`       
                   | |       ,.`  `,` `, | |  _,...(   (      .',        
                   \  \  __ ,-` `  ,  , `/ |,'      Y     (   /_L\       
                    \  \_\,``,   ` , ,  /  |         )         _,/       
                     \  '  `  ,_ _`_,-,<._.<        /         /          
                      ', `>.,`  `  `   ,., |_      |         /           
                        \/`  `,   `   ,`  | /__,.-`    _,   `\           
                    -,-..\  _  \  `  /  ,  / `._) _,-\`       \          
                     \_,,.) /\    ` /  / ) (-,, ``    ,        |         
                    ,` )  | \_\       '-`  |  `(               \         
                   /  /```(   , --, ,' \   |`<`    ,            |        
                  /  /_,--`\   <\  V /> ,` )<_/)  | \      _____)        
           ,-, ,`   `   (_,\ \    |   /) / __/  /   `----`               
           (-, \           ) \ ('_.-._)/ /,`    /                        
           | /  `          `/ \\ V   V, /`     /                         
        ,--\(        ,     <_/`\\     ||      /                          
       (   ,``-     \/|         \-A.A-`|     /                           
      ,>,_ )_,..(    )\          -,,_-`  _--`                            
     (_ \|`   _,/_  /  \_            ,--`                                
      \( `   <.,../`     `-.._   _,-`                                    
EOF
    echo -e '\e[0m'  # Reset ke warna default

    # ✅ PS1 YANG DIPERBAIKI: semua kode ANSI dibungkus dengan \[ ... \]
    export PS1='\[\033[93m\]H4CK3R\[\033[1;94m\][\[\033[1;96m\]\W\[\033[1;94m\]]\[\033[1;92m\]:\[\033[1;91m\]# \[\033[1;92m\]'
}

# Jalankan sekali saat shell dimulai
clear
printf '\e[3J]'
login