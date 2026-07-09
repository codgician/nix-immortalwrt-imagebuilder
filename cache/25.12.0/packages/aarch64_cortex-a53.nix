# 25.12.0 package feeds for aarch64_cortex-a53
{
  sha256sums = {
    hash = "sha256-2LIK0ladbmw1NP+vljINrp3C6tnV0xBO3ec/3CslhtI=";
    name = "aarch64_cortex-a53-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/aarch64_cortex-a53/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/aarch64_cortex-a53/base/";
    sourceInfo = {
      hash = "sha256-MCSsfdyfbFHDL9HmyHBcA35r/jwZobjjQy09NAhrgCE=";
      name = "aarch64_cortex-a53-base-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/aarch64_cortex-a53/base/packages.adb";
    };
    packages =
      let
        p = ./aarch64_cortex-a53/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/aarch64_cortex-a53/luci/";
    sourceInfo = {
      hash = "sha256-bg5rIHW+/U2rxahDqyv80X4TujvlI3hqXPRhmyM2nJw=";
      name = "aarch64_cortex-a53-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/aarch64_cortex-a53/luci/packages.adb";
    };
    packages =
      let
        p = ./aarch64_cortex-a53/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/aarch64_cortex-a53/packages/";
    sourceInfo = {
      hash = "sha256-hxMnfBsVkKAkfR7jyhRrVMeAMsciT+KKKMrxH30t7y4=";
      name = "aarch64_cortex-a53-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/aarch64_cortex-a53/packages/packages.adb";
    };
    packages =
      let
        p = ./aarch64_cortex-a53/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/aarch64_cortex-a53/routing/";
    sourceInfo = {
      hash = "sha256-rI0+AT1+YAkQfGnDMnLlnbCouYg0CWZSp99phGlAiqo=";
      name = "aarch64_cortex-a53-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/aarch64_cortex-a53/routing/packages.adb";
    };
    packages =
      let
        p = ./aarch64_cortex-a53/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/aarch64_cortex-a53/telephony/";
    sourceInfo = {
      hash = "sha256-tHHImMa7Mq0iDmbs6aK7aZ358ygBUGXq3PPTQQyn1KQ=";
      name = "aarch64_cortex-a53-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/aarch64_cortex-a53/telephony/packages.adb";
    };
    packages =
      let
        p = ./aarch64_cortex-a53/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
