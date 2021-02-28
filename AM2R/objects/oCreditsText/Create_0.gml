/*
    FORMATTING KEY:
    ; = linebreak marker (NOT # because we want to handle it manually and insert them later)
    = = split into left/right strings here
    / = centered name
    * = centered header (gets custom display color)
*/

// Refer to key above
text = "*Another " + global.monsterStr + " 2 Remake;;;;;;;;;;;;*Producer;/Milton 'DoctorM64' Guasti;;*Graphic Design;Ramiro Negri=MichaelGabrielR;Jasper=Jack Witty;/Steve 'Sabre230' Rothlisberger;/Kirill '1Eni1' Fevralev;;*Promo Art;/Azima 'Zim' Khan;;*Writing;/James 'Ridley' Hobbs;/Paulo 'Latinlingo' Villalobos;;*Platform Engine Code;/Martin Piecyk;;*Music Composition;/Milton 'DoctorM64' Guasti;/Darren Kerwin;/Torbjørn 'Falcool' Brandrud;;*Debug;/Dragondarch=Hemse;/Esteban 'DruidVorse' Criado;/Verneri 'Naatiska' Viljanen;;*Playtesting;Jennifer Potter=Mario Crestanello;Live4Truths=Nommiin;/Torbjørn 'Falcool' Brandrud;/Nicolas 'Skol' Del Negro;Lise Trehjørningen=Gabriel Kaplan;Darren Kerwin=Robert Sephazon;;*Community Management;Dragonheart91=Ammypendent;/Karrde;;*Special Thanks;Nommiin=Tyler Rogers;Kousoru=Infinity's End;Isabelle Amponin=CapCom;/Nathan 'wickedclown' Hess;/The " + global.monsterStr + " Community;;;;*Source Code Reconstruction;/YellowAfterlife;;;;*Continued Revisions;;*Development;Gatordile=Lojemiru;/Alex 'Wanderer' Mack;;*Programming;" + global.monsterStr + "3D=Scooterboot;/Craig Kostelecky;;*Art Lead;/Dannon 'Shmegleskimo' Yates;;*Art;ShirtyScarab=Cooper Garvin;/Chris 'Messianic' Oliveira;/ChloePlz;;*Debug;Miepee=EODTex;/Esteban 'DruidVorse' Criado;/Verneri 'Naatiska' Viljanen;/Electrix;;*Localization;*Spanish;Imsu=Diegomg;*German;m3Zz=LPCaiser;Miepee=unknown;/fedprod;*Italian;LetsPlayNintendoITA=SadNES cITy e Vecna;/ReNext;*French;Atver=Vectrex28;*Russian;/DarkEspeon;*Japanese;/Gponys;*Czech;/Vectrex28;;*Special Thanks;Banjo=King Bore;Reaku the Crate=Grom PE;Sylandro=TheKhaosDemon;Iwantdevil=PixHammer;GaptGlitch=Nokbient;Nanassshy=kitronmacaron;/Jean-Samuel Pelletier;/Japanese Community;;;;*Original " + global.monsterStr + " II Staff;;*Producer;/Gunpei Yokoi;;*Director;Hiroji Kiyotake=Hiroyuki Kimura;;*Main Programmer;/Takahiro Harada;;*Programmer;Masaru Yamanaka=Masao Yamamoto;/Isao Hirano;;*Graphic Designer;Hiroji Kiyotake=Hiroyuki Kimura;;*Program Assistant;Yuzuru Ogawa=Nobuhiro Ozaki;;*Sound Programmer;/Ryohji Yoshitomi;;*Designer;Makoto Kanoh=Masafumi Sakashita;Tomoyoshi Yamane=Takehiko Hosokawa;/Yasuo Inoue;;*Debug;Masaru Okadaga=Kenji Nishizawa;Hirofumi Matsuoka=Tohru Ohsawa;Kohta Fukui=Keisuke Terasaki;Kenichi Sugino=Hitoshi Yamagami;Katsuya Yamaoe=Yuji Hori;;;;;;;;;;/In Memory of Satoru Iwata;";

// Constants
TEXT_ROWS = string_count(";", text);
X_POS = room_width / 2;
WIDE_SPACE = oControl.widescreen_space / 2;

// Calculate scroll speed based on line count.
SCROLL_SPEED = (TEXT_ROWS * -0.27) / 120;

// Vars
var arrayIndex = 0;
var subStr = "";
var line = 0;

// Generate blank space in 2D array...
for (var i = 0; i < TEXT_ROWS; i++) {
    for (var j = 0; j < 4; j++) {
        textArray[i, j] = "";
    }
}

var strLength = string_length(text)

// Parse text
for (var i = 1; i <= strLength; i++) {
    // Get next char
    var nextChar = string_char_at(text, i);
    
    // Parsing - refer to key above
    if (nextChar == "=") { // Split
        // Store subStr as left (technically anything but left is what it /should/ be)
        textArray[line, arrayIndex] = subStr;
        
        // Reset subStr
        subStr = "";
        
        // Set next index to right
        arrayIndex = 1;
    }
    else if (nextChar == ";") { // Linebreak
        // Store subStr to index
        textArray[line, arrayIndex] = subStr;
        
        // Reset subStr/index
        subStr = ""; 
        arrayIndex = 0;
                
        // Drop to next line
        line++;
    }
    else if (nextChar == "/") { // Centered
        // Set index to center
        arrayIndex = 2;
    }
    else if (nextChar == "*") { // Centered header
        // Set index to header
        arrayIndex = 3;
    }
    else {
        // Add current char to subStr
        subStr += nextChar;
    }
}

// Create text strings
textLeft = "";
textRight = "";
textCenter = "";
textHeader = "";

// Compile arrays into their respective strings; add newlines
for (var i = 0; i < TEXT_ROWS; i++) {
    textLeft += textArray[i, 0] + "#";
    textRight += textArray[i, 1] + "#";
    textCenter += textArray[i, 2] + "#";
    textHeader += textArray[i, 3] + "#";
}


yoffset = 0;
fadeout = 0;
canfadeout = 0;
alarm[0] = 1;
image_alpha = 0;
if (global.creditsmenuopt == 1) {
    alarm[2] = 300; //300
    statetime = 500; //500
    alarm[1] = 5500; //5500
} else {
    statetime = 0;
    alarm[1] = 6000; //6000
}

if (os_type == os_android) os_powersave_enable(false);

/* */
/*  */
