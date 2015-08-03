require 'formula'

class Jjdeploy < Formula
  homepage 'https://github.com/buscarini/jjdeploy'
  url 'https://github.com/buscarini/jjdeploy/archive/0.7.1.tar.gz'
  sha1 'eb8a81483868e350a8dc277d2be511f07e98d212'
  
  def install
    prefix.install 'jjdeploy_resources','jjdeploy.config'

    bin.install 'jjdeploy'
    bin.install 'upload.py'
    bin.install 'askpass.py'
  end

  test do
    system "#{bin}/jjdeploy", '--version'
  end
end