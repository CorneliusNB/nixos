{ pkgs, ... }:

{
  wayland.windowManager.mango = {
    enable = true;
    settings = ''
    # see config.conf
    # More option see https://github.com/DreamMaoMao/mango/wiki/

    # --- Original Appearance & Behavior Settings ---
    # Window effect
    blur=0
    blur_layer=0
    blur_optimized=1
    blur_params_num_passes = 2
    blur_params_radius = 5
    blur_params_noise = 0.02
    blur_params_brightness = 0.9
    blur_params_contrast = 0.9
    blur_params_saturation = 1.2

    shadows = 0
    layer_shadows = 0
    shadow_only_floating = 1
    shadows_size = 10
    shadows_blur = 15
 
    shadows_position_x = 0
    shadows_position_y = 0
    shadowscolor= 0x000000ff

    border_radius=6
    no_radius_when_single=0
    focused_opacity=1.0
    unfocused_opacity=1.0

    # Animation Configuration
    animations=1
    layer_animations=1
    animation_type_open=slide
    animation_type_close=slide
    animation_fade_in=1
    animation_fade_out=1
    tag_animation_direction=1
    zoom_initial_ratio=0.3
    zoom_end_ratio=0.8
    fadein_begin_opacity=0.5
    fadeout_begin_opacity=0.8
    animation_duration_move=500
    animation_duration_open=400
    animation_duration_tag=350
    animation_duration_close=800
    animation_duration_focus=0
    animation_curve_open=0.46,1.0,0.29,1
    animation_curve_move=0.46,1.0,0.29,1
    animation_curve_tag=0.46,1.0,0.29,1
    animation_curve_close=0.08,0.92,0,1
    animation_curve_focus=0.46,1.0,0.29,1

    # Scroller Layout Setting
    scroller_structs=20
    scroller_default_proportion=0.8
    scroller_focus_center=0
    scroller_prefer_center=0
    edge_scroller_pointer_focus=1
    scroller_default_proportion_single=1.0
    scroller_proportion_preset=0.5,0.8,1.0

    # Master-Stack Layout Setting
    new_is_master=1
    default_mfact=0.55
    default_nmaster=1
    smartgaps=0

    # Overview Setting
    hotarea_size=10
    enable_hotarea=1
    ov_tab_mode=0
    overviewgappi=5
    overviewgappo=30

    # Misc
    no_border_when_single=0
    axis_bind_apply_timeout=100
    focus_on_activate=1
    inhibit_regardless_of_visibility=0
    sloppyfocus=1
    warpcursor=1
    focus_cross_monitor=0
    focus_cross_tag=0
    enable_floating_snap=0
    snap_distance=30
    cursor_size=24
    drag_tile_to_tile=1

    # keyboard
    repeat_rate=25
    repeat_delay=600
    numlockon=0
    xkb_rules_layout=us

    # Trackpad
    disable_trackpad=0
    tap_to_click=1
    tap_and_drag=1
    drag_lock=1
    trackpad_natural_scrolling=0
    disable_while_typing=1
    left_handed=0
    middle_button_emulation=0
    swipe_min_threshold=1

    # mouse
    mouse_natural_scrolling=0

    # Appearance (Catppuccin Latte)
    gappih=5
    gappiv=5
    gappoh=10
    gappov=10
    scratchpad_width_ratio=0.8
    scratchpad_height_ratio=0.9
    borderpx=1
    bordercolor=0xeff1f5ff   
    focuscolor=0x4c4f69ff

    # layout support
    tagrule=id:1,layout_name:scroller
    tagrule=id:2,layout_name:scroller
    tagrule=id:3,layout_name:scroller
    tagrule=id:4,layout_name:scroller
    tagrule=id:5,layout_name:scroller
    tagrule=id:6,layout_name:scroller
    tagrule=id:7,layout_name:scroller
    tagrule=id:8,layout_name:scroller
    tagrule=id:9,layout_name:scroller

    # --- NEW Key Bindings ---
    
    # Programs (Mappings preserved: foot->kitty, menu.sh->vicinae)
    bind=SUPER,Return,spawn,kitty
    bind=SUPER,d,spawn,vicinae toggle
    bind=SUPER,s,spawn,gscreenshot 

    # --- Preserved Volume/Brightness Control (SwayOSD) ---
    bind=NONE,XF86AudioRaiseVolume,spawn,swayosd-client --output-volume raise
    bind=NONE,XF86AudioLowerVolume,spawn,swayosd-client --output-volume lower
    bind=NONE,XF86AudioMute,spawn,swayosd-client --output-volume mute-toggle
    bind=NONE,XF86AudioMicMute,spawn,swayosd-client --input-volume mute-toggle
    bind=NONE,XF86MonBrightnessUp,spawn,swayosd-client --brightness raise
    bind=NONE,XF86MonBrightnessDown,spawn,swayosd-client --brightness lower

    # Tags
    bind=SUPER,1,comboview,1
    bind=SUPER,2,comboview,2
    bind=SUPER,3,comboview,3
    bind=SUPER,4,comboview,4
    bind=SUPER,5,comboview,5
    bind=SUPER,6,comboview,6
    bind=SUPER,7,comboview,7
    bind=SUPER,8,comboview,8
    bind=SUPER,9,comboview,9

    # tag: move client to the tag and focus it
    # tagsilent: move client to the tag and not focus it
    # bind=Alt,1,tagsilent,1
    bind=SUPER+SHIFT,1,tagsilent,1,0
    bind=SUPER+SHIFT,2,tagsilent,2,0
    bind=SUPER+SHIFT,3,tagsilent,3,0
    bind=SUPER+SHIFT,4,tagsilent,4,0
    bind=SUPER+SHIFT,5,tagsilent,5,0
    bind=SUPER+SHIFT,6,tagsilent,6,0
    bind=SUPER+SHIFT,7,tagsilent,7,0
    bind=SUPER+SHIFT,8,tagsilent,8,0
    bind=SUPER+SHIFT,9,tagsilent,9,0


    # Master manipulation
    bind=SUPER,i,set_proportion,1.0
    bind=SUPER,p,switch_proportion_preset,
    
    # System
    bind=SUPER,q,killclient
    bind=SUPER+SHIFT,r,reload_config
    bind=SUPER,m,quit

    # Layouts
    bind=SUPER,t,setlayout,tile
    bind=SUPER,v,setlayout,vertical_grid
    bind=SUPER,c,setlayout,spiral
    bind=SUPER,x,setlayout,scroller
    bind=SUPER,n,switch_layout
    bind=SUPER,a,togglegaps

    bind=SUPER+SHIFT,f,togglefullscreen,
    bind=SUPER,f,togglefloating,

    # smartmovewin
    bind=CTRL+SHIFT,k,smartmovewin,up
    bind=CTRL+SHIFT,j,smartmovewin,down
    bind=CTRL+SHIFT,h,smartmovewin,left
    bind=CTRL+SHIFT,l,smartmovewin,right

    # switch window focus
    bind=SUPER,j,focusstack,next
    bind=SUPER,k,focusstack,prev
    bind=SUPER,h,focusdir,left
    bind=SUPER,l,focusdir,right

    # swap window
    bind=SUPER+SHIFT,k,exchange_client,up
    bind=SUPER+SHIFT,j,exchange_client,down
    bind=SUPER+SHIFT,h,exchange_client,left
    bind=SUPER+SHIFT,l,exchange_client,right

    # Gesturebind
    gesturebind=none,left,3,focusdir,left
    gesturebind=none,right,3,focusdir,right
    gesturebind=none,up,3,focusdir,up
    gesturebind=none,down,3,focusdir,down
    gesturebind=none,left,4,viewtoleft_have_client
    gesturebind=none,right,4,viewtoright_have_client
    gesturebind=none,up,4,toggleoverview
    gesturebind=none,down,4,toggleoverview
    bind=SUPER,0,toggleoverview

    # Mouse Button Bindings
    mousebind=SUPER,btn_left,moveresize,curmove
    mousebind=SUPER,btn_right,moveresize,curresize
    
    # Layer Rules (Preserved)
    layerrule=animation_type_open:zoom,layer_name:vicinae
    layerrule=animation_type_close:zoom,layer_name:vicinae
   '';

   autostart_sh = ''
   # see autostart.sh
   # Note: here no need to add shebang
   vicinae server &
   waybar &
   waypaper --restore &
   swayosd-server &
   soteria &
   '';
  };
}
