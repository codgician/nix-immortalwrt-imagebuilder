# 24.10.5 package feeds for mipsel_74kc
{
  sha256sums = {
    hash = "sha256-Q9S0oAnriQSBj8QL687MbaH/pcUfFcMG5GcAmTbUbgQ=";
    name = "mipsel_74kc-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.5/packages/mipsel_74kc/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.5/packages/mipsel_74kc/base/";
    sourceInfo = {
      hash = "sha256-r4y9D3t9Km4xHwWWU4X63xV1NGwBtST5NWok/lUw1Qc=";
      name = "mipsel_74kc-base-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.5/packages/mipsel_74kc/base/Packages";
    };
    packages =
      let
        p = ./mipsel_74kc/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.5/packages/mipsel_74kc/luci/";
    sourceInfo = {
      hash = "sha256-W4dzTfVAZop5PgUAhZI1Enqqzu8k+imixj6phUXwMHg=";
      name = "mipsel_74kc-luci-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.5/packages/mipsel_74kc/luci/Packages";
    };
    packages =
      let
        p = ./mipsel_74kc/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.5/packages/mipsel_74kc/packages/";
    sourceInfo = {
      hash = "sha256-vjZLd7dTgAlx6CfFf67PD7VA8ep/YdF6QzU6hd0xmy8=";
      name = "mipsel_74kc-packages-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.5/packages/mipsel_74kc/packages/Packages";
    };
    packages =
      let
        p = ./mipsel_74kc/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.5/packages/mipsel_74kc/routing/";
    sourceInfo = {
      hash = "sha256-mEIc+hYayD2gmGIlVZsksYgetlvAP1ggkSs6wNXpDUI=";
      name = "mipsel_74kc-routing-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.5/packages/mipsel_74kc/routing/Packages";
    };
    packages =
      let
        p = ./mipsel_74kc/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.5/packages/mipsel_74kc/telephony/";
    sourceInfo = {
      hash = "sha256-ON5Qd3Ik63pQT0ZRAgYrafNQWt3iCF6Dv03iKSq2EAQ=";
      name = "mipsel_74kc-telephony-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.5/packages/mipsel_74kc/telephony/Packages";
    };
    packages =
      let
        p = ./mipsel_74kc/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
