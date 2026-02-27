# 24.10.5 package feeds for i386_pentium-mmx
{
  sha256sums = {
    hash = "sha256-gitcrTRaytDWD1VGvNt066jQZedL3I/xu3N4jj8Ifng=";
    name = "i386_pentium-mmx-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/i386_pentium-mmx/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/i386_pentium-mmx/base/";
    sourceInfo = {
      hash = "sha256-wWCKimJ9gt830cFdvVW2mvQDYVjShBIf7D3dzwh+MUY=";
      name = "i386_pentium-mmx-base-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/i386_pentium-mmx/base/Packages";
    };
    packages =
      let
        p = ./i386_pentium-mmx/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/i386_pentium-mmx/luci/";
    sourceInfo = {
      hash = "sha256-zkIwIHJJ0qZyhtys//O93/s6hMjBsQhzbVterT0/wfg=";
      name = "i386_pentium-mmx-luci-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/i386_pentium-mmx/luci/Packages";
    };
    packages =
      let
        p = ./i386_pentium-mmx/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/i386_pentium-mmx/packages/";
    sourceInfo = {
      hash = "sha256-XOJ0P3VMqSen3KljrsmeqnoOJn3xIBVyN4M8HO5DPOg=";
      name = "i386_pentium-mmx-packages-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/i386_pentium-mmx/packages/Packages";
    };
    packages =
      let
        p = ./i386_pentium-mmx/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/i386_pentium-mmx/routing/";
    sourceInfo = {
      hash = "sha256-F6zC1RWtOJkwddvHXW7jU6bSdXdaYBDpm0DCzmaGIso=";
      name = "i386_pentium-mmx-routing-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/i386_pentium-mmx/routing/Packages";
    };
    packages =
      let
        p = ./i386_pentium-mmx/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/i386_pentium-mmx/telephony/";
    sourceInfo = {
      hash = "sha256-yg3MNQ3X5wibFCsOr/KccGXwRKjm7zQKAfQSmNh7g9o=";
      name = "i386_pentium-mmx-telephony-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/i386_pentium-mmx/telephony/Packages";
    };
    packages =
      let
        p = ./i386_pentium-mmx/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
