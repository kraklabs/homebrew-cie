# Copyright 2025 KrakLabs
# SPDX-License-Identifier: AGPL-3.0-or-later

class Cie < Formula
  desc "Code Intelligence Engine - semantic search and call graph analysis"
  homepage "https://github.com/kraklabs/cie"
  version "0.4.5"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/kraklabs/cie/releases/download/v0.4.5/cie_v0.4.5_darwin_arm64.tar.gz"
      sha256 "0831aad18d380e735e287bd6821a016271db7956b911ab084c95148f17d560ae"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kraklabs/cie/releases/download/v0.4.5/cie_v0.4.5_linux_amd64.tar.gz"
      sha256 "b16671df156d1c4c1639a1dd2a065f0212dcab7bed7e5e9f921132ed704db3ae"
    end
    on_arm do
      url "https://github.com/kraklabs/cie/releases/download/v0.4.5/cie_v0.4.5_linux_arm64.tar.gz"
      sha256 "01cfb853d6783637cd1131dfe6d039d86117661f3b8670893aee0530f4e17da5"
    end
  end

  def install
    bin.install Dir["cie-*"].first => "cie"
  end

  test do
    system "#{bin}/cie", "--version"
  end
end
