# 25.12.1 package feeds for mips64_octeonplus
{
  sha256sums = {
    hash = "sha256-2QfOct8wrJiRW3iwAuLuYknvzm2/yRpHKbzu/A0gRsg=";
    name = "mips64_octeonplus-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/mips64_octeonplus/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/packages/mips64_octeonplus/base/";
    sourceInfo = {
      hash = "sha256-LWjnTP8riUwnAlZJGHf6Xhk9vCm5n3jCnWNbjhAtuuM=";
      name = "mips64_octeonplus-base-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/mips64_octeonplus/base/packages.adb";
    };
    packages =
      let
        p = ./mips64_octeonplus/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/packages/mips64_octeonplus/luci/";
    sourceInfo = {
      hash = "sha256-rGOc1svFnOBHDWVl03FIdzt2lnXuv4to6vQ+ujtoZPM=";
      name = "mips64_octeonplus-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/mips64_octeonplus/luci/packages.adb";
    };
    packages =
      let
        p = ./mips64_octeonplus/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/packages/mips64_octeonplus/packages/";
    sourceInfo = {
      hash = "sha256-xIRBHTCBBKMQzPnbWJXKi6T8dyEgknqI7/ZozZ4eCRg=";
      name = "mips64_octeonplus-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/mips64_octeonplus/packages/packages.adb";
    };
    packages =
      let
        p = ./mips64_octeonplus/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/packages/mips64_octeonplus/routing/";
    sourceInfo = {
      hash = "sha256-H1yXsmsZEEtTik+4N3rnL94IadXy56mpO5pCNOUIEDw=";
      name = "mips64_octeonplus-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/mips64_octeonplus/routing/packages.adb";
    };
    packages =
      let
        p = ./mips64_octeonplus/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/packages/mips64_octeonplus/telephony/";
    sourceInfo = {
      hash = "sha256-5PPDf/4d7IeOdmqipbZDdtP7svTjEouG+puuoSgovD4=";
      name = "mips64_octeonplus-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/mips64_octeonplus/telephony/packages.adb";
    };
    packages =
      let
        p = ./mips64_octeonplus/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
