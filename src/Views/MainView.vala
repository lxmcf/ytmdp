namespace YTMDP {
    public class MainView : WebKit.WebView {
        public MainView () {
            Object (
                expand: true
            );
        }

        construct {
            WebKit.Settings webkit_settings = new WebKit.Settings () {
                default_font_family = Gtk.Settings.get_default ().gtk_font_name,
                enable_accelerated_2d_canvas = true,
                enable_back_forward_navigation_gestures = true,
                enable_dns_prefetching = true,
                enable_html5_database = true,
                enable_html5_local_storage = true,
                enable_smooth_scrolling = true,
                enable_webgl = true,
                hardware_acceleration_policy = WebKit.HardwareAccelerationPolicy.ON_DEMAND
            };

            settings = webkit_settings;
            web_context = new WebContext ();
        }
    }
}
