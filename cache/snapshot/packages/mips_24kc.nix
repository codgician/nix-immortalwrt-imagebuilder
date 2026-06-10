# snapshot package feeds for mips_24kc
{
  sha256sums = {
    hash = "sha256-bqsZRZhRN3cnrlJPYy0Swvrb4AAmbnUviofoR35TuJQ=";
    name = "mips_24kc-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/packages/mips_24kc/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/mips_24kc/base/";
    sourceInfo = {
      hash = "sha256-+PDLb3ePs5LURoOqEa+22M9zEHfTTKWvMyUL8b3ijJ0=";
      name = "mips_24kc-base-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/mips_24kc/base/packages.adb";
    };
    packages =
      let
        p = ./mips_24kc/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/mips_24kc/luci/";
    sourceInfo = {
      hash = "sha256-7ksPXe5EGaHvrxEUHGhHfWVxOWzyZaBBzlE77Ydpyzo=";
      name = "mips_24kc-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/mips_24kc/luci/packages.adb";
    };
    packages =
      let
        p = ./mips_24kc/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/mips_24kc/packages/";
    sourceInfo = {
      hash = "sha256-p9poftvsaBJzj6QvpIOxUcLIch/Vj9o7lV19HY7hJ7w=";
      name = "mips_24kc-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/mips_24kc/packages/packages.adb";
    };
    packages =
      let
        p = ./mips_24kc/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/mips_24kc/routing/";
    sourceInfo = {
      hash = "sha256-q7BMk2ZiRij/CTviWJxU9icB/2fbkEEpfKPA68Yt92g=";
      name = "mips_24kc-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/mips_24kc/routing/packages.adb";
    };
    packages =
      let
        p = ./mips_24kc/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/mips_24kc/telephony/";
    sourceInfo = {
      hash = "sha256-SR0DJ17puomGDDN/M1jNdlOpvM4wu9eY8E2DilhEVUk=";
      name = "mips_24kc-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/mips_24kc/telephony/packages.adb";
    };
    packages =
      let
        p = ./mips_24kc/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
