namespace YTMDP {
    public class WebContext : WebKit.WebContext {
        public WebContext () {
            Object (
                process_swap_on_cross_site_navigation_enabled: true
            );

            var cookie_manager = get_cookie_manager ();
            cookie_manager.set_accept_policy (WebKit.CookieAcceptPolicy.ALWAYS);

            string config_directory = Path.build_path (
                Path.DIR_SEPARATOR_S,
                Environment.get_user_config_dir (),
                Environment.get_prgname ()
            );

            DirUtils.create_with_parents (config_directory, 0700);

            string cookies = Path.build_filename (config_directory, "cookies");
            cookie_manager.set_persistent_storage (cookies, WebKit.CookiePersistentStorage.SQLITE);

            set_process_model (WebKit.ProcessModel.MULTIPLE_SECONDARY_PROCESSES);
            set_sandbox_enabled (true);
        }
    }
}
