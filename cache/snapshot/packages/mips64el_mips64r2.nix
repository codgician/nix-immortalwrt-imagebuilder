# snapshot package feeds for mips64el_mips64r2
{
  sha256sums = {
    hash = "sha256-l3eHDqsfNQaRJig/odUmxGyZ9rDzWI0+jlp6vpTLSNo=";
    name = "mips64el_mips64r2-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/packages/mips64el_mips64r2/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/mips64el_mips64r2/base/";
    sourceInfo = {
      hash = "sha256-p229PPX+BDV2wUtKZqEB5ryLdKpbmmM5CycRlh7zY1M=";
      name = "mips64el_mips64r2-base-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/mips64el_mips64r2/base/packages.adb";
    };
    packages =
      let
        p = ./mips64el_mips64r2/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/mips64el_mips64r2/luci/";
    sourceInfo = {
      hash = "sha256-E7V+L2ChDstItY3dixylZadA3BMA7r4MnNn8xdmczbE=";
      name = "mips64el_mips64r2-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/mips64el_mips64r2/luci/packages.adb";
    };
    packages =
      let
        p = ./mips64el_mips64r2/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/mips64el_mips64r2/packages/";
    sourceInfo = {
      hash = "sha256-S1v88U5gjr8itcL12pJ4tTFXSFnINv35YC/gtLnil/Y=";
      name = "mips64el_mips64r2-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/mips64el_mips64r2/packages/packages.adb";
    };
    packages =
      let
        p = ./mips64el_mips64r2/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/mips64el_mips64r2/routing/";
    sourceInfo = {
      hash = "sha256-YOCF3McXRf5h9mNP6C9F8Q51308seqHqfkd109gBrU8=";
      name = "mips64el_mips64r2-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/mips64el_mips64r2/routing/packages.adb";
    };
    packages =
      let
        p = ./mips64el_mips64r2/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/mips64el_mips64r2/telephony/";
    sourceInfo = {
      hash = "sha256-0lbLW82ivx7Eio/UzvzprY5Tfgdx4wlv9YtUYcfJuQw=";
      name = "mips64el_mips64r2-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/mips64el_mips64r2/telephony/packages.adb";
    };
    packages =
      let
        p = ./mips64el_mips64r2/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
