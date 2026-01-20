# Fungsi login: reset total + tampilkan banner lolcat + prompt aman
login() {
    # Hapus riwayat perintah sesi ini
    history -c 2>/dev/null || true

    # Bersihkan layar dan scrollback buffer
    clear
    printf '\e[3J'

    # Tampilkan banner melalui lolcat (lebih efisien: sekali pipa)
    if command -v lolcat >/dev/null 2>&1; then
        cat << 'EOF' | lolcat
                         __________
                      .~#########%%;~.
                     /############%%;`\
                    /######/~\/~\%%;,;,\
                   |#######\    /;;;;.,.|
                   |#########\/%;;;;;.,.|
          XX       |##/~~\####%;;;/~~\;,|       XX
        XX..X      |#|  o  \##%;/  o  |.|      X..XX
      XX.....X     |##\____/##%;\____/.,|     X.....XX
 XXXXX.....XX      \#########/\;;;;;;,, /      XX.....XXXXX
X |......XX%,.@      \######/%;\;;;;, /      @#%,XX......| X
X |.....X  @#%,.@     |######%%;;;;,.|     @#%,.@  X.....| X
X  \...X     @#%,.@   |# # # % ; ; ;,|   @#%,.@     X.../  X
 X# \.X        @#%,.@                  @#%,.@        X./  #
  ### X          @#%,.@              @#%,.@          X   #
   ###X            @#%,.@          @#%,.@            X ##
    ###X             @#%,.@      @#%,.@             ###
      ###              @#%.,@  @#%,.@              ##
        #                @#%.@#%,.@                #
                           @#%,.@                  
                         @#%,.@  @@                
                          @@@  @@@ 
EOF
    else
        # Fallback jika lolcat tidak terinstal
        cat << 'EOF'
                         __________
                      .~#########%%;~.
                     /############%%;`\
                    /######/~\/~\%%;,;,\
                   |#######\    /;;;;.,.|
                   |#########\/%;;;;;.,.|
          XX       |##/~~\####%;;;/~~\;,|       XX
        XX..X      |#|  o  \##%;/  o  |.|      X..XX
      XX.....X     |##\____/##%;\____/.,|     X.....XX
 XXXXX.....XX      \#########/\;;;;;;,, /      XX.....XXXXX
X |......XX%,.@      \######/%;\;;;;, /      @#%,XX......| X
X |.....X  @#%,.@     |######%%;;;;,.|     @#%,.@  X.....| X
X  \...X     @#%,.@   |# # # % ; ; ;,|   @#%,.@     X.../  X
 X# \.X        @#%,.@                  @#%,.@        X./  #
  ### X          @#%,.@              @#%,.@          X   #
   ###X            @#%,.@          @#%,.@            X ##
    ###X             @#%,.@      @#%,.@             ###
      ###              @#%.,@  @#%,.@              ##
        #                @#%.@#%,.@                #
                           @#%,.@                  
                         @#%,.@  @@                
                          @@@  @@@ 
EOF
    fi

    # Setel PS1 yang AMAN — tidak akan tertimpa saat mengetik
    export PS1='\[\033[93m\]H4CK3R\[\033[1;94m\][\[\033[1;96m\]\W\[\033[1;94m\]]\[\033[1;92m\]:\[\033[1;91m\]# \[\033[1;92m\]'
}

# Jalankan saat shell dimulai
clear
printf '\e[3J]'
login