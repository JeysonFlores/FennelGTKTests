(local lgi (require :lgi))
(local Gtk (lgi.require "Gtk"))
(local Handy (lgi.require "Handy"))
(Handy:init)

(local headerbar (Handy.HeaderBar {
                :decoration_layout_set true
                :decoration_layout "close:"
                :show_close_button true
                :hexpand true
                :title "HandyWindowTest" }))

(local window (Handy.Window {
                :default_width 400 
                :default_height 400 }))

(local box (Gtk.Grid {
                :orientation Gtk.Orientation.VERTICAL
                :expand true }))

(box:add headerbar)
(box:add (Gtk.Label { 
                :label "This is a Window from libhandy!"
                :vexpand true }))
                
(window:add box)
(tset window :on_delete_event (lambda [] (Gtk.main_quit)))
(window:show_all)
(Gtk.main)