# snapshot package feeds for powerpc_464fp
{
  sha256sums = {
    hash = "sha256-r+y1Mxhy4BpDxwO7nzcSVl4T5TJvWo+0QAK3+P12Chc=";
    name = "powerpc_464fp-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/powerpc_464fp/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/powerpc_464fp/base/";
    sourceInfo = {
      hash = "sha256-xuJ6s4to9vh+LK1Tqw22s1DzyJtLwB1oS7dNTEkivw4=";
      name = "powerpc_464fp-base-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/powerpc_464fp/base/packages.adb";
    };
    packages =
      let
        p = ./powerpc_464fp/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/powerpc_464fp/luci/";
    sourceInfo = {
      hash = "sha256-u+v7lXFfB++7y5tscUt+r4WKIJ7NPTeDkIkOQzzbh1M=";
      name = "powerpc_464fp-luci-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/powerpc_464fp/luci/packages.adb";
    };
    packages =
      let
        p = ./powerpc_464fp/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/powerpc_464fp/packages/";
    sourceInfo = {
      hash = "sha256-Nki8+bOma5UWVKOdnqvJSkbKoW1Jo8NX+GxYNcaaGXM=";
      name = "powerpc_464fp-packages-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/powerpc_464fp/packages/packages.adb";
    };
    packages =
      let
        p = ./powerpc_464fp/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/powerpc_464fp/routing/";
    sourceInfo = {
      hash = "sha256-ds/sUudJSqq2AqET01aX4YxjHE6bhdu6gTj+JyiP3GQ=";
      name = "powerpc_464fp-routing-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/powerpc_464fp/routing/packages.adb";
    };
    packages =
      let
        p = ./powerpc_464fp/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/powerpc_464fp/telephony/";
    sourceInfo = {
      hash = "sha256-WEEAhNNy9BOkKUOBnsbGlBlJq7LifcfDuAcf0hdmMu8=";
      name = "powerpc_464fp-telephony-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/powerpc_464fp/telephony/packages.adb";
    };
    packages =
      let
        p = ./powerpc_464fp/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
