admins={"Tigrounette", "Buriik", "Devilstrkpro"}
-- remember to put "," between each name!
 
 
tfm.exec.disableAutoNewGame(true)
tfm.exec.disableAfkDeath(true)
tfm.exec.disableAutoShaman(true)
tfm.exec.disableAutoScore(true)
tfm.exec.newGame("@7012286")
 
players={}--respawn place is 400,320
p={}
timestamp=os.time()
numplayers=0
 
begin=false
answerer="lol"
questioner="lol"
question="lol"
ans="lol"
new=false
restart=false
choose=false
start=true
choosey=false
skip=false
message=""
others={}
summonobject=false
timestamplol={}
answererold=""
one=false
dance=false
mapcomplete=false
 
truth={}--you can follow the format 'truth[number]="question"'
truth[1]="Oyunda kimi eziyorsun?"
truth[2]="En sevdi�in yiyecek?"
truth[3]="Oyundaki en sevdi�in ki�i?"
truth[4]="Transformice D���nda ne  oynuyorsun?"
truth[5]="B�y�y�nce Ne olmak istiyorsun?"
truth[6]="Hi� Ba� parma��n� emdinmi?"
truth[7]="Telefonunun Markas� Ne?"
truth[8]="Arkada�lar�n�n Yada ��retmenlerinin Yan�nda Osurdunmu"
truth[9]="Transformicede Bi hack yasak olmasa hangisini se�ersin?"
truth[10]="Transformicedeki En Sevdi�in K�rk?"
truth[11]="Neden Transformiceyi Seviyorsun?"
truth[12]="Kendini  Seviyormusun?"
truth[13]="Kendin Hakk�nda en �ok neyi seviyorsun"
truth[14]="Oyuna Nas�l Ba�lad�n."
truth[15]="Ger�ek Hayattada oyunda oldu�un gibimisin"
truth[16]="En Nefret Etti�in Ki�i"
truth[17]="S�n�rs�z �ilek Ve Peynirin Olsa Marketten Ne Al�rd�n?"
truth[18]="Hangisini Se�ersin S�n�rs�z Param� Flash Olmakm�"
truth[19]="En Sevdi�in Masa Oyunu"
truth[20]="Du� Almadan Durdu�un EN UZUN S�RE ?"
truth[21]="Hi� B�cek Yedinmi(krd� bu ne )?"
truth[22]="E�er Bir S�per K�t� Olsan Ne Olurdun"
truth[23]=" E�er Bir Kahraman Olsan Ne Olurdun"
truth[24]="Bir B�cek Olsan Ne Olurdun (krd� bu ne)? "
truth[25]="En Sevdi�in Yetkili? (Admin/Moderator/Sentinels/Mapcrew/Funcorp)"
truth[26]="Benim Hakk�nda D���ncelerin ne"
truth[27]="Hi� S�navda Kopya �ektinmi"
truth[28]="Hi� Sevgilin Oldumu"
truth[29]="Milyoner Olsan Vaktini Neyle Harcard�n"
truth[30]="Bir G�nl�k Bir �irkette Patronsun Ne Yapard�n"
truth[31]="Hangi �nl� �d�l�n"
truth[32]="En Sevdi�in Tak�m Ve Oyuncu"
truth[32]="En Sevdi�in �ark�"
truth[33]="Kendi Ba��na Adas�n Ve Bir Ki�i Alacaks�n Kimle O Adada Kal�rd�n?(Bu odadan olmal�)"
truth[34]="Bu odada kime yumruk atmak isterdin"
truth[35]="�ok zengin ve aptalm� yoksa yoksul ve zeki olmakm�"
truth[36]="Annenemi yak�ns�n babanam�"
 
dare={}--you can follow the format 'dare[number]="Dare"'
dare[1]="Cesaretin Varsa ODA  2 YE G�T VE 10 Kere Bu Mesaj�  Spamla: CHARLOTTE CHARLOTTE CHARLOTTE CHARLOTTE CHARLOTTE CHARLOTTE CHARLOTTE CHARLOTTE"
dare[2]="Cesaretin varsa  bir moderet�re nbyn qnq de."
dare[3]="Cesaretin Varsa Bu Odadan Ezmek �stedi�in  Birisini S�yle"
dare[4]="Cesaretin Varsa ODA  1e G�T VE 10 Kere Bu Mesaj�  Spamla: Flood yap�yorum Reportlay�n Beni!"
dare[5]="Cesaretin Varsa Bir Moderot�r� Hack Y�z�nden Reportla"
dare[6]="Cesaretin varsa 801e git ve 5 KERE CANIM SIKILDI D�YE FLOODLA"
dare[7]="Cesaretin Varsa �smini S�yle(bilmiyozmu..)"
dare[8]="Cesaretin Varsa Moderet�re do�ruluk cesaret oynayal�mm� de"
dare[9]="801 E git ve rasgele 3 ki�iye �zelden #utility00gelme gel de"
dare[10]="Cesaretin Varsa En anla�amad���n ki�iye top ver"
dare[11]="Cesaretin Varsa Oyundan ��k Ve Gir."
dare[12]="Kimin Oyunu B�rakmas�n� �stersin(Bu Odadan)."
dare[13]="Cesaretin Varsa Sadece Sa� �le 15 Dakika Dur"
dare[14]="Cesaretin Varsa Map� Bitir!"
dare[15]="Cesaretin Varsa Sevdi�in Ki�iye SEN� SEV�YORUM (�S�M) DE"
dare[16]="Oda 3e Git Ve Mod Olmak �stiyorum  Diye 10 Kere Floodla"
dare[17]="Reelde Sevdi�in Varm� Veya  Sevgilin Varsa �smini S�yle :) "
dare[18]="Envanterinin ss sini at"
dare[19]="Cesaretin Varsa Moder�tere Banla Beni De'"
dare[20]="Cesaretin varsa en sevmedi�in ki�iyle ta� ka��t makas oyna"
dare[21]="Odan�n Chatinde 10 Kere Ben Kimim Ayol De"
dare[22]="Cesaretin Varsa Karne Ortalaman� S�ye"
dare[23]="Bir Yabanc� Moder�tere �unu spamla,  Kap�y� A�am�yom qnq'"
dare[24]="Room 1 e git ve 10 kere Waffle �stiyorum Diye Spamla."
 
