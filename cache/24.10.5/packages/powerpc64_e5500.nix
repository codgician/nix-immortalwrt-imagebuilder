# 24.10.5 package feeds for powerpc64_e5500
{
  sha256sums = {
    hash = "sha256-PwWtJZTMb6/drCNERYGHXnnzzvoCYi6xypDpdjd/BVM=";
    name = "powerpc64_e5500-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/powerpc64_e5500/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/powerpc64_e5500/base/";
    sourceInfo = {
      hash = "sha256-SnUxDtmtrPnzo9jm4Uq6x4hukDVRhDt7kJSw+oMOWr4=";
      name = "powerpc64_e5500-base-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/powerpc64_e5500/base/Packages";
    };
    packages =
      let
        p = ./powerpc64_e5500/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/powerpc64_e5500/luci/";
    sourceInfo = {
      hash = "sha256-3uwYQuDvDTH2W+vx5ohI+QnbdQQaf1rFUheUlnN8T2w=";
      name = "powerpc64_e5500-luci-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/powerpc64_e5500/luci/Packages";
    };
    packages =
      let
        p = ./powerpc64_e5500/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/powerpc64_e5500/packages/";
    sourceInfo = {
      hash = "sha256-eSBCoRLdfxhQCzptKW3U2o8WIoocW/m/grhFa2HiszI=";
      name = "powerpc64_e5500-packages-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/powerpc64_e5500/packages/Packages";
    };
    packages =
      let
        p = ./powerpc64_e5500/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/powerpc64_e5500/routing/";
    sourceInfo = {
      hash = "sha256-4Dqmux1KFYpbc2Q2LS1kZSUS/x9ct3e3s8jcnr2rMAY=";
      name = "powerpc64_e5500-routing-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/powerpc64_e5500/routing/Packages";
    };
    packages =
      let
        p = ./powerpc64_e5500/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/powerpc64_e5500/telephony/";
    sourceInfo = {
      hash = "sha256-kVMKq43sua0jxYWRyHLn2Zb+H/vXWvGMSRJkHRCdLfs=";
      name = "powerpc64_e5500-telephony-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/powerpc64_e5500/telephony/Packages";
    };
    packages =
      let
        p = ./powerpc64_e5500/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
