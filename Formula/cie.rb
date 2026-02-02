# Copyright 2025 KrakLabs
# SPDX-License-Identifier: AGPL-3.0-or-later

class Cie < Formula
  desc "Code Intelligence Engine - semantic search and call graph analysis"
  homepage "https://github.com/kraklabs/cie"
  version "0.5.0"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/kraklabs/cie/releases/download/v0.5.0/cie_v0.5.0_darwin_arm64.tar.gz"
      sha256 "751def2780b66657990ba65950eb110602973009be9759283aeac5ea74641b51"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kraklabs/cie/releases/download/v0.5.0/cie_v0.5.0_linux_amd64.tar.gz"
      sha256 "41beda57e0aed86e6e18e5fa07a8ba2647e81ceeb362e477e7568416676eba3f"
    end
    on_arm do
      url "https://github.com/kraklabs/cie/releases/download/v0.5.0/cie_v0.5.0_linux_arm64.tar.gz"
      sha256 "3457e3d588447cde26a71e6eab14791da3ad44af13f277a80fd0e9e78f774605"
    end
  end

  def install
    bin.install Dir["cie-*"].first => "cie"
  end

  test do
    system "#{bin}/cie", "--version"
  end
end
