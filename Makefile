SparklePony.exe : src/SparklePony.cs
	gmcs -pkg:gtk-sharp-2.0 -pkg:notify-sharp -pkg:dbus-sharp src/SparklePony.cs

install:
	mkdir -p /usr/share/local/sparklepony
	cp src/SparklePony.exe /usr/share/local/sparklepony/
	chmod 755 /usr/local/share/sparklepony/SparklePony.exe
	cp src/sparklepony /usr/local/bin/
	chmod 755 /usr/local/bin/sparklepony
	cp data/icons /usr/share/ -R

uninstall:
	rm /usr/local/bin/sparklepony
	rm /usr/share/local/sparklepony/SparklePony.exe
	rmdir /usr/share/local/sparklepony
	rm /usr/share/icons/hicolor/*x*/places/folder-publicshare.png

clean:
	rm src/SparklePony.exe