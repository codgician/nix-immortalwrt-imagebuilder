# 24.10.5 package feeds for mips_4kec
{
  sha256sums = {
    hash = "sha256-l1QvxYPJkBZ1oCr7uwRpBBqzoG+fS/0BdDSToSh/zXs=";
    name = "mips_4kec-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/mips_4kec/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/mips_4kec/base/";
    sourceInfo = {
      hash = "sha256-0SJZwL3ZiAJuWFENcY0ojllq93EfdZ+VhMgW12CnRQ8=";
      name = "mips_4kec-base-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/mips_4kec/base/Packages";
    };
    packages =
      let
        p = ./mips_4kec/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/mips_4kec/luci/";
    sourceInfo = {
      hash = "sha256-v01nuJYEDq2/VpGiAyFlGqKd2A9zO51DxJ9UfYLzN8Y=";
      name = "mips_4kec-luci-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/mips_4kec/luci/Packages";
    };
    packages =
      let
        p = ./mips_4kec/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/mips_4kec/packages/";
    sourceInfo = {
      hash = "sha256-4lMJtSOXYtlk/rPQZyMF7oZdLHVE0A4u8zwXt6Mgj0c=";
      name = "mips_4kec-packages-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/mips_4kec/packages/Packages";
    };
    packages =
      let
        p = ./mips_4kec/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/mips_4kec/routing/";
    sourceInfo = {
      hash = "sha256-u4Cpd3ykjONRfn6CCB17cPpR8oTXw230LfNREvBRIM8=";
      name = "mips_4kec-routing-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/mips_4kec/routing/Packages";
    };
    packages =
      let
        p = ./mips_4kec/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/mips_4kec/telephony/";
    sourceInfo = {
      hash = "sha256-kZ681+WYM0Xlz5/8doECqzaSWs6GeozsV1gmc7/W0IE=";
      name = "mips_4kec-telephony-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/mips_4kec/telephony/Packages";
    };
    packages =
      let
        p = ./mips_4kec/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
