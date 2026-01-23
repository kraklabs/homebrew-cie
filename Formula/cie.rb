# Copyright 2025 KrakLabs
# SPDX-License-Identifier: AGPL-3.0-or-later

class Cie < Formula
  desc "Code Intelligence Engine - semantic search and call graph analysis"
  homepage "https://github.com/kraklabs/cie"
  version "0.4.3"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/kraklabs/cie/releases/download/v0.4.3/cie_v0.4.3_darwin_arm64.tar.gz"
      sha256 "d8dcc1c71ee44f6400bb21f99d49b1e55742f256180ecc41eac8ce5fe6583cdf"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kraklabs/cie/releases/download/v0.4.3/cie_v0.4.3_linux_amd64.tar.gz"
      sha256 "e2c4e647f8dbc7625a51d280d6f684e0a8690fb40b4b63c8e06c09d1a3745ef1"
    end
    on_arm do
      url "https://github.com/kraklabs/cie/releases/download/v0.4.3/cie_v0.4.3_linux_arm64.tar.gz"
      sha256 "0cb04c21587f5333c69e99375fc03111c097c0e2a8e45ee9a731faed89550e93"
    end
  end

  def install
    bin.install Dir["cie-*"].first => "cie"
  end

  test do
    system "#{bin}/cie", "--version"
  end
end
