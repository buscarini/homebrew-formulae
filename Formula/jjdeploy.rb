require 'formula'

class Jjdeploy < Formula
  homepage 'https://github.com/buscarini/jjdeploy'
  url "https://github.com/buscarini/jjdeploy/archive/0.8.8.tar.gz"
  sha256 "b09f50327b9160fe42b1ecd0a714853cdf0aa45dfdd1d3c67643759a9298f42b"
  
  def install
    prefix.install 'jjdeploy_resources','jjdeploy.config'

    bin.install 'bin/jjdeploy'
    bin.install 'bin/upload.py'
    bin.install 'bin/askpass.py'
    bin.install 'bin/xcbuildsafe.sh'
  end

  test do
    system "#{bin}/jjdeploy", '--version'
  end
end
