# Copyright 2025 KrakLabs
# SPDX-License-Identifier: AGPL-3.0-or-later

class Cie < Formula
  desc "Code Intelligence Engine - semantic search and call graph analysis"
  homepage "https://github.com/kraklabs/cie"
  version "0.7.1"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/kraklabs/cie/releases/download/v0.7.1/cie_v0.7.1_darwin_arm64.tar.gz"
      sha256 "df4b1ef8cde9c227aa9dc2772e864838b6e4a9f4fac25d75c4f7b9b4104a8e83"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kraklabs/cie/releases/download/v0.7.1/cie_v0.7.1_linux_amd64.tar.gz"
      sha256 "d08f126fd63ba6598f666c59604b89d6c34984f25ef7cb5c134f2533dfd976de"
    end
    on_arm do
      url "https://github.com/kraklabs/cie/releases/download/v0.7.1/cie_v0.7.1_linux_arm64.tar.gz"
      sha256 "962df177110da890035cc200a0060b32be84e3d6a577755cef37452e3a40d520"
    end
  end

  def install
    bin.install Dir["cie-*"].first => "cie"
  end

  test do
    system "#{bin}/cie", "--version"
  end
end
