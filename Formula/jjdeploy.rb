require 'formula'

class Jjdeploy < Formula
  homepage 'https://github.com/buscarini/jjdeploy'
  url "https://github.com/buscarini/jjdeploy/archive/0.9.3.tar.gz"
  sha256 "fb8f65c6d20f55bd3a52348137d7da1b27e3542eb09c2ed08f05e37ea998041c"
  
  def install
    prefix.install 'jjdeploy_resources','jjdeploy.config'

    bin.install 'bin/jjdeploy'
    bin.install 'bin/upload.py'
    bin.install 'bin/uploadSFTP.py'
    bin.install 'bin/askpass.py'
    bin.install 'bin/xcbuildsafe.sh'
    
    #system "pip", "install", "paramiko", "--user", "python"
  end

  test do
    system "#{bin}/jjdeploy", '--version'
  end
end
