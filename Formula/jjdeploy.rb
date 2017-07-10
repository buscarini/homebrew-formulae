require 'formula'

class Jjdeploy < Formula
  homepage 'https://github.com/buscarini/jjdeploy'
  url "https://github.com/buscarini/jjdeploy/archive/0.9.0.tar.gz"
  sha256 "9bf8f6461e416022d7b2b2cbbe764826692c6be4a86f22aa5753a93e441bd19e"
  
  def install
    prefix.install 'jjdeploy_resources','jjdeploy.config'

    bin.install 'bin/jjdeploy'
    bin.install 'bin/upload.py'
    bin.install 'bin/askpass.py'
    bin.install 'bin/xcbuildsafe.sh'
    
    system "pip", "install", "paramiko", "--user", "python"
  end

  test do
    system "#{bin}/jjdeploy", '--version'
  end
end
