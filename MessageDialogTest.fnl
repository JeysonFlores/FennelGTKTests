(local lgi (require :lgi))
(local Gtk (lgi.require "Gtk"))
(local Granite (lgi.require "Granite"))
(local GLib (lgi.require "GLib"))

(var window (Gtk.Window {
                :title "MessageDialogTest" 
                :default_width 400 
                :default_height 400 }))
                
(var button (Gtk.Button { :label "Open a Dialog" }))
(tset button :on_clicked (fn []
                            (var dialog (Granite.MessageDialog {
                                            :primary_text "This is a custom dialog"
                                            :secondary_text "But running on Fennel!"
                                            :buttons Gtk.ButtonsType.CLOSE }))
                            (dialog:run)
                            (dialog:destroy)))
(window:add button)
(tset window :on_delete_event (lambda [] (Gtk.main_quit)))
(window:show_all)
(Gtk.main)