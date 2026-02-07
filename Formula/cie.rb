# Copyright 2025 KrakLabs
# SPDX-License-Identifier: AGPL-3.0-or-later

class Cie < Formula
  desc "Code Intelligence Engine - semantic search and call graph analysis"
  homepage "https://github.com/kraklabs/cie"
  version "0.7.5"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/kraklabs/cie/releases/download/v0.7.5/cie_v0.7.5_darwin_arm64.tar.gz"
      sha256 "cfa78909359b61511102843c467c4d1af8273b5fdda9b7234d2e295fb5d2c71a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kraklabs/cie/releases/download/v0.7.5/cie_v0.7.5_linux_amd64.tar.gz"
      sha256 "69a9a230965e1a05d8400e90564d13bbe0b113d58a11750c8241399c44d0869c"
    end
    on_arm do
      url "https://github.com/kraklabs/cie/releases/download/v0.7.5/cie_v0.7.5_linux_arm64.tar.gz"
      sha256 "24f6c26adc25759e6eba17156d77de6a2aaed742a65c4f70eb2084cb0ca4a52e"
    end
  end

  def install
    bin.install Dir["cie-*"].first => "cie"
  end

  test do
    system "#{bin}/cie", "--version"
  end
end
