(local lgi (require :lgi))
(local Gtk (lgi.require "Gtk"))
(local Granite (lgi.require "Granite"))


(local window (Gtk.Window {
                :title "AccelLabelTest" 
                :default_width 400 
                :default_height 400 }))

(local accel_label (Granite.AccelLabel { :label "Hello World!" }))

(window:add accel_label)
(tset window :on_delete_event (lambda [] (Gtk.main_quit)))
(window:show_all)
(Gtk.main)