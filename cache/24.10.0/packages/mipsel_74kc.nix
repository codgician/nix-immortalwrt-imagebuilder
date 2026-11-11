# 24.10.0 package feeds for mipsel_74kc
{
  sha256sums = {
    hash = "sha256-KYep5WIFOzrSmhVpQ0lU/1JaXLKz9ir2TzYz0dQ8HLo=";
    name = "mipsel_74kc-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.0/packages/mipsel_74kc/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/packages/mipsel_74kc/base/";
    sourceInfo = {
      hash = "sha256-7luWbuJTvaImqqO8qqB+GNuBpfFYR8SliECEaKVVReU=";
      name = "mipsel_74kc-base-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/packages/mipsel_74kc/base/Packages";
    };
    packages =
      let
        p = ./mipsel_74kc/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/packages/mipsel_74kc/luci/";
    sourceInfo = {
      hash = "sha256-ucoan8WXnzhM4mul/tDciEhyragawp0rHOWwu0Jw9Vk=";
      name = "mipsel_74kc-luci-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/packages/mipsel_74kc/luci/Packages";
    };
    packages =
      let
        p = ./mipsel_74kc/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/packages/mipsel_74kc/packages/";
    sourceInfo = {
      hash = "sha256-Hg8xV4qNN63hMwiAVRnjbe4kcD+U4/3xc3ykQDOfLt4=";
      name = "mipsel_74kc-packages-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/packages/mipsel_74kc/packages/Packages";
    };
    packages =
      let
        p = ./mipsel_74kc/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/packages/mipsel_74kc/routing/";
    sourceInfo = {
      hash = "sha256-M5G1zlZhUmyqGmO/rJwQSsSI3IRN8ZlhNeIZANSWBeY=";
      name = "mipsel_74kc-routing-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/packages/mipsel_74kc/routing/Packages";
    };
    packages =
      let
        p = ./mipsel_74kc/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/packages/mipsel_74kc/telephony/";
    sourceInfo = {
      hash = "sha256-6ux4z2kgi5bm0x/TWhDuObAMGx1N0yNr9PRLNYXWkt8=";
      name = "mipsel_74kc-telephony-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/packages/mipsel_74kc/telephony/Packages";
    };
    packages =
      let
        p = ./mipsel_74kc/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
