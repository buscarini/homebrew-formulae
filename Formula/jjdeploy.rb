require 'formula'

class Jjdeploy < Formula
  homepage 'https://github.com/buscarini/jjdeploy'
  url "https://github.com/buscarini/jjdeploy/archive/0.9.6.tar.gz"
  sha256 "561de50907afc0585eaeea62af977d783c8e19a37dedecd564293e7928f010d2"
  
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
