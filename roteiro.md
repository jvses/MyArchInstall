# DWM (tutorial básico completo + customização) aulão

### Instalando pacotes padrão

sudo pacman xorg-server xorg-xinit xorg-xsetroot xorg-xrandr

* Explicação do DWM dos suckless

 mostar o site

 falar do pq usar o direto e não o que tá no pacman aplicação dos patches

 falar dos display managers

criar pasta nova pra compilar eles
baixar e descompactar os programas
compilar o DWM o DMENU e o ST manualmente

### Ajustar o inico deles no display manager e com o xinitrc

criar o xsecssion e configurar o arquivo do xinitrc
* A seção em  /usr/share/xsessions/
* crie o dwm.desktop e coloque nele:

````shell
[Desktop Entry]
Name=DWM
Comment=DWM
Icon=dwm
Type=XSession
````





* Para criar a seção do xinitrc vc instala o software da AUR xinit-session e torna o arquivo executável

Crie o xinitrc copiando ele da pasta (precisa do pacote xorg-xinit)

cp /etc/X11/xinit/xinitrc ~/.xinitrc
edite o arquivo apagando tudo o que sucede o último if e adicione o seguinte:

````shell
while true; do
dwm >/dev/null 2>&1
done

#Executando o dwm
exec dwm
````

 

#### Explicar o início no DispMan e o pelo terminal em instalação crua

* Inicar o DWM que acabou de saír de fábrica (NÃO APERTA O SUPER+SHIFT+Q)
* demonstrar as configurações padrões dele e dos softwars que o acopanham
* Mudar a tecla super de Alt para o Wind.
* Recompilar, sair e voltar para o DWM
* programas na inicialização (Xinit vs autostart)

## Customizações

#### Amortecedores

* Simple X Hot Key Daemon (SXHKD)
* Rofi

> Fork do rofi nesse git https://github.com/adi1090x/rofi





#### Fontes

* instalando fontes novas
> Hack Nerd Font
>
> Font Manager


* Esquema dos emojis (Para o DWM)

   vim drw.c

````c
FcBool iscol;
    if(FcPatternGetBool(xfont->pattern, FC_COLOR, 0, &iscol) == FcResultMatch && iscol) {
        XftFontClose(drw->dpy, xfont);
        return NULL;
    }

````

- procura por iscol e apague o que tá na linha 143 até a 147, que é o trecho acima

#### Back-ground
* usando o feh ou nitrogem

````shel
#nitrogen --restore
#feh --bg-scale ~/img/Adventure/Wall1.jpg &
#feh --bg-scale ~/img/Bluey/Tree.jpg &
````



#### Aplicando patches

* baixando eles do suckless
* aplicando eles
patch -p1 < nome_do_patch.diff (ou então sem o '-p1')
* Reconpila
* Re-executa, saindo e entrando do dwm
* executando a aplicação manual do patch

##### Meus patches:
* **Urgent Border** (necessário para a customização com o Pywal)
* **Autostart** (inica seviços que eu uso)
* **Centered Master** ( cria mais 2 modos de exibção)
* **Pertag** (Mantém um modo de exibição para cara área de trabalho)
* **Systray**  (Habilita e exibe o systray de aplicações que o possue)


#### Customizações com o Pywal
* Instalando o pywal
* demostrando
* vendo os arquivos de cache
* aplicando eles no dwm, no st e no dmenu


#### Dwmblocks

* são outros 500, mas vamos lá