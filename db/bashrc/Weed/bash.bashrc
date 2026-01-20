# Fungsi login: reset total + tampilkan banner lolcat + prompt multi-warna aman
login() {
    # Hapus riwayat perintah sesi ini
    history -c 2>/dev/null || true

    # Bersihkan layar dan scrollback buffer
    clear
    printf '\e[3J'

    # Tampilkan banner melalui lolcat (lebih efisien: sekali pipa)
    if command -v lolcat >/dev/null 2>&1; then
        cat << 'EOF' | lolcat
	                     .                            
	                     M 				
	                     dM                           
	                    MMr                           
	                   4MMML                  .       
	                   MMMMM.                xf       
	   .              "MMMMM               .MM-       
	    Mh..          +MMMMMM            .MMMM        
	    .MMM.         .MMMMML.          MMMMMh        
	     )MMMh.        MMMMMM         MMMMMMM         
	      3MMMMx.     .MMMMMMf      xnMMMMMM"         
	      `*MMMMM      MMMMMM.     nMMMMMMP"          
	        *MMMMMx    "MMMMM\    .MMMMMMM=           
	         *MMMMMh   "MMMMM"   JMMMMMMP             
	           MMMMMM   3MMMM.  dMMMMMM            .  
	            MMMMMM  "MMMM  .MMMMM(        .nnMP"  
	 ..          *MMMMx  MMM"  dMMMM"    .nnMMMMM*    
	  "MMn...     `MMMMr `MM   MMM"   .nMMMMMMM*"     
	   "4MMMMnn..   *MMM  MM  MMP"  .dMMMMMMM""       
	     ^MMMMMMMMx.  *ML "M .M*  .MMMMMM**"          
	        *PMMMMMMhn. *x > M  .MMMM**""             
	           ""**MMMMhx/.h/ .=*"                    
	                    .3P"%....                     
	                  nP"     "*MMnx                  
EOF
    else
        # Fallback jika lolcat tidak terinstal
        cat << 'EOF'
	                     .                            
	                     M 				
	                     dM                           
	                    MMr                           
	                   4MMML                  .       
	                   MMMMM.                xf       
	   .              "MMMMM               .MM-       
	    Mh..          +MMMMMM            .MMMM        
	    .MMM.         .MMMMML.          MMMMMh        
	     )MMMh.        MMMMMM         MMMMMMM         
	      3MMMMx.     .MMMMMMf      xnMMMMMM"         
	      `*MMMMM      MMMMMM.     nMMMMMMP"          
	        *MMMMMx    "MMMMM\    .MMMMMMM=           
	         *MMMMMh   "MMMMM"   JMMMMMMP             
	           MMMMMM   3MMMM.  dMMMMMM            .  
	            MMMMMM  "MMMM  .MMMMM(        .nnMP"  
	 ..          *MMMMx  MMM"  dMMMM"    .nnMMMMM*    
	  "MMn...     `MMMMr `MM   MMM"   .nMMMMMMM*"     
	   "4MMMMnn..   *MMM  MM  MMP"  .dMMMMMMM""       
	     ^MMMMMMMMx.  *ML "M .M*  .MMMMMM**"          
	        *PMMMMMMhn. *x > M  .MMMM**""             
	           ""**MMMMhx/.h/ .=*"                    
	                    .3P"%....                     
	                  nP"     "*MMnx                  
EOF
    fi

    # Setel PS1 MULTI-WARNA yang AMAN — tidak akan tertimpa saat mengetik
    export PS1='\[\033[92m\]H4\[\033[93m\]CK\[\033[91m\]3R\[\033[1;94m\][\[\033[1;96m\]\W\[\033[1;94m\]]\[\033[1;92m\]:\[\033[1;91m\]# \[\033[1;92m\]'
}

# Jalankan saat shell dimulai
clear
printf '\e[3J]'
login