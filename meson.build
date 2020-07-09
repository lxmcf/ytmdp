# Project setup
project('com.github.lxmcf.ytmdp', ['vala', 'c'], version: '0.0.1')
add_project_arguments ('-DHANDY_USE_UNSTABLE_API', language: 'c')

# Variables
gnome = import ('gnome')

# Use vala-lint if installed
vala_lint = find_program ('io.elementary.vala-lint', required : false)
if vala_lint.found ()
    test ('Vala lint', vala_lint)
else
    warning ('vala-lint was not found!')
endif

asresources = gnome.compile_resources (
    'as-resources', 'data/' + meson.project_name () + '.gresource.xml',
    source_dir: 'data',
    c_name: 'as'
)

dependencies = [
    dependency ('gtk+-3.0'),
    dependency ('libhandy-0.0'),
    dependency('webkit2gtk-4.0')
]

subdir ('src')

executable (
    meson.project_name (),
    sources,
    asresources,
    dependencies: dependencies,
    install: false
)
