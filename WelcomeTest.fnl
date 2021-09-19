(local lgi (require :lgi))
(local Gtk (lgi.require "Gtk"))
(local Granite (lgi.require "Granite"))


(local window (Gtk.Window {
                :title "WelcomeTest" 
                :default_width 400 
                :default_height 400 }))

(local welcome (Granite.WidgetsWelcome {
                :title "WelcomeTest"
                :subtitle "A Fennel Test" }))

(welcome:append "network-workgroup" "Fennel Official Page" "The Official Website of Fennel.")
(welcome:append "applications-development" "LGI Bindings" "GTK Bindings for Lua.")              
(tset welcome :on_activated (fn [object index] 
                                (if (= index 0)
                                        (os.execute "xdg-open https://fennel-lang.org/")
                                    (= index 1)
                                        (os.execute "xdg-open https://github.com/pavouk/lgi"))))

; Alternative Way to define a function signal
;(fn welcome.on_activated [object index]
;    (print index))

(window:add welcome)
(tset window :on_delete_event (lambda [] (Gtk.main_quit)))
(window:show_all)
(Gtk.main)
