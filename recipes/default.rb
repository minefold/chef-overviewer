apt_repository "overviewer" do
  uri "http://overviewer.org/debian"
  distribution './'
end

package "minecraft-overviewer" do
  options "--force-yes"
end
