# snapshot package feeds for x86_64
{
  sha256sums = {
    hash = "sha256-1fSFfgvzdTeUiu4mGdt1wC6KSsIGpubJ3tSgUUjeSmg=";
    name = "x86_64-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/packages/x86_64/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/x86_64/base/";
    sourceInfo = {
      hash = "sha256-dHz4sKXhdnJV2MLI7jdqa1aBxoQVJHGMV5CBjrkkWcw=";
      name = "x86_64-base-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/x86_64/base/packages.adb";
    };
    packages =
      let
        p = ./x86_64/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/x86_64/luci/";
    sourceInfo = {
      hash = "sha256-/GC2jvPe99345nIX0pn2miicnI+VWXiw4pPd5hB2PLc=";
      name = "x86_64-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/x86_64/luci/packages.adb";
    };
    packages =
      let
        p = ./x86_64/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/x86_64/packages/";
    sourceInfo = {
      hash = "sha256-zfOM9e2mdf+82R0yLyA//ocRXjmyW3DCCPWYqGERS5A=";
      name = "x86_64-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/x86_64/packages/packages.adb";
    };
    packages =
      let
        p = ./x86_64/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/x86_64/routing/";
    sourceInfo = {
      hash = "sha256-vq71elohkuNuzGWxwDWhsAMWuCqjnBt13/UzAs/ombo=";
      name = "x86_64-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/x86_64/routing/packages.adb";
    };
    packages =
      let
        p = ./x86_64/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/x86_64/telephony/";
    sourceInfo = {
      hash = "sha256-9NgvCJIBYsP3qRjhCRFE74LONSUY8JxDidZLTxj790U=";
      name = "x86_64-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/x86_64/telephony/packages.adb";
    };
    packages =
      let
        p = ./x86_64/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
