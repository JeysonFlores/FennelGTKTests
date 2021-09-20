(local lgi (require :lgi))
(local Gtk (lgi.require "Gtk"))
(local Granite (lgi.require "Granite"))


(var window (Gtk.Window {
                :title "DatePickerTest" 
                :default_width 400 
                :default_height 400 }))
                
(var datepicker (Granite.WidgetsDatePicker {}))
(window:add datepicker)
(tset window :on_delete_event (lambda [] (Gtk.main_quit)))
(window:show_all)
(Gtk.main)
