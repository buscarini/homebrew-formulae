require 'formula'

class Jjdeploy < Formula
  homepage 'https://github.com/buscarini/jjdeploy'
  url 'https://github.com/buscarini/jjdeploy/archive/0.8.6.tar.gz'
  sha256 '8974a0365911c6217a252bf3ab837b0c31c392531acb8da324cd54bcd57f0d99'
  
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