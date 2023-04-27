require 'gtk3'
###################################################################################################################
## this section creates a window for the gui

window = Gtk::Window.new
window.set_title("games")
window.set_default_size(800,800)
window.signal_connect("destroy") {Gtk.main_quit}
########################################################################################################
 notebook = Gtk::Notebook.new


     gameslist =  Gtk::Notebook.new
     gameslist.set_tab_pos(Gtk::PositionType::LEFT)
     title1 = Gtk::Label.new('factorio')
     gameslist.append_page(title1, Gtk::Label.new('factorio'))

     title2 = Gtk::Label.new('dwarf fortress')
     gameslist.append_page(title2, Gtk::Label.new('dwarf Fortress'))
notebook.append_page(gameslist, Gtk::Label.new('games'))
##############################################################################################################
window.add(notebook)
window.show_all
window.signal_connect("destroy") {Gtk.main_quit}
Gtk.main
