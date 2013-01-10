load 'config/deploy.rb'

BUILD_DIR = 'dist'

desc 'Compile site for production'
task :compile do
  # Build the site.
  FileUtils.rm_rf BUILD_DIR
  FileUtils.mkdir_p "#{BUILD_DIR}/assets"
  
  # Copy the assets.
  FileUtils.cp_r %w(assets/img), "#{BUILD_DIR}/assets"
  FileUtils.cp %w(index.html robots.txt), BUILD_DIR
  
  # Compile the Sass
  system 'compass compile -e production --force'

end

desc 'Deploy the site.'
task :deploy => ['compile'] do
  system "echo #{DEPLOY_USER}"
  system "rsync -avzP #{BUILD_DIR} #{DEPLOY_USER}@#{DEPLOY_SERVER}:#{DEPLOY_DIR}"
end