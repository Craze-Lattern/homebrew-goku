class Mst < Formula
  desc 'Tool to analyze iOS app size'
  homepage 'https://github.com/guoyuan94/mst'
  url 'https://github.com/guoyuan94/mst.git',
      tag: '0.3.0',
      revision: 'eda795cdcaa3cd743cd1c31903b4b4375e13a9b6'
  head 'https://github.com/guoyuan94/mst.git'

  bottle do
    root_url 'https://github.com/guoyuan94/mst/releases/download/0.3.0'
    cellar :any_skip_relocation
    sha256 '5c26cb2b39f8eba16b479a85a1d25ea63b078308dabb8fef4eb00894b9a9d3d8' => :mojave
  end

  depends_on xcode: ['10.2', :build]

  def install
    system 'make', 'prefix_install', "PREFIX=#{prefix}", "TEMPORARY_FOLDER=#{buildpath}/mst.dst"
  end

  test do
    system 'false'
  end
end
