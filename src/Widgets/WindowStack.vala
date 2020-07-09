namespace YTMDP {
    public class WindowStack : Gtk.Stack {
        private MainView web_view;

        public WindowStack () {
            transition_duration = 320;
            transition_type = Gtk.StackTransitionType.UNDER_UP;

            get_style_context ().add_class ("backgroundDark");

            Gtk.Image logo = new Gtk.Image.from_resource ("/com/github/lxmcf/ytmdp/icon.png");

            web_view = new MainView ();
            web_view.load_uri ("https://music.youtube.com/");

            add_named (logo, "loading");
            add_named (web_view, "main");

            web_view.load_changed.connect ((load_event) => {
                if (load_event == WebKit.LoadEvent.FINISHED) {
                    visible_child_name = "main";
                }
            });
        }
    }
}
