require 'formula'

class Jjdeploy < Formula
  homepage 'https://github.com/buscarini/jjdeploy'
  url 'https://github.com/buscarini/jjdeploy/archive/0.8.7.tar.gz'
  sha256 'e93fea3156ab6d30ffc0a1c7fd6b72848332a3d4ab03aed6dd7347dcc424cd1d'
  
  def install
    prefix.install 'jjdeploy_resources','jjdeploy.config'

    bin.install 'jjdeploy'
    bin.install 'upload.py'
    bin.install 'askpass.py'
    bin.install 'xcbuildsafe.sh'
  end

  test do
    system "#{bin}/jjdeploy", '--version'
  end
end