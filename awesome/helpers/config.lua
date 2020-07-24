local gears = require('gears');
local beautiful = require('beautiful');
local xrdb = beautiful.xresources.get_current_theme();

return {
  global = {
    m = 10,
    r = 7,
    o = 0.35,
    slider = 30,
    user = gears.filesystem.get_configuration_dir()..'/helpers/andy-emoji-linicorn.png',
  },
  colors = {
    b = '#333538',
    t = '#00000000',
    w = '#fefefe',
    f = '#C9DDFC80',
    xf = xrdb.foreground,
    xb = xrdb.background,
    x0 = xrdb.color0, 
    x1 = xrdb.color1,
    x2 = xrdb.color2,
    x3 = xrdb.color3,
    x4 = xrdb.color4,
    x5 = xrdb.color5,
    x6 = xrdb.color6,
    x7 = xrdb.color7,
    x8 = xrdb.color8,
    x9 = xrdb.color9,
    x10 = xrdb.color10,
    x11 = xrdb.color11,
    x12 = xrdb.color12,
    x13 = xrdb.color13,
    x14 = xrdb.color14,
    x15 = xrdb.color15,
  },
  fonts = {
    is = "MaterialDesignIconsDesktop 12",
    im = "MaterialDesignIconsDesktop 14",
    il = "MaterialDesignIconsDesktop 20",
    ixxl = "MaterialDesignIconsDesktop 100",
    ts = "SF Pro Rounded 9",
    tm = "SF Pro Rounded 10",
    tl = "SF Pro Rounded 12",
    tsl = "SF Pro Rounded Light 9",
    tml = "SF Pro Rounded Light 10",
    tll = "SF Pro Rounded Light 12",
    tsb = "SF Pro Rounded Semibold 9",
    tmb = "SF Pro Rounded Semibold 10",
    tlb = "SF Pro Rounded Semibold 12",
    txlb = "SF Pro Rounded Semibold 15",
    txxlb = "SF Pro Rounded Semibold 25",
    mlb = "Operator Mono Lig Bold 12",
    mll = "Operator Mono Lig Light 12",
    m = "Operator Mono Lig",
    t = "SF Pro Rounded",
    i = "MaterialDesignIconsDesktop",
  },
  lock = {
    w = 400,
    h = 330,
    hh = 230,
    a = 100,
  },
  topbar = {
    h = 30,
    w = 30,
  },
  tagswitcher= {
    h = 120,
  },
  hub = {
    i = 40,
    w = 800,
    h = 600,
    nw = 260,
  },
  icons = {
    arch = '󰣇',
    power = '󰐥',
    date = '󰸘',
    time = '󰅐',
    vol_mute = '󰝟',
    vol_1 = '󰕿',
    vol_2 = '󰖀',
    vol_3 = '󰕾',
    wifi = '󰖩',
    wifix = '󰖪',
    bt = '󰂯',
    btx = '󰂲',
    pac = '󰏗',
    mem = '󰍛',
    lan = '󰲝',
    lanx = '󰲜',
    note = '󰀠',
    web = '󰖟',
    system = '󰄨',
    display = '󰇄',
    media = '󰝚',
    theme = '󰸌',
    down = '󰳜',
    close = '󰅖',
    clear = '󰎟',
    lock = '󰍁',
    unlock = '󰍀',
    play = '󰐌',
    pause = '󰏥',
    next = '󰒭',
    prev = '󰒮',
    spot = '󰓇',
  },
  commands = {
    getbrightness = gears.filesystem.get_configuration_dir()..'helpers/getbrightness.sh',
    setbrightness = gears.filesystem.get_configuration_dir()..'helpers/setbrightness.sh',
    art = gears.filesystem.get_configuration_dir()..'helpers/albumart.sh',
    getwall = gears.filesystem.get_configuration_dir()..'helpers/wall.sh',
    resize = gears.filesystem.get_configuration_dir()..'helpers/resize.sh',
    cpucmd = gears.filesystem.get_configuration_dir()..'helpers/cpu.sh',
    ramcmd = gears.filesystem.get_configuration_dir()..'helpers/ram.sh',
    diskcmd = gears.filesystem.get_configuration_dir()..'helpers/disk.sh',
    wifiup = gears.filesystem.get_configuration_dir()..'helpers/wifiup.sh',
    lanup = gears.filesystem.get_configuration_dir()..'helpers/lanup.sh',
    btup = gears.filesystem.get_configuration_dir()..'helpers/btup.sh',
    btdevices = gears.filesystem.get_configuration_dir()..'helpers/btdevices.sh',
    btdevice = gears.filesystem.get_configuration_dir()..'helpers/btdevice.sh',
    idle = 'bash -c "xidlehook --not-when-audio --timer 500 \'echo lock\' \'\'"',
    proccmd = 'bash -c "ps -eo comm:43,%mem,%cpu --sort=-%mem,-%cpu | head -n 6"',
    synccmd = 'bash -c "yay -Syy"',
    updatescmd = 'bash -c "yay -Sup | wc -l"',
    ismuted = 'bash -c "pamixer --get-mute | diff <(echo \"true\") -"',
    vol = 'bash -c "pamixer --get-volume"',
    setvol = 'pamixer --set-volume ',
    mute = 'bash -c "pamixer -t"',
    ssid = 'bash -c "iwgetid -r"',
    setwall = 'nitrogen',
    browser = "brave-beta",
    editor = "code",
    terminal = "urxvt",
    files = "nautilus",
    spotify = "spotify",
    rofi = "rofi -show drun -theme config-global",
    software = "pamac-manager",
    pause = "spotifycli --pause",
    play = "spotifycli --play",
    next = "spotifycli --next",
    prev = "spotifycli --prev",
    artist = "spotifycli --artist",
    song = "spotifycli --song",
    album = "spotifycli --album",
    isplaying = 'bash -c "spotifycli --playbackstatus | diff <(echo \"▶\") -"',
  },
  notifications = {
    active = {},
    w = 200,
  },
  display = {
    sw = 120,
  }
};