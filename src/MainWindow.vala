namespace YTMDP {
    public class MainWindow : Gtk.Window {
        public HeaderBar header;
        public WindowStack stack;

        public MainWindow (Gtk.Application application) {
            Object (
                application: application,
                border_width: 0,
                resizable: true,
                title: "YouTube Music",
                window_position: Gtk.WindowPosition.CENTER
            );
        }

        construct {
            default_width = 800;
            default_height = 600;

            header = new HeaderBar ();
            stack = new WindowStack ();

            set_titlebar (header);
            add (stack);

            Gtk.Settings.get_default ().gtk_application_prefer_dark_theme = true;
        }
    }
}
