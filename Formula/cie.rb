# Copyright 2025 KrakLabs
# SPDX-License-Identifier: AGPL-3.0-or-later

class Cie < Formula
  desc "Code Intelligence Engine - semantic search and call graph analysis"
  homepage "https://github.com/kraklabs/cie"
  version "0.7.4"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/kraklabs/cie/releases/download/v0.7.4/cie_v0.7.4_darwin_arm64.tar.gz"
      sha256 "94aee2d6c6b23a43feba0c1d65582a0bf064c86d8ba132484999fce15dc0050a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kraklabs/cie/releases/download/v0.7.4/cie_v0.7.4_linux_amd64.tar.gz"
      sha256 "85feb572e57839b1fd8319f57e0d5a982d2c565a59b85216c2d5d14569574340"
    end
    on_arm do
      url "https://github.com/kraklabs/cie/releases/download/v0.7.4/cie_v0.7.4_linux_arm64.tar.gz"
      sha256 "11a946c782b727151e09e754a39acbda5878149aa3e5592ccd46b28cbee3bbb3"
    end
  end

  def install
    bin.install Dir["cie-*"].first => "cie"
  end

  test do
    system "#{bin}/cie", "--version"
  end
end
