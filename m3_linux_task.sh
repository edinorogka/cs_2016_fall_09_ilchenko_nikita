wget -q -O volleyball.txt http://vc-dynamo.ru/command/players/ ; grep -o -E 'pltit.*?<\/b>' volleyball.txt > volleyball1.txt ; grep -o -E 'Рост: ...' volleyball.txt > volleyball2.txt ; sed -e 's/pltit>/Игрок-/' -e 's/<\/span>&nbsp;/ /' -e 's/<\/b>/ /' volleyball1.txt > volleyball3.txt ; paste --delimiters=- volleyball3.txt volleyball2.txt > Players.txt ; rm volleyball[123].txt volleyball.txt
