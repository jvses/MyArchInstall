/* See LICENSE file for copyright and license details. */

/* appearance */
static const unsigned int borderpx  = 2;        /* border pixel of windows */
static const unsigned int snap      = 32;       /* snap pixel */
static const int showbar            = 1;        /* 0 means no bar */
static const int topbar             = 1;        /* 0 means bottom bar */
static const unsigned int systraypinning = 0;   /* 0: sloppy systray follows selected monitor, >0: pin systray to monitor X */
static const unsigned int systrayonleft = 0;           /* 0: systray in the right corner, >0: systray on left of status text */
static const unsigned int systrayspacing = 2;   /* systray spacing */
static const int systraypinningfailfirst = 1;   /* 1: if pinning fails, display systray on the first monitor, False: display systray on the last monitor*/
static const int showsystray        = 1;     /* 0 means no systray */

static const char *fonts[]          = {"Gloria Hallelujah:style=Regular:size=8","adventure:size=12" };
static const char dmenufont[]       = "monospace:size=10";
static const char col_gray1[]       = "#222222";
static const char col_gray2[]       = "#444444";
static const char col_gray3[]       = "#bbbbbb";
static const char col_gray4[]       = "#eeeeee";
static const char col_cyan[]        = "#005577";
static const char col_urgborder[]   = "#ff0000";
//static const char *colors[][3]      = {
	/*               fg         bg         border   */
//	[SchemeNorm] = { col_gray3, col_gray1, col_gray2 },
//	[SchemeSel]  = { col_gray4, col_cyan,  col_cyan  },
//	[SchemeUrg]  = { col_gray4, col_cyan,  col_urgborder  },
//};

#include "/home/joao/.cache/wal/colors-wal-dwm.h"

/* tagging */
//static const char *tags[] = { "1", "2", "3", "4", "5", "6", "7", "8", "9" };
static const char *tags[] = { "", "", "", "", "", "", "7", "8", "9" };

static const Rule rules[] = {
	/* xprop(1):
	 *	WM_CLASS(STRING) = instance, class
	 *	WM_NAME(STRING) = title
	 */
	/* class      instance    title       tags mask     isfloating   monitor */
	{ "Gimp",     NULL,       NULL,       0,            1,           -1 },
	{ "Firefox",  NULL,       NULL,       1 << 8,       0,           -1 },
};

/* layout(s) */
static const float mfact     = 0.55; /* factor of master area size [0.05..0.95] */
static const int nmaster     = 1;    /* number of clients in master area */
static const int resizehints = 1;    /* 1 means respect size hints in tiled resizals */
static const int lockfullscreen = 1; /* 1 will force focus on the fullscreen window */

static const Layout layouts[] = {
	/* symbol     arrange function */
	{ "[]=",      tile },    /* first entry is default */
	{ "><>",      NULL },    /* no layout function means floating behavior */
	{ "[M]",      monocle },
	{ "|M|",      centeredmaster },
	{ ">M>",      centeredfloatingmaster },
};

/* key definitions */
#define MODKEY Mod4Mask
#define TAGKEYS(KEY,TAG) \
	{ MODKEY,                       KEY,      view,           {.ui = 1 << TAG} }, \
	{ MODKEY|ControlMask,           KEY,      toggleview,     {.ui = 1 << TAG} }, \
	{ MODKEY|ShiftMask,             KEY,      tag,            {.ui = 1 << TAG} }, \
	{ MODKEY|ControlMask|ShiftMask, KEY,      toggletag,      {.ui = 1 << TAG} },

/* helper for spawning shell commands in the pre dwm-5.0 fashion */
#define SHCMD(cmd) { .v = (const char*[]){ "/bin/sh", "-c", cmd, NULL } }

/* commands */
static char dmenumon[2] = "0"; /* component of dmenucmd, manipulated in spawn() */
static const char *dmenucmd[] = { "dmenu_run", "-m", dmenumon, "-fn", dmenufont, "-nb", norm_bg, "-nf", norm_fg, "-sb", sel_bg, "-sf", sel_fg, NULL };
//static const char *dmenucmd[] = { "dmenu_run", "-m", dmenumon, "-fn", dmenufont, "-nb", NULL };
static const char *termcmd[]  = { "st", NULL };

//Vou deixar a maioria das teclas semelhantes com o que eu tinha no i3
//mas vou manter muito do padrão do dwm
//
//

