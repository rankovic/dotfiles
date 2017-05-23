SRC := $(pwd)

all: system
	
system:
	ln -fsv $(SRC)/system/Xresources ${HOME}/.Xresources 
	ln -fsv $(SRC)/sysyem/wallpaper.png ${HOME}/.wallpaper.png

clean:
	rm ${HOME}/.Xresources
	rm ${HOME}/.wallpaper.png
