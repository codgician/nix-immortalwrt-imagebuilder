# 24.10.6 package feeds for i386_pentium-mmx
{
  sha256sums = {
    hash = "sha256-5TUkymxiK31xVTSBvdnGqJklzqEPDIEaMD0HqrLzIYo=";
    name = "i386_pentium-mmx-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.6/packages/i386_pentium-mmx/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/packages/i386_pentium-mmx/base/";
    sourceInfo = {
      hash = "sha256-hJ7k4XNZbGPmgaZKiciJNgypHjI5cSWx8j30DgneJws=";
      name = "i386_pentium-mmx-base-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.6/packages/i386_pentium-mmx/base/Packages";
    };
    packages =
      let
        p = ./i386_pentium-mmx/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/packages/i386_pentium-mmx/luci/";
    sourceInfo = {
      hash = "sha256-SynJeUKfrGvFjs2SAe8npriPaLamSwQPgKMMhkU5ekM=";
      name = "i386_pentium-mmx-luci-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.6/packages/i386_pentium-mmx/luci/Packages";
    };
    packages =
      let
        p = ./i386_pentium-mmx/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/packages/i386_pentium-mmx/packages/";
    sourceInfo = {
      hash = "sha256-rzgr12BAjmwSWKsA8IY8oQZiPKN1rolbfuTjjAAP0Q8=";
      name = "i386_pentium-mmx-packages-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.6/packages/i386_pentium-mmx/packages/Packages";
    };
    packages =
      let
        p = ./i386_pentium-mmx/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/packages/i386_pentium-mmx/routing/";
    sourceInfo = {
      hash = "sha256-EOSOYkPIzAmQ1tc0vXGVFq9r3dmM8YIt6bK/JJ7LVKo=";
      name = "i386_pentium-mmx-routing-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.6/packages/i386_pentium-mmx/routing/Packages";
    };
    packages =
      let
        p = ./i386_pentium-mmx/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/packages/i386_pentium-mmx/telephony/";
    sourceInfo = {
      hash = "sha256-wPVI5maRtGVLHPUiFDpwIT9nxPYN0AkmDDVVDw+iQGg=";
      name = "i386_pentium-mmx-telephony-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.6/packages/i386_pentium-mmx/telephony/Packages";
    };
    packages =
      let
        p = ./i386_pentium-mmx/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
