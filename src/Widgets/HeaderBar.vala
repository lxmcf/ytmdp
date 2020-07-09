namespace YTMDP {
    public class HeaderBar : Hdy.HeaderBar {
        public HeaderBar () {
            title = "YouTube Music";
            centering_policy = Hdy.CenteringPolicy.LOOSE;
            show_close_button = true;

            get_style_context ().add_class (Gtk.STYLE_CLASS_FLAT);
            get_style_context ().add_class ("backgroundDark");
        }
    }
}
