# 25.12.0-rc1 package feeds for mipsel_24kc
{
  sha256sums = {
    hash = "sha256-wgRuWFSy914Y0D9xvjS/spQ52TQPtym5xvrWIl6DUZU=";
    name = "mipsel_24kc-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/mipsel_24kc/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/mipsel_24kc/base/";
    sourceInfo = {
      hash = "sha256-yczi5Ytv/H5tpZKVdu6RjRf8fNihh+2wN1zpnWgMl+A=";
      name = "mipsel_24kc-base-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/mipsel_24kc/base/packages.adb";
    };
    packages =
      let
        p = ./mipsel_24kc/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/mipsel_24kc/luci/";
    sourceInfo = {
      hash = "sha256-PbyKIuJ8OaijyBIYJMBqGdMjprvAfVWC4tbmagtg83M=";
      name = "mipsel_24kc-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/mipsel_24kc/luci/packages.adb";
    };
    packages =
      let
        p = ./mipsel_24kc/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/mipsel_24kc/packages/";
    sourceInfo = {
      hash = "sha256-7vpjzYrtW//d8sh8JjWM5pdb6zQfLWSkEAzVJRRFMpo=";
      name = "mipsel_24kc-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/mipsel_24kc/packages/packages.adb";
    };
    packages =
      let
        p = ./mipsel_24kc/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/mipsel_24kc/routing/";
    sourceInfo = {
      hash = "sha256-w5hc16R1J3OJkzKiRywMoW7+d2X3q62OwkisTsq0CFw=";
      name = "mipsel_24kc-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/mipsel_24kc/routing/packages.adb";
    };
    packages =
      let
        p = ./mipsel_24kc/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/mipsel_24kc/telephony/";
    sourceInfo = {
      hash = "sha256-5BfhDgSX134rlK8+S8+T5H/j2RLlbqkeqZxxxM3zZ6s=";
      name = "mipsel_24kc-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/mipsel_24kc/telephony/packages.adb";
    };
    packages =
      let
        p = ./mipsel_24kc/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
