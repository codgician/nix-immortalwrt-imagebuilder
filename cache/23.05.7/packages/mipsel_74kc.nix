# 23.05.7 package feeds for mipsel_74kc
{
  sha256sums = {
    hash = "sha256-8txHlN1qG2V/S4o5CTJW35uKOFKUrPjqP3lprRcb7AU=";
    name = "mipsel_74kc-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/mipsel_74kc/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/mipsel_74kc/base/";
    sourceInfo = {
      hash = "sha256-55RObALt6aTsDHyXezvbsn5ZRJh0c3dyjSi7gcfiLvg=";
      name = "mipsel_74kc-base-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/mipsel_74kc/base/Packages";
    };
    packages =
      let
        p = ./mipsel_74kc/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/mipsel_74kc/luci/";
    sourceInfo = {
      hash = "sha256-3JN6xgcHrxKRD8aog+3gxa9zSmRiTdmNSEVx2zu6/nk=";
      name = "mipsel_74kc-luci-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/mipsel_74kc/luci/Packages";
    };
    packages =
      let
        p = ./mipsel_74kc/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/mipsel_74kc/packages/";
    sourceInfo = {
      hash = "sha256-9sjkShmPW55FtX8k1lif7ccSNcQzH7XekFhzCvmB1II=";
      name = "mipsel_74kc-packages-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/mipsel_74kc/packages/Packages";
    };
    packages =
      let
        p = ./mipsel_74kc/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/mipsel_74kc/routing/";
    sourceInfo = {
      hash = "sha256-/o2X73x6JE40dqSwarsUmNoRp10hpc23QvIxrdBnUqc=";
      name = "mipsel_74kc-routing-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/mipsel_74kc/routing/Packages";
    };
    packages =
      let
        p = ./mipsel_74kc/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/mipsel_74kc/telephony/";
    sourceInfo = {
      hash = "sha256-Y1ICSch4U1FeN0lwC+lcMg6k/3+J26Hhi7eyrpWaidY=";
      name = "mipsel_74kc-telephony-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/mipsel_74kc/telephony/Packages";
    };
    packages =
      let
        p = ./mipsel_74kc/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
