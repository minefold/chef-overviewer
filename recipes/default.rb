include_recipe 'git'
include_recipe 'python::pip'

package 'python-dev'
package 'python-imaging'
python_pip 'numpy'

git "/opt/overviewer" do
  repository 'git://github.com/overviewer/Minecraft-Overviewer.git'
  reference node['overviewer']['rev']
end

bash "build overviewer" do
  cwd "/opt/overviewer"
  code 'python setup.py build'
end
link "/usr/local/bin/overviewer.py" do
  to "/opt/overviewer/overviewer.py"
end