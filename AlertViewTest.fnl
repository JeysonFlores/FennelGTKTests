(local lgi (require :lgi))
(local Gtk (lgi.require "Gtk"))
(local Granite (lgi.require "Granite"))

(local window (Gtk.Window {
                :title "AlertViewTest" 
                :default_width 400 
                :default_height 400 }))

(local alert (Granite.WidgetsAlertView {
                :title "This is a test"
                :description "This test uses Fennel and Granite"
                :icon_name "applications-development" }))
(alert:show_action "Close this button")
(tset alert :on_action_activated (lambda [] (alert:hide_action)))

(window:add alert)
(tset window :on_delete_event (lambda [] (Gtk.main_quit)))
(window:show_all)
(Gtk.main)