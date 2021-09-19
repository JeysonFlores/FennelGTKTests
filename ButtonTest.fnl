(local lgi (require :lgi))
(local Gtk (lgi.require "Gtk"))

(local window (Gtk.Window {
                :title "ButtonTest" 
                :default_width 400 
                :default_height 400 }))

(local button (Gtk.Button {
                :label "1" }))

(tset button :on_clicked (lambda []
                                (button:set_label (+ (tonumber (button:get_label)) 1))))

(window:add button)


(tset window :on_delete_event (lambda [] 
                                    (print "Window closed") 
                                    (Gtk.main_quit)))
(window:show_all)

(Gtk.main)