function eventNewPlayer(name)
    ui.addTextArea(1,"<b><p align = 'center'><font size='30'>Yaz !join Oyuna kat�lmak i�in :D.</font></p></b>",name,50,365,700,40,0x324650,0x212F36,0.8,true)
    ui.addTextArea(1,"<b><p align = 'center'><font size='15'>�i�e �evirmece Oyununa Ho�geldin!</font></p></b>",nil,50,365,700,40,0x324650,0x212F36,0.8,true)
    ui.addPopup(999,0,"<p align = 'center'><font size='40' face='impact'>�i�e �evirmece</font></p><font size='20' color='#FF0000'><b>Oyun Devilstkrkpro Taraf�ndan Yap�lm��t�r...                               </b></font><font size='15'>\Oyun s�n�rs�z ki�i say�s�yla oynanabilir, fakat 1 ki�i soran ki�i ve 1 ki�i cevaplay�c� ki�i olarak 2 ki�i sistem taraf�ndan se�ilir. Oyun ad�mlar� oyunun i�inde g�sterilmi�tir. �yi Oyunlar!!! �uanl�k <b>"..#truth.."</b> tane Sistem Taraf�ndan Sorulan Do�ruluk Sorusu Ve <b>"..#dare.."</b> Tane Sistem Taraf�ndan Yapt�r�lan Cesaret Se�ene�i Vard�r. \n<font color='#00FF00'>Yap�mc�: Devilstrkpro</font> \n</font><font face='impact' size='20'>T�m Komutlar� G�rmek ��in !commands </font>",nil,100,50,600,true)
    p[name]={questioners=false, admin=false, spectator=true, ban=false, randomerino=1, out=false, new=false}
    local i=0
    while i<=#admins do
    if name==admins[i] then
        p[name].admin=true
    end
    i=i+1
    end
end
 
function eventNewGame()
    ui.addTextArea(1,"<b><p align = 'center'><font size='15'>Do�rulukmu Cesaretmi Oyununa Ho�geldin!</font></p></b>",nil,50,365,700,40,0x324650,0x212F36,0.8,true)
    ui.addPopup(999,0,"<p align = 'center'><font size='40' face='impact'>Do�rulukmu Cesaretmi</font></p><font size='20' color='#FF0000'><b>Oyun Hakk�nda �eviri Buriik</b></font><font size='15'>\n�ncelikle �unu S�yleyeyim Ben �evirisini Yapt�m Yap�mc� Mousetat�d�r Neyse �n�Alalh E�leniriz Hadi Ba�l�yal�m Bu Arada �uanl�k <b>"..#truth.."</b> Rastgele Do�ruluk ve <b>"..#dare.."</b> Rastele Cesaret var , \n<font color='#00FF00'>Yap�mc� Mousetat �eviri Buriik</font> \nForum Linki: atelier801.com//topic?f=6&t=814350&p=1 \n</font><font face='impact' size='30'>T�m Komutlar� G�rmek ��in !commands </font>",nil,100,50,600,true)
    answerer=""
    questioner=""
    begin=false
    start=true
    numplayers=0
    count=1
    one=false
    local i=0
    for name,player in pairs(tfm.get.room.playerList) do
        p[name]={questioners=false, admin=false, spectator=true, ban=false, randomerino=1, out=false, new=false}
        players[count]=name
        timestamp=os.time()
        numplayers=numplayers+1
        count=count+1
        p[name].spectator=false
        p[name].questioners=false
        local i=0
        while i<=#admins do
        if name==admins[i] then
            p[name].admin=true
        end
        i=i+1
        end
    end
    system.disableChatCommandDisplay("t", hidden)
    system.disableChatCommandDisplay("admin", hidden)
    system.disableChatCommandDisplay("restart", hidden)
    system.disableChatCommandDisplay("ban", hidden)
    system.disableChatCommandDisplay("skip", hidden)
    system.disableChatCommandDisplay("watch", hidden)
    system.disableChatCommandDisplay("unban", hidden)
    system.disableChatCommandDisplay("unadmin", hidden)
    end
 
function eventChatCommand(name,command)
    local IDList = {}
    if command=="clear" then
        for id, object in pairs(tfm.get.room.objectList) do
            table.insert(IDList, id)
        end
        for i, id in pairs(IDList) do
            tfm.exec.removeObject(id)
        end
    end
    if command=="s" and p[name].admin==true then
        tfm.exec.setShaman(name)
    elseif command=="dance" and p[name].admin==true then
        for name,player in pairs(tfm.get.room.playerList) do
            p[name].randomerino=math.random(1,3)
        end
        dance=true
    elseif command=="danceoff" and p[name].admin==true then
        dance=false
    elseif command=="mods" then
        message=""
        for k,v in pairs(tfm.get.room.playerList) do
            if p[k].admin==true then
                message=message..tostring(k)..", "
            end
        end
    ui.updateTextArea(1, "<p align='center'><b><font size='15'>The moderators are: "..string.sub(message,1,-3)..".</font></b></p>", name)
    elseif command=="new" and name==questioner then
        if p[name].new==false then
        print("true")
        tfm.exec.movePlayer(answerer,400,320,false,0,0,false)
        answererold=answerer
        answerer=""
        choose=true
        p[name].new=true
        else
        ui.updateTextArea(1, "<p align='center'><b><font size='30'>You can only !new ONCE</font></b></p>", nil)
        end
    elseif command=="join" and p[name].spectator==true then
        if p[name].ban==false then
            ui.updateTextArea(1, "<p align='center'><b><font size='30'>"..name.." Oyuna Kat�ld�! :D</font></b></p>", nil)
            tfm.exec.respawnPlayer(name)
            tfm.exec.movePlayer(name,400,320,false,0,0,false)
            p[name].spectator=false
            table.insert(players,name)
        elseif p[name].ban==true then
            ui.updateTextArea(1, "<p align='center'><b><font size='30'>Banland���n ��in Oyuna Kat�lamass�n :/ :(</font></b></p>", name)
        end
    elseif command=="skip" and p[name].admin==true then
        timestamp=os.time()
        skip=true
    elseif string.sub(command,0,1) == "t" and p[name].admin==true then
        message=string.sub(command,3)
        ui.updateTextArea(1, "<p align='center'><b><font size='15' color='#ED67EA'>[~#T/D Moderation] "..message.."</font></b></p>", nil)
    elseif command=="restart" and p[name].admin==true then
        tfm.exec.newGame("@7012286")
    elseif string.sub(command,0,5)=="watch"  then
        if string.sub(command,7)=="" then
            p[name].spectator=true
                ui.updateTextArea(1, "<p align='center'><b><font size='30'>"..name.." �zleyici:(</font></b></p>", nil)
                ui.updateTextArea(1,"<b><p align = 'center'><font size='30'>Yaz !join Oyuna Kat�lmak i�in.</font></p></b>",name)
            if name==questioner or name==answerer then
                questioner=""
                answerer=""
                tfm.exec.movePlayer(questioner,400,320,false,0,0,false)
                tfm.exec.movePlayer(answerer,400,320,false,0,0,false)
                timestamp=os.time()
                skip=true
            end
            for i=1,#players do
                if players[i]==name then
                    table.remove(players,i)
                end
            end
        else
            if p[name].admin==true then
                message=string.sub(command,7)
                message=string.upper(string.sub(message,0,1))..string.sub(message,2)
                for k,v in pairs(tfm.get.room.playerList) do
                    if k==message and p[k].spectator==false then
                        if k==questioner or k==answerer then
                            skip=true
                            timestamp=os.time()
                        end
                        p[k].spectator=true
                        ui.updateTextArea(1, "<p align='center'><b><font size='30'>"..k.." is now a spectator :(</font></b></p>", nil)
                        ui.updateTextArea(1,"<b><p align = 'center'><font size='30'>Yaz !join Oyuna Kat�lmak i�in.</font></p></b>",k)
                        for i=1,#players do
                            if players[i]==k then
                                table.remove(players,i)
                            end
                        end
                    end
                end
            end
        end
    elseif command=="help" then
          ui.addPopup(999,0,"<p align = 'center'><font size='40' face='impact'>Truth or Dare</font></p><font size='20' color='#FF0000'><b>Oyun Hakk�nda �eviri Buriik</b></font><font size='15'>\n�ncelikle �unu S�yleyeyim Ben �evirisini Yapt�m Yap�mc� Mousetat�d�r Neyse �n�Alalh E�leniriz Hadi Ba�l�yal�m Bu Arada �uanl�k <b>"..#truth.."</b> Rastgele Do�ruluk ve <b>"..#dare.."</b> Rastele Cesaret var , \n<font color='#00FF00'>Yap�mc� Mousetat �eviri Buriik</font> \nForum Linki: atelier801.com//topic?f=6&t=814350&p=1 \n</font><font face='impact' size='30'>T�m Komutlar� G�rmek ��in !commands </font>",nil,100,50,600,true)
    elseif command=="commands" then
    if p[name].admin==true then
    ui.addPopup(999,0,"<b><font size='20' color='#FFFF00'>COMMANDS</font>\n!join to join the game if you are spectating or you just came into the room.\n!watch to be a spectator and get ignored in the game.\n!mods to see the current moderators in the room.\n!clear to clear all shaman objects.\n!new to get a new answerer(only new ONCE)(asker only)\n!help to see the information about game\n<font size='20' color='#EB1D51'>ADMIN COMMANDS</font>\n!watch (username) to make the username a spectator.\n!s to become shaman\n!admin (username) to admin a person\n!dance/!danceoff to toggle dancing\n!t (message) to speak to all\n!restart to restart game if bugged\n!skip to skip a person's turn\n!ban (username) (reason) to ban a person(highly not advised)</b>",name,100,50,600,true)
    elseif p[name].admin==false then
  admins={"Tigrounette", "Melibellule", "Buriik"}
-- remember to put "," between each name!
 
 
tfm.exec.disableAutoNewGame(true)
tfm.exec.disableAfkDeath(true)
tfm.exec.disableAutoShaman(true)
tfm.exec.disableAutoScore(true)
tfm.exec.newGame("@7012286")
 
players={}--respawn place is 400,320
p={}
timestamp=os.time()
numplayers=0
 
begin=false
answerer="lol"
questioner="lol"
question="lol"
ans="lol"
new=false
restart=false
choose=false
start=true
choosey=false
skip=false
message=""
others={}
summonobject=false
timestamplol={}
answererold=""
one=false
dance=false
mapcomplete=false
 
truth={}--you can follow the format 'truth[number]="question"'
truth[1]="Oyunda kimi eziyorsun?"
truth[2]="En sevdi�in yiyecek?"
truth[3]="Oyundaki en sevdi�in ki�i?"
truth[4]="Transformice D���nda ne  oynuyorsun?"
truth[5]="B�y�y�nce Ne olmak istiyorsun?"
truth[6]="Hi� Ba� parma��n� emdinmi?"
truth[7]="Telefonunun Markas� Ne?"
truth[8]="Arkada�lar�n�n Yada ��retmenlerinin Yan�nda Osurdunmu"
truth[9]="Transformicede Bi hack yasak olmasa hangisini se�ersin?"
truth[10]="Transformicedeki En Sevdi�in K�rk?"
truth[11]="Neden Transformiceyi Seviyorsun?"
truth[12]="Kendini  Seviyormusun?"
truth[13]="Kendin Hakk�nda en �ok neyi seviyorsun"
truth[14]="Oyuna Nas�l Ba�lad�n."
truth[15]="Ger�ek Hayattada oyunda oldu�un gibimisin"
truth[16]="En Nefret Etti�in Ki�i"
truth[17]="S�n�rs�z �ilek Ve Peynirin Olsa Marketten Ne Al�rd�n?"
truth[18]="Hangisini Se�ersin S�n�rs�z Param� Flash Olmakm�"
truth[19]="En Sevdi�in Masa Oyunu"
truth[20]="Du� Almadan Durdu�un EN UZUN S�RE ?"
truth[21]="Hi� B�cek Yedinmi(krd� bu ne )?"
truth[22]="E�er Bir S�per K�t� Olsan Ne Olurdun"
truth[23]=" E�er Bir Kahraman Olsan Ne Olurdun"
truth[24]="Bir B�cek Olsan Ne Olurdun (krd� bu ne)? "
truth[25]="En Sevdi�in Yetkili? (Admin/Moderator/Sentinels/Mapcrew/Funcorp)"
truth[26]="Benim Hakk�nda D���ncelerin ne"
truth[27]="Hi� S�navda Kopya �ektinmi"
truth[28]="Hi� Sevgilin Oldumu"
truth[29]="Milyoner Olsan Vaktini Neyle Harcard�n"
truth[30]="Bir G�nl�k Bir �irkette Patronsun Ne Yapard�n"
truth[31]="Hangi �nl� �d�l�n"
truth[32]="En Sevdi�in Tak�m Ve Oyuncu"
truth[32]="En Sevdi�in �ark�"
truth[33]="Kendi Ba��na Adas�n Ve Bir Ki�i Alacaks�n Kimle O Adada Kal�rd�n?(Bu odadan olmal�)"
truth[34]="Bu odada kime yumruk atmak isterdin"
truth[35]="�ok zengin ve aptalm� yoksa yoksul ve zeki olmakm�"
truth[36]="Annenemi yak�ns�n babanam�"
 
dare={}--you can follow the format 'dare[number]="Dare"'
dare[1]="Cesaretin Varsa ODA  2 YE G�T VE 10 Kere Bu Mesaj�  Spamla: CHARLOTTE CHARLOTTE CHARLOTTE CHARLOTTE CHARLOTTE CHARLOTTE CHARLOTTE CHARLOTTE"
dare[2]="Cesaretin varsa  bir moderet�re nbyn qnq de."
dare[3]="Cesaretin Varsa Bu Odadan Ezmek �stedi�in  Birisini S�yle"
dare[4]="Cesaretin Varsa ODA  1e G�T VE 10 Kere Bu Mesaj�  Spamla: Flood yap�yorum Reportlay�n Beni!"
dare[5]="Cesaretin Varsa Bir Moderot�r� Hack Y�z�nden Reportla"
dare[6]="Cesaretin varsa 801e git ve 5 KERE CANIM SIKILDI D�YE FLOODLA"
dare[7]="Cesaretin Varsa �smini S�yle(bilmiyozmu..)"
dare[8]="Cesaretin Varsa Moderet�re do�ruluk cesaret oynayal�mm� de"
dare[9]="801 E git ve rasgele 3 ki�iye �zelden #utility00gelme gel de"
dare[10]="Cesaretin Varsa En anla�amad���n ki�iye top ver"
dare[11]="Cesaretin Varsa Oyundan ��k Ve Gir."
dare[12]="Kimin Oyunu B�rakmas�n� �stersin(Bu Odadan)."
dare[13]="Cesaretin Varsa Sadece Sa� �le 15 Dakika Dur"
dare[14]="Cesaretin Varsa Map� Bitir!"
dare[15]="Cesaretin Varsa Sevdi�in Ki�iye SEN� SEV�YORUM (�S�M) DE"
dare[16]="Oda 3e Git Ve Mod Olmak �stiyorum  Diye 10 Kere Floodla"
dare[17]="Reelde Sevdi�in Varm� Veya  Sevgilin "
dare[18]="Envanterinin ss sini at"
dare[19]="Cesaretin Varsa Moder�tere Banla Beni De'"
dare[20]="Cesaretin varsa en sevmedi�in ki�iyle ta� ka��t makas oyna"
dare[21]="Odan�n Chatinde 10 Kere Ben Kimim Ayol De"
dare[22]="Cesaretin Varsa Karne Ortalaman� S�ye"
dare[23]="Bir Yabanc� Moder�tere �unu spamla,  Kap�y� A�am�yom qnq'"
dare[24]="Room 1 e git ve 10 kere Waffle �stiyorum Diye Spamla."
 
function eventNewPlayer(name)
    ui.addTextArea(1,"<b><p align = 'center'><font size='30'>Yaz !join Oyuna kat�lmak i�in :D.</font></p></b>",name,50,365,700,40,0x324650,0x212F36,0.8,true)
    ui.addTextArea(1,"<b><p align = 'center'><font size='15'>�i�e �evirmece Oyununa Ho�geldin!</font></p></b>",nil,50,365,700,40,0x324650,0x212F36,0.8,true)
    ui.addTextArea(1,"<b><p align = 'center'><font size='15'>�i�e �evirmece Oyununa Ho�geldin!</font></p></b>",nil,50,365,700,40,0x324650,0x212F36,0.8,true)
    ui.addPopup(999,0,"<p align = 'center'><font size='40' face='impact'>�i�e �evirmece</font></p><font size='20' color='#FF0000'><b>Oyun Devilstkrkpro Taraf�ndan Yap�lm��t�r...                               </b></font><font size='15'>\Oyun s�n�rs�z ki�i say�s�yla oynanabilir, fakat 1 ki�i soran ki�i ve 1 ki�i cevaplay�c� ki�i olarak 2 ki�i sistem taraf�ndan se�ilir. Oyun ad�mlar� oyunun i�inde g�sterilmi�tir. �yi Oyunlar!!! �uanl�k <b>"..#truth.."</b> tane Sistem Taraf�ndan Sorulan Do�ruluk Sorusu Ve <b>"..#dare.."</b> Tane Sistem Taraf�ndan Yapt�r�lan Cesaret Se�ene�i Vard�r. \n<font color='#00FF00'>Yap�mc�: Devilstrkpro</font> \n</font><font face='impact' size='20'>T�m Komutlar� G�rmek ��in !commands </font>",nil,100,50,600,true)
    local i=0
    while i<=#admins do
    if name==admins[i] then
        p[name].admin=true
    end
    i=i+1
    end
end
 
function eventNewGame()
    ui.addTextArea(1,"<b><p align = 'center'><font size='15'>Do�rulukmu Cesaretmi Oyununa Ho�geldin!</font></p></b>",nil,50,365,700,40,0x324650,0x212F36,0.8,true)
    ui.addPopup(999,0,"<p align = 'center'><font size='40' face='impact'>Truth or Dare</font></p><font size='20' color='#FF0000'><b>Oyun Hakk�nda �eviri Buriik</b></font><font size='15'>\n�ncelikle �unu S�yleyeyim Ben �evirisini Yapt�m Yap�mc� Mousetat�d�r Neyse �n�Alalh E�leniriz Hadi Ba�l�yal�m Bu Arada �uanl�k <b>"..#truth.."</b> Rastgele Do�ruluk ve <b>"..#dare.."</b> Rastele Cesaret var , \n<font color='#00FF00'>Yap�mc� Mousetat �eviri Buriik</font> \nForum Linki: atelier801.com//topic?f=6&t=814350&p=1 \n</font><font face='impact' size='30'>T�m Komutlar� G�rmek ��in !commands </font>",nil,100,50,600,true)
    answerer=""
    questioner=""
    begin=false
    start=true
    numplayers=0
    count=1
    one=false
    local i=0
    for name,player in pairs(tfm.get.room.playerList) do
        p[name]={questioners=false, admin=false, spectator=true, ban=false, randomerino=1, out=false, new=false}
        players[count]=name
        timestamp=os.time()
        numplayers=numplayers+1
        count=count+1
        p[name].spectator=false
        p[name].questioners=false
        local i=0
        while i<=#admins do
        if name==admins[i] then
            p[name].admin=true
        end
        i=i+1
        end
    end
    system.disableChatCommandDisplay("t", hidden)
    system.disableChatCommandDisplay("admin", hidden)
    system.disableChatCommandDisplay("restart", hidden)
    system.disableChatCommandDisplay("ban", hidden)
    system.disableChatCommandDisplay("skip", hidden)
    system.disableChatCommandDisplay("watch", hidden)
    system.disableChatCommandDisplay("unban", hidden)
    system.disableChatCommandDisplay("unadmin", hidden)
    end
 
function eventChatCommand(name,command)
    local IDList = {}
    if command=="clear" then
        for id, object in pairs(tfm.get.room.objectList) do
            table.insert(IDList, id)
        end
        for i, id in pairs(IDList) do
            tfm.exec.removeObject(id)
        end
    end
    if command=="s" and p[name].admin==true then
        tfm.exec.setShaman(name)
    elseif command=="dance" and p[name].admin==true then
        for name,player in pairs(tfm.get.room.playerList) do
            p[name].randomerino=math.random(1,3)
        end
        dance=true
    elseif command=="danceoff" and p[name].admin==true then
        dance=false
    elseif command=="mods" then
        message=""
        for k,v in pairs(tfm.get.room.playerList) do
            if p[k].admin==true then
                message=message..tostring(k)..", "
            end
        end
    ui.updateTextArea(1, "<p align='center'><b><font size='15'>The moderators are: "..string.sub(message,1,-3)..".</font></b></p>", name)
    elseif command=="new" and name==questioner then
        if p[name].new==false then
        print("true")
        tfm.exec.movePlayer(answerer,400,320,false,0,0,false)
        answererold=answerer
        answerer=""
        choose=true
        p[name].new=true
        else
        ui.updateTextArea(1, "<p align='center'><b><font size='30'>You can only !new ONCE</font></b></p>", nil)
        end
    elseif command=="join" and p[name].spectator==true then
        if p[name].ban==false then
            ui.updateTextArea(1, "<p align='center'><b><font size='30'>"..name.." Oyuna Kat�ld�! :D</font></b></p>", nil)
            tfm.exec.respawnPlayer(name)
            tfm.exec.movePlayer(name,400,320,false,0,0,false)
            p[name].spectator=false
            table.insert(players,name)
        elseif p[name].ban==true then
            ui.updateTextArea(1, "<p align='center'><b><font size='30'>Banland���n ��in Oyuna Kat�lamass�n :/ :(</font></b></p>", name)
        end
    elseif command=="skip" and p[name].admin==true then
        timestamp=os.time()
        skip=true
    elseif string.sub(command,0,1) == "t" and p[name].admin==true then
        message=string.sub(command,3)
        ui.updateTextArea(1, "<p align='center'><b><font size='15' color='#ED67EA'>[~#T/D Moderation] "..message.."</font></b></p>", nil)
    elseif command=="restart" and p[name].admin==true then
        tfm.exec.newGame("@7012286")
    elseif string.sub(command,0,5)=="watch"  then
        if string.sub(command,7)=="" then
            p[name].spectator=true
                ui.updateTextArea(1, "<p align='center'><b><font size='30'>"..name.." �zleyici:(</font></b></p>", nil)
                ui.updateTextArea(1,"<b><p align = 'center'><font size='30'>Yaz !join Oyuna Kat�lmak i�in.</font></p></b>",name)
            if name==questioner or name==answerer then
                questioner=""
                answerer=""
                tfm.exec.movePlayer(questioner,400,320,false,0,0,false)
                tfm.exec.movePlayer(answerer,400,320,false,0,0,false)
                timestamp=os.time()
                skip=true
            end
            for i=1,#players do
                if players[i]==name then
                    table.remove(players,i)
                end
            end
        else
            if p[name].admin==true then
                message=string.sub(command,7)
                message=string.upper(string.sub(message,0,1))..string.sub(message,2)
                for k,v in pairs(tfm.get.room.playerList) do
                    if k==message and p[k].spectator==false then
                        if k==questioner or k==answerer then
                            skip=true
                            timestamp=os.time()
                        end
                        p[k].spectator=true
                        ui.updateTextArea(1, "<p align='center'><b><font size='30'>"..k.." is now a spectator :(</font></b></p>", nil)
                        ui.updateTextArea(1,"<b><p align = 'center'><font size='30'>Yaz !join Oyuna Kat�lmak i�in.</font></p></b>",k)
                        for i=1,#players do
                            if players[i]==k then
                                table.remove(players,i)
                            end
                        end
                    end
                end
            end
        end
    elseif command=="help" then
          ui.addPopup(999,0,"<p align = 'center'><font size='40' face='impact'>Truth or Dare</font></p><font size='20' color='#FF0000'><b>Oyun Hakk�nda �eviri Buriik</b></font><font size='15'>\n�ncelikle �unu S�yleyeyim Ben �evirisini Yapt�m Yap�mc� Mousetat�d�r Neyse �n�Alalh E�leniriz Hadi Ba�l�yal�m Bu Arada �uanl�k <b>"..#truth.."</b> Rastgele Do�ruluk ve <b>"..#dare.."</b> Rastele Cesaret var , \n<font color='#00FF00'>Yap�mc� Mousetat �eviri Buriik</font> \nForum Linki: atelier801.com//topic?f=6&t=814350&p=1 \n</font><font face='impact' size='30'>T�m Komutlar� G�rmek ��in !commands </font>",nil,100,50,600,true)
    elseif command=="commands" then
    if p[name].admin==true then
    ui.addPopup(999,0,"<b><font size='20' color='#FFFF00'>COMMANDS</font>\n!join to join the game if you are spectating or you just came into the room.\n!watch to be a spectator and get ignored in the game.\n!mods to see the current moderators in the room.\n!clear to clear all shaman objects.\n!new to get a new answerer(only new ONCE)(asker only)\n!help to see the information about game\n<font size='20' color='#EB1D51'>ADMIN COMMANDS</font>\n!watch (username) to make the username a spectator.\n!s to become shaman\n!admin (username) to admin a person\n!dance/!danceoff to toggle dancing\n!t (message) to speak to all\n!restart to restart game if bugged\n!skip to skip a person's turn\n!ban (username) (reason) to ban a person(highly not advised)</b>",name,100,50,600,true)
    elseif p[name].admin==true then
      ui.addPopup(999,0,"<p align = 'center'><font size='40' face='impact'>Truth or Dare</font></p><font size='20' color='#FF0000'><b>Oyun Hakk�nda �eviri Burik</b></font><font size='15'>\n�ncelikle �unu S�yleyeyim Ben �evirisini Yapt�m Yap�mc� Mousetat�d�r Neyse �n�Alalh E�leniriz Hadi Ba�l�yal�m Bu Arada �uanl�k <b>"..#truth.."</b> Rastgele Do�ruluk ve <b>"..#dare.."</b> Rastele Cesaret var , \n<font color='#00FF00'>Yap�mc� Mousetat �eviri Buriik</font> \nForum Linki: atelier801.com//topic?f=6&t=814350&p=1 \n</font><font face='impact' size='30'>T�m Komutlar� G�rmek ��in !commands </font>",nil,100,50,600,true)
    end
    elseif string.sub(command,0,3)=="ban" and p[name].admin==true then
        local c=0
        local reason=""
        if string.find(command," ",5)==nil then
            message=string.sub(command,5)
        else
            c=string.find(command," ",5)
            print(c)
            message=string.sub(command,5,c-1)
            reason=string.sub(command,c+1)
            print(reason)
        end
        message=string.upper(string.sub(message,0,1))..string.sub(message,2)
        for k,v in pairs(tfm.get.room.playerList) do
            if message==k then
                ui.updateTextArea(1, "<p align='center'><b><font size='15' color='#ED67EA'>[~#T/D Moderation] "..message.." has been banned for 9999 hours. Reason: "..reason.."</font></b></p>", nil)
                p[message].ban=true
                tfm.exec.killPlayer(k)
                for i=1,#players do
                    if players[i]==k then
                        table.remove(players,i)
                    end
                end
            end
        end
    elseif string.sub(command,0,5)=="unban" and p[name].admin==true then
        message=string.sub(command,7)
        message=string.upper(string.sub(message,0,1))..string.sub(message,2)
        for k,v in pairs(tfm.get.room.playerList) do
            if message==k then
                ui.updateTextArea(1, "<p align='center'><b><font size='15' color='#ED67EA'>[~#T/D Moderation] "..message.." has been unbanned.</font></b></p>", nil)
                p[message].ban=false
                tfm.exec.respawnPlayer(k)
                table.insert(players,k)
            end
        end
    elseif string.sub(command,0,5)=="admin" and p[name].admin==true then
        message=string.sub(command,7)
        message=string.upper(string.sub(message,0,1))..string.sub(message,2)
        for k,v in pairs(tfm.get.room.playerList) do
            if message==k then
                ui.updateTextArea(1, "<p align='center'><b><font size='15' color='#ED67EA'>[~#T/D Moderation] "..message.." is now a moderator. Congrats!</font></b></p>", nil)
                p[message].admin=true
            end
        end
    elseif string.sub(command,0,7)=="unadmin" and p[name].admin==true then
        message=string.sub(command,9)
        message=string.upper(string.sub(message,0,1))..string.sub(message,2)
        for k,v in pairs(tfm.get.room.playerList) do
            if message==k then
                ui.updateTextArea(1, "<p align='center'><b><font size='15' color='#ED67EA'>[~#T/D Moderation] "..message.." is demoded. What a waste!</font></b></p>", nil)
                p[message].admin=false
            end
        end
    end
end
 
function eventLoop(time,remaining)
    if dance==true then
        for name,player in pairs(tfm.get.room.playerList) do
            if p[name].randomerino==1 then
                tfm.exec.playEmote(name,0,nil)
            elseif p[name].randomerino==2 then
                tfm.exec.playEmote(name,15,nil)
            elseif p[name].randomerino==3 then
                tfm.exec.playEmote(name,16,nil)
            end
        end
    end
    numplayers=#players
    for k,v in pairs(tfm.get.room.playerList) do
        if p[k].dance==true then
            ui.updateTextArea(1,"<b><p align = 'center'><font size='30'>Banland�n. :(</font></p></b>",k)
        elseif p[k].spectator==true then
            ui.updateTextArea(1,"<b><p align = 'center'><font size='30'> Oyuna kat�lmak i�in !join yaz.</font></p></b>",k)
        end
    end
    local IDList={}
    for id, object in pairs(tfm.get.room.objectList) do
        table.insert(IDList, id)
    end
    for i, id in pairs(IDList) do
        if others[id].summonobject==true and timestamplol[id]<os.time()-3000 then
            tfm.exec.removeObject(id)
            others[id].summonobject=false
        end
    end
    if numplayers<2 then
        one=true
    else
        one=false
    end
    if one==true then
        ui.updateTextArea(1, "<p align='center'><b><font size='15'>Oynamak ��in en az 2 Oyuncuya �htiya� Var.</font></b></p>", nil)
        timestamp=os.time()-4000	
    elseif timestamp < os.time()-10000 and begin==false then
        timestamp=os.time()
        begin=true
        restart=false
        ui.updateTextArea(1, "<p align='center'><b><font size='30'>Haydi Oyuna Ba�layal�m! </font></b></p>", nil)
        for name,player in pairs(tfm.get.room.playerList) do
            tfm.exec.movePlayer(name,400,320,false,0,0,false)
        end
    elseif timestamp < os.time()-5000 and begin==false then
        local i=1
        local long=""
        local hname=""
        while i<=numplayers do
            hname=players[i]
            if p[hname].spectator==false and tfm.get.room.playerList[hname].isDead==false and p[hname].out==false then
                long=long..tostring(players[i])..", "
            end
            i=i+1
        end
        ui.updateTextArea(1, "<p align='center'><b><font size='15'>Oynayanlar: "..string.sub(long,1,-3)..".</font></b></p>", nil)
    elseif timestamp < os.time()-3000 and begin==false and restart==true then
        ui.updateTextArea(1, "<p align='center'><b><font size='20'>Oyun Tekrar Ba�layacak...", nil)
    end
    if begin==true then
        if timestamp < os.time()-3000 and start==true then
            tfm.exec.movePlayer(questioner,400,320,false,0,0,false)
            tfm.exec.movePlayer(answerer,400,320,false,0,0,false)
            answerer=""
            questioner=""
            local j=1
            local i=0
            while j<=numplayers do
                pname=players[j]
                if p[pname].questioners==false and tfm.get.room.playerList[pname].isDead==false and p[pname].spectator==false and p[pname].out==false then
                    i=i+1
                end
                j=j+1
            end
            if i>0 then
                eventTruthOrDare()
            else
                local j=1
            while j<=numplayers do
                local name=players[j]
                p[name].questioners=false
                j=j+1
            end
            restart=true
            timestamp=os.time()
            begin=false
        end
    end
    if choose==true and one==false then
        rand=math.random(1,numplayers)
        answerer=players[rand]
        if questioner==answerer or tfm.get.room.playerList[answerer].isDead or p[answerer].spectator==true or answerer==answererold or p[answerer].out==true then
            ui.updateTextArea(1, "<p align='center'><b><font size='30'>RASTGELE...</font></b></p>", nil)
            tfm.exec.movePlayer(answerer,400,320,false,0,0,false)
            answerer=""
        else
            choose=false
            ui.updateTextArea(1, "<b><font size='15'>"..answerer.." Cevaplay�c�! Do�rulukmu Cesaretmi Se�iyor...</font></b>", nil)
            ui.addPopup(3,1,"Cevaplay�c�s�n! Do�rulu�u Se�mek istermisin?, Cesareti �stersen Hay�ra Bas!",answerer,250,50,300,true)
        end
    elseif choosey==true and one==false then
        rand=math.random(1,numplayers)
        questioner=players[rand]
        if p[questioner].questioners==false and tfm.get.room.playerList[questioner].isDead==false and p[questioner].spectator==false or p[questioner].out==false then
            choosey=false
            p[questioner].questioners=true
            ui.updateTextArea(1, "<b><font size='15'>"..questioner.." Se�ildi! Bakal�m Kimi Se�ecek...</font></b>", nil)
            ui.addPopup(1,1,"Rastgele Cevaplay�c� �stermisin? �stemezsen <b>Hay�ra</b>, Bas Ve Nickini  Yaz",questioner,250,50,300,true)
        else
            ui.updateTextArea(1, "<p align='center'><b><font size='30'>RASTGELE...</font></b></p>", nil)
            tfm.exec.movePlayer(questioner,400,320,false,0,0,false)
            questioner=""
        end
    end
    if skip==true then
        ui.updateTextArea(1, "<p align='center'><b><font size='30'>Skipping turn...</font></b></p>", nil)
        tfm.exec.movePlayer(questioner,400,320,false,0,0,false)
        tfm.exec.movePlayer(answerer,400,320,false,0,0,false)
        answerer=""
        questioner=""
        if timestamp < os.time()-3000 then
            start=true
            skip=false
        end
    end
    tfm.exec.movePlayer(questioner,120,120,false,0,0,false)
    tfm.exec.movePlayer(answerer,680,120,false,0,0,false)
    end
end
 
function eventTruthOrDare()
    start=false
    ui.removeTextArea(2)
    ui.removeTextArea(3)
    choosey=true
end
 
function eventPopupAnswer(id, name, answer)
    if id==1 and name==questioner then
        if answer=="yes" then
            answererold=""
            choose=true
        elseif answer=="no" then
            ui.addPopup(2,2,"Hangi Cevaplay�c�y� �stiyorsun?",questioner,250,50,300,true)
        end
    elseif id==2 and name==questioner then
        x=1
        found=false
        answer=string.upper(string.sub(answer,0,1))..string.sub(answer,2)
        answer=string.gsub(answer, "<", "&lt;")
        answer=string.gsub(answer, "http", "")
        while x<=numplayers do
        print(players[x])
            if answer==players[x] then
            answerer=answer
            if questioner==answerer or tfm.get.room.playerList[answerer].isDead or p[answerer].spectator==true or p[answerer].out==true then
            answerer=""
            found=false
            else
            ui.updateTextArea(1, "<b><font size='15'>"..answerer.." Cevalay�c�! Do�ruluk Veya Cesaret Se�mesini bekleyin...</font></b>", nil)
            ui.addPopup(3,1,"Cevaplay�c�s�n! Do�rulu�u �stermisin? �stemezsen <b>Hay�ra</b>Bas!",answerer,250,50,300,true)
            found=true
            end
            end
            x=x+1
        end
        if found==false then
            ui.addPopup(2,2,"There is no such answerer in the room. Type out the exact username of your answerer.",questioner,250,50,300,true)
        end
    elseif id==3 and name==answerer then   
        if answer=="yes" then
            ui.updateTextArea(1, "<b><font size='15'>"..answerer.." Do�rulu�u Se�ti! Sor Soruyu > "..questioner.."...</font></b>", nil)  
            ui.addPopup(4,1,"Rastgele Do�ruluk Sorusu �stermisin? E�er �stemezsen<b>Hay�ra Bas</b>,",questioner,250,50,300,true)
        elseif answer=="no" then
            ui.updateTextArea(1, "<b><font size='15'>"..answerer.." Cesareti Se�ti! Sor Soruyu>"..questioner.."...</font></b>", nil)
            ui.addPopup(5,1,"Rastgele Cesaret �stermisin E�er istemezsen? If <b>Hay�ra</b>, Bas.",questioner,250,50,300,true)
               
        end
    elseif id==4 and name==questioner then
        if answer=="yes" then
            question=truth[math.random(1,#truth)]
            ui.updateTextArea(1, "<b><font size='15'>"..questioner.." Rastgele Do�ruluk Sorusu Se�ti! Bekleyin > "..answerer.." to respond...</font></b>", nil)
            ui.addTextArea(2,"<b><font size='20'>Truth: "..question.."</font></b>",nil,165,20,470,120,0x324650,0x212F36,0.8,true)
            ui.addPopup(8,2,"<b>Type your Truth answer below</b>",answerer,250,175,300,true)
           
        elseif answer=="no" then
            ui.addPopup(6,2,"Type your Truth question below, or type #(number) for the question number from the random list.",questioner,250,50,300,true)
        end
    elseif id==5 and name==questioner then
        if answer=="yes" then
            question=dare[math.random(1,#dare)]
            ui.updateTextArea(1, "<b><font size='15'>"..questioner.." Rastgele Cesaret Sorusu Se�ti! Bekleyin> "..answerer.." to respond...</font></b>", nil) 
            ui.addTextArea(2,"<b><font size='20'>Soru: "..question.."</font></b>",nil,165,20,470,120,0x324650,0x212F36,0.8,true)
            ui.addPopup(9,1,"<b><font size='15'>Se�tiki> "..questioner.."Cesaretin Varsa! Kabul Et!</font><b>",answerer,250,175,300,true)
        elseif answer=="no" then
            ui.addPopup(7,2,"Type your Dare below, or type #(number) for the dare number from the random list.",questioner,250,50,300,true)
        end
    elseif id==6 and name==questioner then
        answer=string.gsub(answer, "<", "&lt;")
        answer=string.gsub(answer, "http", "")
        if answer=="" then
        ui.addPopup(6,2,"You have to type something as your Truth question.",questioner,250,50,300,true)
        elseif string.sub(answer,0,1)=="#" and tonumber(string.sub(answer,2,3))<=#truth then
        question=truth[tonumber(string.sub(answer,2,3))]
        ui.updateTextArea(1, "<b><font size='15'>"..questioner.." Do�ruluk Sorusunu Se�ti! Bekleyin > "..answerer.."Seri L�tfen...</font></b>", nil)   
        ui.addTextArea(2,"<b><font size='20'>Soru: "..question.."</font></b>",nil,165,20,470,120,0x324650,0x212F36,0.8,true)
        ui.addPopup(8,2,"Type your Truth answer below",answerer,250,175,300,true)
        elseif string.sub(answer,0,1)=="#" and tonumber(string.sub(answer,2,3))>#truth then
        ui.addPopup(6,2,"You have to type a Truth question number less than or equal to "..tostring(#truth),questioner,250,50,300,true)
        else
        question=answer
        ui.updateTextArea(1, "<b><font size='15'>"..questioner.." Do�ruluk Sorusunu Sordu! Cevapla Bakal�m > "..answerer.." to respond...</font></b>", nil)   
        ui.addTextArea(2,"<b><font size='20'>Soru: "..question.."</font></b>",nil,165,20,470,120,0x324650,0x212F36,0.8,true)
        ui.addPopup(8,2,"Type your Truth answer below",answerer,250,175,300,true)
        end
    elseif id==7 and name==questioner then
        answer=string.gsub(answer, "<", "&lt;")
        answer=string.gsub(answer, "http", "")
        if answer=="" then
            ui.addPopup(7,2,"You have to type something as your Dare.",questioner,250,50,300,true)
        elseif string.sub(answer,0,1)=="#" and tonumber(string.sub(answer,2,3))<=#dare then
            if tonumber(string.sub(answer,2,3))==14 then
            mapcomplete=true
            end
            question=dare[tonumber(string.sub(answer,2,3))]
            ui.updateTextArea(1, "<b><font size='15'>"..questioner.." has typed a Dare question! Waiting for "..answerer.." to respond...</font></b>", nil)
            ui.addTextArea(2,"<b><font size='15'>Dare: "..question.."</font></b>",nil,165,20,470,120,0x324650,0x212F36,0.8,true)
            ui.addPopup(9,1,"<b><font size='15'>Dedi�ini> "..questioner.."kabul ediyorsan evet�e bas</font><b>",answerer,250,175,300,true)
        elseif string.sub(answer,0,1)=="#" and tonumber(string.sub(answer,2,3))>#dare then
        ui.addPopup(7,2,"You have to type a Dare number less than or equal to "..tostring(#dare),questioner,250,50,300,true)
        else
            question=answer    ui.addPopup(999,0,"<p align = 'center'><font size='40' face='impact'>�i�e �evirmece</font></p><font size='20' color='#FF0000'><b>Oyun Devilstkrkpro Taraf�ndan Yap�lm��t�r...                               </b></font><font size='15'>\Oyun s�n�rs�z ki�i say�s�yla oynanabilir, fakat 1 ki�i soran ki�i ve 1 ki�i cevaplay�c� ki�i olarak 2 ki�i sistem taraf�ndan se�ilir. Oyun ad�mlar� oyunun i�inde g�sterilmi�tir. �yi Oyunlar!!! �uanl�k <b>"..#truth.."</b> tane Sistem Taraf�ndan Sorulan Do�ruluk Sorusu Ve <b>"..#dare.."</b> Tane Sistem Taraf�ndan Yapt�r�lan Cesaret Se�ene�i Vard�r. \n<font color='#00FF00'>Yap�mc�: Devilstrkpro</font> \n</font><font face='impact' size='20'>T�m Komutlar� G�rmek ��in !commands </font>",nil,100,50,600,true)
            ui.updateTextArea(1, "<b><font size='15'>"..questioner.." has typed a Dare question! Waiting for "..answerer.." to respond...</font></b>", nil)
            ui.addTextArea(2,"<b><font size='15'>Dare: "..question.."</font></b>",nil,165,20,470,120,0x324650,0x212F36,0.8,true)
            ui.addPopup(9,1,"<b><font size='15'>Dediki>"..questioner.."Kabul Ediyorsan Evete Bas</font><b>",answerer,250,175,300,true)
        end
    elseif id==8 and name==answerer then
        answer=string.gsub(answer, "<", "&lt;")
        answer=string.gsub(answer, "http", "")
        ans = answer
        if ans=="" then
        ui.addPopup(8,2,"You have to type something as your Truth Answer",answerer,250,175,300,true)
        else
        ui.addTextArea(3,"<b><font size='20'>Cevaplay�c�: "..ans.."</font></b>",nil,165,140,470,120,0x324650,0x212F36,0.8,true)
        ui.updateTextArea(1, "<b><font size='15'>"..answerer.." Soruyu Cevaplad�! Bekleyin > "..questioner.." </font></b>", nil)   
        ui.addPopup(10,1,"<b><font size='15'>Cevapdan Memnunmusun?",questioner,250,50,300,true)
        end
    elseif id==9 and name==answerer then
        if answer=="yes" then
            ui.addTextArea(3,"<b><font size='20'> "..answerer..", Kabul Ediyorum.</font></b>",nil,165,140,470,120,0x324650,0x212F36,0.8,true)
            if mapcomplete==true then
            ui.updateTextArea(1, "<b><font size='15'>"..answerer.." is a warrior! He/she will have to complete the map before entering the game. Starting new game...</font></b>", nil)
            p[answerer].out=true
            mapcomplete=false
            for i=1,#players do
                if players[i]==answerer then
                    table.remove(players,i)
                end
            end
            else
            ui.updateTextArea(1, "<b><font size='15'>"..answerer.." is a warrior! Starting new game...</font></b>", nil)   
            end
            timestamp=os.time()
            answerer=""
            questioner=""
            start=true
            for name,player in pairs(tfm.get.room.playerList) do
            tfm.exec.movePlayer(name,400,320,false,0,0,false)
            p[name].new=false
            print("false")
            end        
        elseif answer=="no" then
            mapcomplete=false
            ui.updateTextArea(1, "<b><font size='15'>"..answerer.." Korkak! Yeni Oyun Ba�l�yor...</font></b>", nil)
            ui.addTextArea(3,"<b><font size='20'> "..answerer..", Ben Korka��m Bunu Yapamam .</font></b>",nil,165,140,470,120,0x324650,0x212F36,0.8,true)
            timestamp=os.time()
            answerer=""
            questioner=""
            start=true
            for name,player in pairs(tfm.get.room.playerList) do
            tfm.exec.movePlayer(name,400,320,false,0,0,false)
            p[name].new=false
            print("false")
            end        
        end
    elseif id==10 and name==questioner then
        if answer=="yes" then
            ui.updateTextArea(1, "<b><font size='15'>"..questioner.." Cevapdan Memnun! Yeni Oyun Ba�l�yor.</font></b>", nil)
            timestamp=os.time()
            answerer=""
            questioner=""
            start=true
            for name,player in pairs(tfm.get.room.playerList) do
            tfm.exec.movePlayer(name,400,320,false,0,0,false)
            p[name].new=false
            print("false")
            end
        elseif answer=="no" then
            ui.updateTextArea(1, "<b><font size='15'>"..questioner.."Cevapdan Memnun De�il. Yeni Oyun Ba�l�yor.</font></b>", nil)
            timestamp=os.time()
            answerer=""
            questioner=""
            start=true         
            for name,player in pairs(tfm.get.room.playerList) do
            tfm.exec.movePlayer(name,400,320,false,0,0,false)
            p[name].new=false
            print("false")
            end
        end
    end
end
 
function eventPlayerLeft(name)
    ui.updateTextArea(1, "<p align='center'><b><font size='15'>"..name.." Odadan Ayr�ld�... </font></b></p>", nil)
    if questioner==name or answerer==name then
        timestamp=os.time()
        skip=true
    end
    for i=1,#players do
        if players[i]==name then
        table.remove(players,i)
        end
    end
end
 
function eventPlayerDied(name)
    if p[name].spectator==true then
        tfm.exec.respawnPlayer(name)
    end
    if p[name].dance==true then
        tfm.exec.killPlayer(name)
        if name==questioner or name==answerer then
            timestamp=os.time()
            skip=true
        end
    end
end
 
function eventPlayerWon(playerName,timeElapsed, timeElapsedSinceRespawn)
tfm.exec.respawnPlayer(playerName)
if p[playerName].out==true then
p[playerName].out=false
table.insert(players,playerName)
print("yes")
ui.updateTextArea(1, "<p align='center'><b><font size='15'>"..playerName.." completed the map in "..(timeElapsedSinceRespawn/100).." seconds! He/she has joined back the game!</font></b></p>", nil)
else
ui.updateTextArea(1, "<p align='center'><b><font size='15'>"..playerName.." completed the map in "..(timeElapsedSinceRespawn/100).." seconds!</font></b></p>", nil)
end
end
 
function eventSummoningEnd(playerName, objectType, xPosition, yPosition, angle, xSpeed, ySpeed, other)
timestamplol[other.id]=os.time()
others[other.id]={summonobject=true}
end
    end
    elseif string.sub(command,0,3)=="ban" and p[name].admin==true then
        local c=0
        local reason=""
        if string.find(command," ",5)==nil then
            message=string.sub(command,5)
        else
            c=string.find(command," ",5)
            print(c)
            message=string.sub(command,5,c-1)
            reason=string.sub(command,c+1)
            print(reason)
        end
        message=string.upper(string.sub(message,0,1))..string.sub(message,2)
        for k,v in pairs(tfm.get.room.playerList) do
            if message==k then
                ui.updateTextArea(1, "<p align='center'><b><font size='15' color='#ED67EA'>[~#T/D Moderation] "..message.." has been banned for 9999 hours. Reason: "..reason.."</font></b></p>", nil)
                p[message].ban=true
                tfm.exec.killPlayer(k)
                for i=1,#players do
                    if players[i]==k then
                        table.remove(players,i)
                    end
                end
            end
        end
    elseif string.sub(command,0,5)=="unban" and p[name].admin==true then
        message=string.sub(command,7)
        message=string.upper(string.sub(message,0,1))..string.sub(message,2)
        for k,v in pairs(tfm.get.room.playerList) do
            if message==k then
                ui.updateTextArea(1, "<p align='center'><b><font size='15' color='#ED67EA'>[~#T/D Moderation] "..message.." has been unbanned.</font></b></p>", nil)
                p[message].ban=false
                tfm.exec.respawnPlayer(k)
                table.insert(players,k)
            end
        end
    elseif string.sub(command,0,5)=="admin" and p[name].admin==true then
        message=string.sub(command,7)
        message=string.upper(string.sub(message,0,1))..string.sub(message,2)
        for k,v in pairs(tfm.get.room.playerList) do
            if message==k then
                ui.updateTextArea(1, "<p align='center'><b><font size='15' color='#ED67EA'>[~#T/D Moderation] "..message.." is now a moderator. Congrats!</font></b></p>", nil)
                p[message].admin=true
            end
        end
    elseif string.sub(command,0,7)=="unadmin" and p[name].admin==true then
        message=string.sub(command,9)
        message=string.upper(string.sub(message,0,1))..string.sub(message,2)
        for k,v in pairs(tfm.get.room.playerList) do
            if message==k then
                ui.updateTextArea(1, "<p align='center'><b><font size='15' color='#ED67EA'>[~#T/D Moderation] "..message.." is demoded. What a waste!</font></b></p>", nil)
                p[message].admin=false
            end
        end
    end
end
 
function eventLoop(time,remaining)
    if dance==true then
        for name,player in pairs(tfm.get.room.playerList) do
            if p[name].randomerino==1 then
                tfm.exec.playEmote(name,0,nil)
            elseif p[name].randomerino==2 then
                tfm.exec.playEmote(name,15,nil)
            elseif p[name].randomerino==3 then
                tfm.exec.playEmote(name,16,nil)
            end
        end
    end
    numplayers=#players
    for k,v in pairs(tfm.get.room.playerList) do
        if p[k].dance==true then
            ui.updateTextArea(1,"<b><p align = 'center'><font size='30'>Banland�n. :(</font></p></b>",k)
        elseif p[k].spectator==true then
            ui.updateTextArea(1,"<b><p align = 'center'><font size='30'> Oyuna kat�lmak i�in !join yaz.</font></p></b>",k)
        end
    end
    local IDList={}
    for id, object in pairs(tfm.get.room.objectList) do
        table.insert(IDList, id)
    end
    for i, id in pairs(IDList) do
        if others[id].summonobject==true and timestamplol[id]<os.time()-3000 then
            tfm.exec.removeObject(id)
            others[id].summonobject=false
        end
    end
    if numplayers<2 then
        one=true
    else
        one=false
    end
    if one==true then
        ui.updateTextArea(1, "<p align='center'><b><font size='15'>Oynamak ��in en az 2 Oyuncuya �htiya� Var.</font></b></p>", nil)
        timestamp=os.time()-4000	
    elseif timestamp < os.time()-10000 and begin==false then
        timestamp=os.time()
        begin=true
        restart=false
        ui.updateTextArea(1, "<p align='center'><b><font size='30'>Haydi Oyuna Ba�layal�m! </font></b></p>", nil)
        for name,player in pairs(tfm.get.room.playerList) do
            tfm.exec.movePlayer(name,400,320,false,0,0,false)
        end
    elseif timestamp < os.time()-5000 and begin==false then
        local i=1
        local long=""
        local hname=""
        while i<=numplayers do
            hname=players[i]
            if p[hname].spectator==false and tfm.get.room.playerList[hname].isDead==false and p[hname].out==false then
                long=long..tostring(players[i])..", "
            end
            i=i+1
        end
        ui.updateTextArea(1, "<p align='center'><b><font size='15'>Oynayanlar: "..string.sub(long,1,-3)..".</font></b></p>", nil)
    elseif timestamp < os.time()-3000 and begin==false and restart==true then
        ui.updateTextArea(1, "<p align='center'><b><font size='20'>Oyun Tekrar Ba�layacak...", nil)
    end
    if begin==true then
        if timestamp < os.time()-3000 and start==true then
            tfm.exec.movePlayer(questioner,400,320,false,0,0,false)
            tfm.exec.movePlayer(answerer,400,320,false,0,0,false)
            answerer=""
            questioner=""
            local j=1
            local i=0
            while j<=numplayers do
                pname=players[j]
                if p[pname].questioners==false and tfm.get.room.playerList[pname].isDead==false and p[pname].spectator==false and p[pname].out==false then
                    i=i+1
                end
                j=j+1
            end
            if i>0 then
                eventTruthOrDare()
            else
                local j=1
            while j<=numplayers do
                local name=players[j]
                p[name].questioners=false
                j=j+1
            end
            restart=true
            timestamp=os.time()
            begin=false
        end
    end
    if choose==true and one==false then
        rand=math.random(1,numplayers)
        answerer=players[rand]
        if questioner==answerer or tfm.get.room.playerList[answerer].isDead or p[answerer].spectator==true or answerer==answererold or p[answerer].out==true then
            ui.updateTextArea(1, "<p align='center'><b><font size='30'>RASTGELE...</font></b></p>", nil)
            tfm.exec.movePlayer(answerer,400,320,false,0,0,false)
            answerer=""
        else
            choose=false
            ui.updateTextArea(1, "<b><font size='15'>"..answerer.." Cevaplay�c�! Do�rulukmu Cesaretmi Se�iyor...</font></b>", nil)
            ui.addPopup(3,1,"Cevaplay�c�s�n! Do�rulu�u Se�mek istermisin?, Cesareti �stersen Hay�ra Bas!",answerer,250,50,300,true)
        end
    elseif choosey==true and one==false then
        rand=math.random(1,numplayers)
        questioner=players[rand]
        if p[questioner].questioners==false and tfm.get.room.playerList[questioner].isDead==false and p[questioner].spectator==false or p[questioner].out==false then
            choosey=false
            p[questioner].questioners=true
            ui.updateTextArea(1, "<b><font size='15'>"..questioner.." Se�ildi! Bakal�m Kimi Se�ecek...</font></b>", nil)
            ui.addPopup(1,1,"Rastgele Cevaplay�c� �stermisin? �stemezsen <b>Hay�ra</b>, Bas Ve Nickini  Yaz",questioner,250,50,300,true)
        else
            ui.updateTextArea(1, "<p align='center'><b><font size='30'>RASTGELE...</font></b></p>", nil)
            tfm.exec.movePlayer(questioner,400,320,false,0,0,false)
            questioner=""
        end
    end
    if skip==true then
        ui.updateTextArea(1, "<p align='center'><b><font size='30'>Skipping turn...</font></b></p>", nil)
        tfm.exec.movePlayer(questioner,400,320,false,0,0,false)
        tfm.exec.movePlayer(answerer,400,320,false,0,0,false)
        answerer=""
        questioner=""
        if timestamp < os.time()-3000 then
            start=true
            skip=false
        end
    end
    tfm.exec.movePlayer(questioner,120,120,false,0,0,false)
    tfm.exec.movePlayer(answerer,680,120,false,0,0,false)
    end
end
 
function eventTruthOrDare()
    start=false
    ui.removeTextArea(2)
    ui.removeTextArea(3)
    choosey=true
end
 
function eventPopupAnswer(id, name, answer)
    if id==1 and name==questioner then
        if answer=="yes" then
            answererold=""
            choose=true
        elseif answer=="no" then
            ui.addPopup(2,2,"Hangi Cevaplay�c�y� �stersin?",questioner,250,50,300,true)
        end
    elseif id==2 and name==questioner then
        x=1
        found=false
        answer=string.upper(string.sub(answer,0,1))..string.sub(answer,2)
        answer=string.gsub(answer, "<", "&lt;")
        answer=string.gsub(answer, "http", "")
        while x<=numplayers do
        print(players[x])
            if answer==players[x] then
            answerer=answer
            if questioner==answerer or tfm.get.room.playerList[answerer].isDead or p[answerer].spectator==true or p[answerer].out==true then
            answerer=""
            found=false
            else
            ui.updateTextArea(1, "<b><font size='15'>"..answerer.." Cevalay�c�! Do�ruluk Veya Cesaret Se�mesini bekleyin...</font></b>", nil)
            ui.addPopup(3,1,"Cevaplay�c�s�n! Do�rulu�u �stiyorsan <b>Evete</b>, Cesareti istiyorsan <b>Hay�ra</b>Bas!",answerer,250,50,300,true)
            found=true
            end
            end
            x=x+1
        end
        if found==false then
            ui.addPopup(2,2,"There is no such answerer in the room. Type out the exact username of your answerer.",questioner,250,50,300,true)
        end
    elseif id==3 and name==answerer then   
        if answer=="yes" then
            ui.updateTextArea(1, "<b><font size='15'>"..answerer.." Do�rulu�u Se�ti! Sor Soruyu > "..questioner.."...</font></b>", nil)  
            ui.addPopup(4,1,"Do�ruluk Sorusunu sistemin sormas�n� �stermisin? E�er �stemezsen<b>Hay�ra Bas</b>,",questioner,250,50,300,true)
        elseif answer=="no" then
            ui.updateTextArea(1, "<b><font size='15'>"..answerer.." Cesareti Se�ti! Sor Soruyu>"..questioner.."...</font></b>", nil)
            ui.addPopup(5,1,"Cesaret Sorususu sistemin sormas�n� �stermisin �stemezsen?<b>Hay�ra</b>Bas!",questioner,250,50,300,true)
               
        end
    elseif id==4 and name==questioner then
        if answer=="yes" then
            question=truth[math.random(1,#truth)]
            ui.updateTextArea(1, "<b><font size='15'>"..questioner.." Rastgele Do�ruluk Sorusu Se�ti! Cevaplamas�n� Bekleyin > "..answerer.."...</font></b>", nil)
            ui.addTextArea(2,"<b><font size='20'>Sory: "..question.."</font></b>",nil,165,20,470,120,0x324650,0x212F36,0.8,true)
            ui.addPopup(8,2,"<b>Type your Truth answer below</b>",answerer,250,175,300,true)
           
        elseif answer=="no" then
            ui.addPopup(6,2,"Type your Truth question below, or type #(number) for the question number from the random list.",questioner,250,50,300,true)
        end
    elseif id==5 and name==questioner then
        if answer=="yes" then
            question=dare[math.random(1,#dare)]
            ui.updateTextArea(1, "<b><font size='15'>"..questioner.." Rastgele Cesaret Sorusu Se�ti! Bekleyin> "..answerer.." to respond...</font></b>", nil) 
            ui.addTextArea(2,"<b><font size='20'>Dare: "..question.."</font></b>",nil,165,20,470,120,0x324650,0x212F36,0.8,true)
            ui.addPopup(9,1,"<b><font size='15'>Se�tiki> "..questioner.."Cesaretin Varsa! Kabul Et!</font><b>",answerer,250,175,300,true)
        elseif answer=="no" then
            ui.addPopup(7,2,"Type your Dare below, or type #(number) for the dare number from the random list.",questioner,250,50,300,true)
        end
    elseif id==6 and name==questioner then
        answer=string.gsub(answer, "<", "&lt;")
        answer=string.gsub(answer, "http", "")
        if answer=="" then
        ui.addPopup(6,2,"You have to type something as your Truth question.",questioner,250,50,300,true)
        elseif string.sub(answer,0,1)=="#" and tonumber(string.sub(answer,2,3))<=#truth then
        question=truth[tonumber(string.sub(answer,2,3))]
        ui.updateTextArea(1, "<b><font size='15'>"..questioner.." Do�ruluk Sorusunu Se�ti! Bekleyin > "..answerer.."Seri L�tfen:)...</font></b>", nil)   
        ui.addTextArea(2,"<b><font size='20'>Soru: "..question.."</font></b>",nil,165,20,470,120,0x324650,0x212F36,0.8,true)
        ui.addPopup(8,2,"Type your Truth answer below",answerer,250,175,300,true)
        elseif string.sub(answer,0,1)=="#" and tonumber(string.sub(answer,2,3))>#truth then
        ui.addPopup(6,2,"You have to type a Truth question number less than or equal to "..tostring(#truth),questioner,250,50,300,true)
        else
        question=answer
        ui.updateTextArea(1, "<b><font size='15'>"..questioner.." Do�ruluk Sorusunu Sordu! Cevapla Bakal�m > "..answerer.." to respond...</font></b>", nil)   
        ui.addTextArea(2,"<b><font size='20'>Soru: "..question.."</font></b>",nil,165,20,470,120,0x324650,0x212F36,0.8,true)
        ui.addPopup(8,2,"Type your Truth answer below",answerer,250,175,300,true)
        end
    elseif id==7 and name==questioner then
        answer=string.gsub(answer, "<", "&lt;")
        answer=string.gsub(answer, "http", "")
        if answer=="" then
            ui.addPopup(7,2,"You have to type something as your Dare.",questioner,250,50,300,true)
        elseif string.sub(answer,0,1)=="#" and tonumber(string.sub(answer,2,3))<=#dare then
            if tonumber(string.sub(answer,2,3))==14 then
            mapcomplete=true
            end
            question=dare[tonumber(string.sub(answer,2,3))]
            ui.updateTextArea(1, "<b><font size='15'>"..questioner.." has typed a Dare question! Waiting for "..answerer.." to respond...</font></b>", nil)
            ui.addTextArea(2,"<b><font size='15'>Dare: "..question.."</font></b>",nil,165,20,470,120,0x324650,0x212F36,0.8,true)
            ui.addPopup(9,1,"<b><font size='15'>Dediki> "..questioner.."Cesaretin varsa evete t�kla</font><b>",answerer,250,175,300,true)
        elseif string.sub(answer,0,1)=="#" and tonumber(string.sub(answer,2,3))>#dare then
        ui.addPopup(7,2,"You have to type a Dare number less than or equal to "..tostring(#dare),questioner,250,50,300,true)
        else
            question=answer
            ui.updateTextArea(1, "<b><font size='15'>"..questioner.." has typed a Dare question! Waiting for "..answerer.." to respond...</font></b>", nil)
            ui.addTextArea(2,"<b><font size='15'>Dare: "..question.."</font></b>",nil,165,20,470,120,0x324650,0x212F36,0.8,true)
            ui.addPopup(9,1,"<b><font size='15'>Dediki>"..questioner.."kabul ediyorsan evete bas</font><b>",answerer,250,175,300,true)
        end
    elseif id==8 and name==answerer then
        answer=string.gsub(answer, "<", "&lt;")
        answer=string.gsub(answer, "http", "")
        ans = answer
        if ans=="" then
        ui.addPopup(8,2,"You have to type something as your Truth Answer",answerer,250,175,300,true)
        else
        ui.addTextArea(3,"<b><font size='20'>Cevap: "..ans.."</font></b>",nil,165,140,470,120,0x324650,0x212F36,0.8,true)
        ui.updateTextArea(1, "<b><font size='15'>"..answerer.." Soruyu Cevaplad�! Bekleyin > "..questioner.." to rate the answer</font></b>", nil)   
        ui.addPopup(10,1,"<b><font size='15'>Cevapdan Memnunmusun?",questioner,250,50,300,true)
        end
    elseif id==9 and name==answerer then
        if answer=="yes" then
            ui.addTextArea(3,"<b><font size='20'> "..answerer..", Kabul Ediyorum.</font></b>",nil,165,140,470,120,0x324650,0x212F36,0.8,true)
            if mapcomplete==true then
            ui.updateTextArea(1, "<b><font size='15'>"..answerer.." is a warrior! He/she will have to complete the map before entering the game. Starting new game...</font></b>", nil)
            p[answerer].out=true
            mapcomplete=false
            for i=1,#players do
                if players[i]==answerer then
                    table.remove(players,i)
                end
            end
            else
            ui.updateTextArea(1, "<b><font size='15'>"..answerer.." is a warrior! Starting new game...</font></b>", nil)   
            end
            timestamp=os.time()
            answerer=""
            questioner=""
            start=true
            for name,player in pairs(tfm.get.room.playerList) do
            tfm.exec.movePlayer(name,400,320,false,0,0,false)
            p[name].new=false
            print("false")
            end        
        elseif answer=="no" then
            mapcomplete=false
            ui.updateTextArea(1, "<b><font size='15'>"..answerer.." Yeni Oyun Ba�l�yor...</font></b>", nil)
            ui.addTextArea(3,"<b><font size='20'> "..answerer..", Ben Korka��m Bunu Yapamam .</font></b>",nil,165,140,470,120,0x324650,0x212F36,0.8,true)
            timestamp=os.time()
            answerer=""
            questioner=""
            start=true
            for name,player in pairs(tfm.get.room.playerList) do
            tfm.exec.movePlayer(name,400,320,false,0,0,false)
            p[name].new=false
            print("false")
            end        
        end
    elseif id==10 and name==questioner then
        if answer=="yes" then
            ui.updateTextArea(1, "<b><font size='15'>"..questioner.." Cevapdan Memnun! Yeni Oyun Ba�l�yor...</font></b>", nil)
            timestamp=os.time()
            answerer=""
            questioner=""
            start=true
            for name,player in pairs(tfm.get.room.playerList) do
            tfm.exec.movePlayer(name,400,320,false,0,0,false)
            p[name].new=false
            print("false")
            end
        elseif answer=="no" then
            ui.updateTextArea(1, "<b><font size='15'>"..questioner.."Cevapdan Memnun De�il...:( Yeni Oyun Ba�l�yor...</font></b>", nil)
            timestamp=os.time()
            answerer=""
            questioner=""
            start=true         
            for name,player in pairs(tfm.get.room.playerList) do
            tfm.exec.movePlayer(name,400,320,false,0,0,false)
            p[name].new=false
            print("false")
            end
        end
    end
end
 
function eventPlayerLeft(name)
    ui.updateTextArea(1, "<p align='center'><b><font size='15'>"..name.." Odadan ayr�ld�!</font></b></p>", nil)
    if questioner==name or answerer==name then
        timestamp=os.time()
        skip=true
    end
    for i=1,#players do
        if players[i]==name then
        table.remove(players,i)
        end
    end
end
 
function eventPlayerDied(name)
    if p[name].spectator==false then
        tfm.exec.respawnPlayer(name)
    end
    if p[name].ban==true then
        tfm.exec.killPlayer(name)
        if name==questioner or name==answerer then
            timestamp=os.time()
            skip=true
        end
    end
end
 
function eventPlayerWon(playerName,timeElapsed, timeElapsedSinceRespawn)
tfm.exec.respawnPlayer(playerName)
if p[playerName].out==true then
p[playerName].out=false
table.insert(players,playerName)
print("yes")
ui.updateTextArea(1, "<p align='center'><b><font size='15'>"..playerName.." completed the map in "..(timeElapsedSinceRespawn/100).." seconds! He/she has joined back the game!</font></b></p>", nil)
else
ui.updateTextArea(1, "<p align='center'><b><font size='15'>"..playerName.." completed the map in "..(timeElapsedSinceRespawn/100).." seconds!</font></b></p>", nil)
end
end
 
function eventSummoningEnd(playerName, objectType, xPosition, yPosition, angle, xSpeed, ySpeed, other)
timestamplol[other.id]=os.time()
others[other.id]={summonobject=true}
end

doll = "Manpegasus"
 
-- Insert YOUR name here without removing the quotation marks.
god = "Buriik"
-- That's it! You can now run the script and troll people!
 
-- Editing the following code is not advised.
 
-- Binding the keyboard for god(you)
-- 73 is I, the key for Up.
-- 75 is K, the key for Down
-- 74 is J, the key for Left.
-- 76 is L, the key for Right.
 
for name in pairs(tfm.get.room.playerList) do
-- Instead of binding each key seperately, we put them all in a group.
        for keys, k in pairs({73, 74, 75, 76}) do
--And now the keys are binded!
                tfm.exec.bindKeyboard(god, k, true, true)
        end
end
 
-- Listening for keyboard events.
-- You'll notice that move values are different because it makes the doll easier to control.
 
function eventKeyboard(god, key, down, x, y)
        if key == 73 then
--Moves the player Up by 50 pixels
                tfm.exec.movePlayer(doll, 0, 0, true, 0, -50, false)
        elseif key == 75 then
-- Moves the player Down by 40 pixels
                tfm.exec.movePlayer(doll, 0, 0, true, 0, 40, false)
        elseif key == 74 then
-- Moves the player Left by 40 pixels
                tfm.exec.movePlayer(doll, 0, 0, true, -40, 0, false)                
        elseif key == 76 then
-- Moves the player Right by 40 pixels
                tfm.exec.movePlayer(doll, 0, 0, true, 40, 0, false)                      
        end
end

function eventNewPlayer(name)
tfm.exec.bindKeyboard(name,32,true,true)
end
for name,player in pairs(tfm.get.room.playerList) do
eventNewPlayer(name)
         end
function eventKeyboard(name,key,down,x,y)
if key==32 then tfm.exec.movePlayer(name,0,0,true,0,-50,false)
end
end
 
-- Prints out your doll's name only to you.
 
print("<font color='#FFFF00'>"..doll.."<font color='#FFFF00'> is now your doll!")