# 24.10.5 package feeds for mips64_octeonplus
{
  sha256sums = {
    hash = "sha256-nvFYcrsT+g8dITascAU/pEI1cdfuIVpoXBa0MRk7dQw=";
    name = "mips64_octeonplus-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/mips64_octeonplus/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/mips64_octeonplus/base/";
    sourceInfo = {
      hash = "sha256-7RjQTEFmKyIP9MjGRZugy9siCz0oEd/QEEMUqfPdGxU=";
      name = "mips64_octeonplus-base-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/mips64_octeonplus/base/Packages";
    };
    packages =
      let
        p = ./mips64_octeonplus/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/mips64_octeonplus/luci/";
    sourceInfo = {
      hash = "sha256-qJHW9gJhMVBTwMX4/acu7H52qLBElMmCu5+a7JFdJW8=";
      name = "mips64_octeonplus-luci-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/mips64_octeonplus/luci/Packages";
    };
    packages =
      let
        p = ./mips64_octeonplus/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/mips64_octeonplus/packages/";
    sourceInfo = {
      hash = "sha256-98c94uN9LYS0+UgHNQPJaEtuzLMP8ZKT11Rx5CvamJY=";
      name = "mips64_octeonplus-packages-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/mips64_octeonplus/packages/Packages";
    };
    packages =
      let
        p = ./mips64_octeonplus/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/mips64_octeonplus/routing/";
    sourceInfo = {
      hash = "sha256-Tbwol9KQgvDqjerQCF1A2re+Uo7Wi4QrDfABgEdR9us=";
      name = "mips64_octeonplus-routing-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/mips64_octeonplus/routing/Packages";
    };
    packages =
      let
        p = ./mips64_octeonplus/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/mips64_octeonplus/telephony/";
    sourceInfo = {
      hash = "sha256-LN1pfHpvIBceeo4K+DOEwJVVOV5ldXd0HAz6FGkXxaU=";
      name = "mips64_octeonplus-telephony-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/mips64_octeonplus/telephony/Packages";
    };
    packages =
      let
        p = ./mips64_octeonplus/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
