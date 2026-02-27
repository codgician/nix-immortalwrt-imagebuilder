# snapshot package feeds for i386_pentium-mmx
{
  sha256sums = {
    hash = "sha256-uyR2gLNsJNnR6Kt3GYardJ8UxJp6KHy/7chKkADADPU=";
    name = "i386_pentium-mmx-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/i386_pentium-mmx/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/i386_pentium-mmx/base/";
    sourceInfo = {
      hash = "sha256-KasxLZOmFXVtL8NL5+TxNbH1EguIxfrEbsAb5sfv1KQ=";
      name = "i386_pentium-mmx-base-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/i386_pentium-mmx/base/packages.adb";
    };
    packages =
      let
        p = ./i386_pentium-mmx/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/i386_pentium-mmx/luci/";
    sourceInfo = {
      hash = "sha256-Nndzo4DXF8CxtM5ECYrYkkuWgJ5vfXZ1nNkYj5l2hO8=";
      name = "i386_pentium-mmx-luci-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/i386_pentium-mmx/luci/packages.adb";
    };
    packages =
      let
        p = ./i386_pentium-mmx/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/i386_pentium-mmx/packages/";
    sourceInfo = {
      hash = "sha256-WFJtAe7WB826xppr64Vwe7aPpLov+Q+WBpmXupCyRDw=";
      name = "i386_pentium-mmx-packages-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/i386_pentium-mmx/packages/packages.adb";
    };
    packages =
      let
        p = ./i386_pentium-mmx/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/i386_pentium-mmx/routing/";
    sourceInfo = {
      hash = "sha256-NhGsZaMn+YcXAQph/Ott+UOcnQgQSO9h1JB69/BGJ7s=";
      name = "i386_pentium-mmx-routing-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/i386_pentium-mmx/routing/packages.adb";
    };
    packages =
      let
        p = ./i386_pentium-mmx/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/i386_pentium-mmx/telephony/";
    sourceInfo = {
      hash = "sha256-JGSJoJh8QeWw4VXAXqqg7aB04gGDJbXKSPOWgHjnkWc=";
      name = "i386_pentium-mmx-telephony-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/i386_pentium-mmx/telephony/packages.adb";
    };
    packages =
      let
        p = ./i386_pentium-mmx/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
