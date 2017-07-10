require 'formula'

class Jjdeploy < Formula
  homepage 'https://github.com/buscarini/jjdeploy'
  url "https://github.com/buscarini/jjdeploy/archive/0.9.2.tar.gz"
  sha256 "bbfff7e655f59bfa1820cc90952c9f211b1e71ace0b75b1d594daf7a89b73ae2"
  
  def install
    prefix.install 'jjdeploy_resources','jjdeploy.config'

    bin.install 'bin/jjdeploy'
    bin.install 'bin/upload.py'
    bin.install 'bin/askpass.py'
    bin.install 'bin/xcbuildsafe.sh'
    
    #system "pip", "install", "paramiko", "--user", "python"
  end

  test do
    system "#{bin}/jjdeploy", '--version'
  end
end
