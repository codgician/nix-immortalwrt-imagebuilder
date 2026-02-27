# 24.10.5 package feeds for armeb_xscale
{
  sha256sums = {
    hash = "sha256-cHESPegWlOge0njJelmPYhDn1RnJfz4HVomtnf4Xax4=";
    name = "armeb_xscale-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/armeb_xscale/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/armeb_xscale/base/";
    sourceInfo = {
      hash = "sha256-Sh+sL3jmd3AkOvEw8pLDekSgHLH8hi/Bs8SHzKQsyNM=";
      name = "armeb_xscale-base-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/armeb_xscale/base/Packages";
    };
    packages =
      let
        p = ./armeb_xscale/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/armeb_xscale/luci/";
    sourceInfo = {
      hash = "sha256-5Rf14gGRfiZ1ghYdNlMiqumrHhee+X73/dsbAegmixw=";
      name = "armeb_xscale-luci-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/armeb_xscale/luci/Packages";
    };
    packages =
      let
        p = ./armeb_xscale/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/armeb_xscale/packages/";
    sourceInfo = {
      hash = "sha256-VLx7RHOuFU+vkIrBfBbrBk1UXsTzfcCZQ/LZKsOP18s=";
      name = "armeb_xscale-packages-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/armeb_xscale/packages/Packages";
    };
    packages =
      let
        p = ./armeb_xscale/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/armeb_xscale/routing/";
    sourceInfo = {
      hash = "sha256-GxBzf8I0KyB4GKl1o2Hk0JdIjCbqiAaFjroRTPS5lWA=";
      name = "armeb_xscale-routing-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/armeb_xscale/routing/Packages";
    };
    packages =
      let
        p = ./armeb_xscale/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/armeb_xscale/telephony/";
    sourceInfo = {
      hash = "sha256-qB5qBHYxZpsb+emGVBBJ4WbtPDbiRima50JDx4Cs4xo=";
      name = "armeb_xscale-telephony-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/armeb_xscale/telephony/Packages";
    };
    packages =
      let
        p = ./armeb_xscale/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
