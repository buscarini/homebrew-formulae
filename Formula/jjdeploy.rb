require 'formula'

class Jjdeploy < Formula
  homepage 'https://github.com/buscarini/jjdeploy'
  url "https://github.com/buscarini/jjdeploy/archive/0.9.4.tar.gz"
  sha256 "df28ec83dd51078142472318e4da6f06093f24cf78bac78175bb1825728a1f4b"
  
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
