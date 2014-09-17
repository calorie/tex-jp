guard :shell do
  watch /\Atex\/(.+)\.tex\z/ do |m|
    rel_path = m[0]
    file_name = m[1]
    full_path = File.expand_path(m[0])
    tex  = File.expand_path(File.join(File.dirname(__FILE__), 'tex'))
    cmd  = <<-EOH
      cd #{File.join('/tex', full_path.gsub(tex, ''))}
      platex #{file_name}.tex
      dvipdfmx -o #{file_name}.pdf #{file_name}.dvi
    EOH
    Dir.chdir(File.dirname(rel_path)) do
      `docker run -t -i -v #{tex}:/tex:rw calorie/tex-jp:latest /sbin/my_init -- bash -c '#{cmd}'`
    end
  end
end