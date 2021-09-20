(local lgi (require :lgi))
(local Gtk (lgi.require "Gtk"))
(local Handy (lgi.require "Handy"))
(Handy:init)


(var window (Gtk.Window {
                :title "CarouselTest" 
                :default_width 400 
                :default_height 400 }))

(var carousel (Handy.Carousel {
                :allow_mouse_drag true
                :interactive true }))
(carousel:prepend (Gtk.Label { :label "First Element "}))
(carousel:prepend (Gtk.Label { :label "Second Element "}))
(carousel:prepend (Gtk.Label { :label "Third Element "}))
(window:add carousel)
(tset window :on_delete_event (lambda [] (Gtk.main_quit)))
(window:show_all)
(Gtk.main)