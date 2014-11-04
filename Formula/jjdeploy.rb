require 'formula'

class JJDeploy < Formula
  homepage 'https://github.com/buscarini/jjdeploy'
  url 'https://github.com/buscarini/jjdeploy/archive/0.0.4.tar.gz'
  sha1 'a082dc385d1dd51f86d911a2920445dc8023c1ff'

  depends_on 'xcproj' => :recommended

  def install
    prefix.install 'jjdeploy_resources','jjdeploy.config'

    bin.install 'jjdeploy'
  end

  test do
    system "#{bin}/jjdeploy", '--version'
  end
end