static Key keys[] = {
	/* modifier                     key        function        argument */
	{ MODKEY,                       XK_d,      spawn,          {.v = dmenucmd } },
	{ MODKEY,             XK_Return, spawn,          {.v = termcmd } },
	{ MODKEY,                       XK_b,      togglebar,      {0} }, //esconde/mostra a barra
	{ MODKEY,                       XK_j,      focusstack,     {.i = +1 } }, //desce o stack de foco
	{ MODKEY,                       XK_k,      focusstack,     {.i = -1 } }, //sobe o stack de foco
	{ MODKEY,                       XK_i,      incnmaster,     {.i = +1 } }, //puxa stack para a master
	{ MODKEY,                       XK_r,      incnmaster,     {.i = -1 } }, //tira o master e manda pro stack
	{ MODKEY,                       XK_h,      setmfact,       {.f = -0.05} },// puxa os stack para a esquerda diminuindo a master
	{ MODKEY,                       XK_l,      setmfact,       {.f = +0.05} },//puxa os stacks para a direita aumentado a master
	{ MODKEY|ShiftMask,                       XK_Return, zoom,           {0} }, // troca o stack selecionado com a master
	{ MODKEY,                       XK_Tab,    view,           {0} }, // troca com o workspace anterior
	{ MODKEY,           		XK_q,      killclient,     {0} }, // fecha a tela selecionada
	{ MODKEY,                       XK_t,      setlayout,      {.v = &layouts[0]} }, // aplica master/stack(M/S) comum
	{ MODKEY,                       XK_f,      setlayout,      {.v = &layouts[1]} }, // aplica float para tudo que dropar
	{ MODKEY,                       XK_g,      setlayout,      {.v = &layouts[2]} }, // Maximiza todas as telas 
	{ MODKEY,                       XK_u,      setlayout,      {.v = &layouts[3]} }, // aplica M/S com master centralizada
	{ MODKEY,                       XK_o,      setlayout,      {.v = &layouts[4]} }, // aplica M/S com master flutuante 
	{ MODKEY,                       XK_space,  setlayout,      {0} }, // troca para o modelo de stack anterior
	{ MODKEY|ShiftMask,             XK_space,  togglefloating, {0} }, // faz a tela virar flutuante
	{ MODKEY,                       XK_0,      view,           {.ui = ~0 } }, // Coloca pra ver tudo aberto numa tela só
	{ MODKEY|ShiftMask,             XK_0,      tag,            {.ui = ~0 } }, //pega a janela que vc está selecionando e arrasta pra onde vc ir
	{ MODKEY,                       XK_comma,  focusmon,       {.i = -1 } }, //não sei
	{ MODKEY,                       XK_period, focusmon,       {.i = +1 } }, //não sei
	{ MODKEY|ShiftMask,             XK_comma,  tagmon,         {.i = -1 } }, //não sei
	{ MODKEY|ShiftMask,             XK_period, tagmon,         {.i = +1 } }, //não sei
	TAGKEYS(                        XK_1,                      0)
	TAGKEYS(                        XK_2,                      1)
	TAGKEYS(                        XK_3,                      2)
	TAGKEYS(                        XK_4,                      3)
	TAGKEYS(                        XK_5,                      4)
	TAGKEYS(                        XK_6,                      5)
	TAGKEYS(                        XK_7,                      6)
	TAGKEYS(                        XK_8,                      7)
	TAGKEYS(                        XK_9,                      8)
	{ MODKEY|ShiftMask,             XK_q,      quit,           {0} },
};

/* button definitions */
/* click can be ClkTagBar, ClkLtSymbol, ClkStatusText, ClkWinTitle, ClkClientWin, or ClkRootWin */
static Button buttons[] = {
	/* click                event mask      button          function        argument */
	{ ClkTagBar,            MODKEY,         Button1,        tag,            {0} },
	{ ClkTagBar,            MODKEY,         Button3,        toggletag,      {0} },
	{ ClkWinTitle,          0,              Button2,        zoom,           {0} },
	{ ClkStatusText,        0,              Button2,        spawn,          {.v = termcmd } },
	{ ClkClientWin,         MODKEY,         Button1,        movemouse,      {0} },
	{ ClkClientWin,         MODKEY,         Button2,        togglefloating, {0} },
	{ ClkClientWin,         MODKEY,         Button3,        resizemouse,    {0} },
	{ ClkTagBar,            0,              Button1,        view,           {0} },
	{ ClkTagBar,            0,              Button3,        toggleview,     {0} },
	{ ClkTagBar,            MODKEY,         Button1,        tag,            {0} },
	{ ClkTagBar,            MODKEY,         Button3,        toggletag,      {0} },
};

