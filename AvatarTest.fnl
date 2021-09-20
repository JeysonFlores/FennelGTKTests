(local lgi (require :lgi))
(local Gtk (lgi.require "Gtk"))
(local Handy (lgi.require "Handy"))
(Handy:init)


(var window (Gtk.Window {
                :title "AvatarTest" 
                :default_width 400 
                :default_height 400 }))

(var avatar (Handy.Avatar {
                :size 8
                :text "Fennel"
                :show_initials true }))
(window:add avatar)
(tset window :on_delete_event (lambda [] (Gtk.main_quit)))
(window:show_all)
(Gtk.main)