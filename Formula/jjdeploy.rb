require 'formula'

class Jjdeploy < Formula
  homepage 'https://github.com/buscarini/jjdeploy'
  url 'https://github.com/buscarini/jjdeploy/archive/0.7.2.tar.gz'
  sha1 '33adb81ddcdb07f0c7f2103b50e92891db3d12ba'
  
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