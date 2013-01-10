http_path   = '/'

if environment == :production
  css_dir = 'dist/css'
else
  css_dir = 'assets/css'
end

sass_dir    = 'assets/sass'
images_dir  = 'assets/img'

output_style = (environment == :production) ? :compressed : :expanded
relative_assets = true

sass_options = {:debug_info => true}