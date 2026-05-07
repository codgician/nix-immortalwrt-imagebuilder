# 25.12.0-rc2 package feeds for aarch64_cortex-a72
{
  sha256sums = {
    hash = "sha256-lCunp1jlkuR7SeFpXCriomDyn03+qFaFVbubVSm+ICY=";
    name = "aarch64_cortex-a72-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/aarch64_cortex-a72/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/aarch64_cortex-a72/base/";
    sourceInfo = {
      hash = "sha256-bpMYttMWvPmiZhzo2M23xMt0vwHdW4iQVM01kMGX8to=";
      name = "aarch64_cortex-a72-base-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/aarch64_cortex-a72/base/packages.adb";
    };
    packages =
      let
        p = ./aarch64_cortex-a72/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/aarch64_cortex-a72/luci/";
    sourceInfo = {
      hash = "sha256-6+9415CynqWgyvJ7r3CR6AigkpYbgAAXlkFlbW7fbTg=";
      name = "aarch64_cortex-a72-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/aarch64_cortex-a72/luci/packages.adb";
    };
    packages =
      let
        p = ./aarch64_cortex-a72/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/aarch64_cortex-a72/packages/";
    sourceInfo = {
      hash = "sha256-BQqh/lyBYekxG7eJpfwWuZ6BsZI6FrLakGbsqdtujR0=";
      name = "aarch64_cortex-a72-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/aarch64_cortex-a72/packages/packages.adb";
    };
    packages =
      let
        p = ./aarch64_cortex-a72/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/aarch64_cortex-a72/routing/";
    sourceInfo = {
      hash = "sha256-W3m2sWCQhVNcfuKPbnG9pxiYFGFSAPeNUyfGGg9iPKQ=";
      name = "aarch64_cortex-a72-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/aarch64_cortex-a72/routing/packages.adb";
    };
    packages =
      let
        p = ./aarch64_cortex-a72/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/aarch64_cortex-a72/telephony/";
    sourceInfo = {
      hash = "sha256-foiw6Ji96BTYPoT71BKzSjMWvN+RvatYZfYKByi3E54=";
      name = "aarch64_cortex-a72-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/aarch64_cortex-a72/telephony/packages.adb";
    };
    packages =
      let
        p = ./aarch64_cortex-a72/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
