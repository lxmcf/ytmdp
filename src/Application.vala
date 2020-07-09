namespace YTMDP {
    public class Application : Gtk.Application {
        private static Application _instance = null;
        public static Application instance {
            get {
                if (_instance == null) {
                    _instance = new Application ();
                }

                return _instance;
            }
        }

        public Application () {
            Object (
                application_id: "com.github.com.ytmdp"
            );
        }

        protected override void activate () {
            Gtk.CssProvider provider = new Gtk.CssProvider ();
            provider.load_from_resource ("/com/github/lxmcf/ytmdp/application.css");
            Gtk.StyleContext.add_provider_for_screen (
                Gdk.Screen.get_default (),
                provider,
                Gtk.STYLE_PROVIDER_PRIORITY_APPLICATION
            );

            MainWindow window = new MainWindow (this);
            window.show_all ();

            SimpleAction action_quit = new SimpleAction ("quit", null);
            add_action (action_quit);
            set_accels_for_action ("app.quit", {"<Ctrl>Q"});

            action_quit.activate.connect (() => {
                quit ();
            });
        }
    }
}
