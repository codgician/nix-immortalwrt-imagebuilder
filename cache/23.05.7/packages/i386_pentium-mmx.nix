# 23.05.7 package feeds for i386_pentium-mmx
{
  sha256sums = {
    hash = "sha256-s7zYRi53kj9CF86b+e71fM+mSNBTVgsYHZtt/g6WLC8=";
    name = "i386_pentium-mmx-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/i386_pentium-mmx/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/i386_pentium-mmx/base/";
    sourceInfo = {
      hash = "sha256-DH+1kM08+dgJkItztdmRDRChHubLVrwVqi12ujM0Qos=";
      name = "i386_pentium-mmx-base-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/i386_pentium-mmx/base/Packages";
    };
    packages =
      let
        p = ./i386_pentium-mmx/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/i386_pentium-mmx/luci/";
    sourceInfo = {
      hash = "sha256-h0vaARMBs0oWmC7aLcQr7B9lXQYzYPMuP7Z5ydl3RBo=";
      name = "i386_pentium-mmx-luci-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/i386_pentium-mmx/luci/Packages";
    };
    packages =
      let
        p = ./i386_pentium-mmx/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/i386_pentium-mmx/packages/";
    sourceInfo = {
      hash = "sha256-RPRaJvP9ZI0DNicro7JhVXeXGVIpXpGBEnD8geD25t4=";
      name = "i386_pentium-mmx-packages-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/i386_pentium-mmx/packages/Packages";
    };
    packages =
      let
        p = ./i386_pentium-mmx/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/i386_pentium-mmx/routing/";
    sourceInfo = {
      hash = "sha256-6nZSRXexgh4cJMEBUJXrCvnM62Rk293HTSfJGqLRm2g=";
      name = "i386_pentium-mmx-routing-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/i386_pentium-mmx/routing/Packages";
    };
    packages =
      let
        p = ./i386_pentium-mmx/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/i386_pentium-mmx/telephony/";
    sourceInfo = {
      hash = "sha256-Lh2pKyP/tN2UiMpdWBuy95Nym4RMFQwCxE26sUlTwik=";
      name = "i386_pentium-mmx-telephony-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/i386_pentium-mmx/telephony/Packages";
    };
    packages =
      let
        p = ./i386_pentium-mmx/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
