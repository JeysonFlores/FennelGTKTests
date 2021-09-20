(local lgi (require :lgi))
(local Gtk (lgi.require "Gtk"))
(local Handy (lgi.require "Handy"))
(Handy:init)


(var window (Gtk.Window {
                :title "DeckTest" 
                :default_width 400 
                :default_height 400 }))

(var deck (Handy.Deck {
                :can_swipe_back true
                :can_swipe_forward true
                :vhomogeneous true
                :hhomogeneous true
                :expand true
                :transition_type Handy.DeckTransitionType.SLIDE }))

(deck:add (Gtk.Label { :label "First View" }))
(deck:add (Gtk.Label { :label "Second View" }))
(deck:add (Gtk.Label { :label "Third View" }))
(window:add deck)
(tset window :on_delete_event (lambda [] (Gtk.main_quit)))
(window:show_all)
(Gtk.main)