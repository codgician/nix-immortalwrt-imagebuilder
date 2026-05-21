# 25.12.0-rc2 package feeds for powerpc64_e5500
{
  sha256sums = {
    hash = "sha256-nNkfL+TQBAicDX66jfJjcTaLJaxr6aBAYlqtYjq+rdk=";
    name = "powerpc64_e5500-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/powerpc64_e5500/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/powerpc64_e5500/base/";
    sourceInfo = {
      hash = "sha256-7eh2KiX9M15a6ApPAqL3NtUSb9y7oCYNmuNg+scvXP0=";
      name = "powerpc64_e5500-base-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/powerpc64_e5500/base/packages.adb";
    };
    packages =
      let
        p = ./powerpc64_e5500/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/powerpc64_e5500/luci/";
    sourceInfo = {
      hash = "sha256-DHY5XRirobQsylNVb4RN7KZfnFwnctoiBzBQDZ2CX9o=";
      name = "powerpc64_e5500-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/powerpc64_e5500/luci/packages.adb";
    };
    packages =
      let
        p = ./powerpc64_e5500/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/powerpc64_e5500/packages/";
    sourceInfo = {
      hash = "sha256-B2HiZJTNWCIdejdaj589H2xQApLBJcTRco2D0McwWXg=";
      name = "powerpc64_e5500-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/powerpc64_e5500/packages/packages.adb";
    };
    packages =
      let
        p = ./powerpc64_e5500/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/powerpc64_e5500/routing/";
    sourceInfo = {
      hash = "sha256-TrcahfGbix1GUcEypB6GW2T/rcTZqkPADVkWf1DjU8I=";
      name = "powerpc64_e5500-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/powerpc64_e5500/routing/packages.adb";
    };
    packages =
      let
        p = ./powerpc64_e5500/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/powerpc64_e5500/telephony/";
    sourceInfo = {
      hash = "sha256-0yboA3T66uGwM2jD6qYfu+X9lQcGYVPsOqxQRkcZZRs=";
      name = "powerpc64_e5500-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/powerpc64_e5500/telephony/packages.adb";
    };
    packages =
      let
        p = ./powerpc64_e5500/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
