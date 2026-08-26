# 25.12.1 package feeds for powerpc64_e5500
{
  sha256sums = {
    hash = "sha256-NuogVKpgVZxvJMvFkXdmUfcJDq9g80vRUwVv0+98uSo=";
    name = "powerpc64_e5500-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/powerpc64_e5500/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/packages/powerpc64_e5500/base/";
    sourceInfo = {
      hash = "sha256-kUr7bYT+XmnCv5vkJAeoygyxiByLkcctY+9LIC12IHk=";
      name = "powerpc64_e5500-base-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/powerpc64_e5500/base/packages.adb";
    };
    packages =
      let
        p = ./powerpc64_e5500/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/packages/powerpc64_e5500/luci/";
    sourceInfo = {
      hash = "sha256-OclKfNa/KLa+xhNVdi2H7qDzuVn1duNuSNd0a7qBAFU=";
      name = "powerpc64_e5500-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/powerpc64_e5500/luci/packages.adb";
    };
    packages =
      let
        p = ./powerpc64_e5500/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/packages/powerpc64_e5500/packages/";
    sourceInfo = {
      hash = "sha256-f1GgjlwUN4qLlgsKUnorFQPsiywVyrs3/4HlhqiTxvI=";
      name = "powerpc64_e5500-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/powerpc64_e5500/packages/packages.adb";
    };
    packages =
      let
        p = ./powerpc64_e5500/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/packages/powerpc64_e5500/routing/";
    sourceInfo = {
      hash = "sha256-nco6yjJ7PVaQctsHSeHwbKQAHVrD8Vz1fgq/ofBrOxs=";
      name = "powerpc64_e5500-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/powerpc64_e5500/routing/packages.adb";
    };
    packages =
      let
        p = ./powerpc64_e5500/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/packages/powerpc64_e5500/telephony/";
    sourceInfo = {
      hash = "sha256-Tqi+Dk7V9xmk9aHKdxh719rZ8a6EHxFMDsiJWlcLf6w=";
      name = "powerpc64_e5500-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/powerpc64_e5500/telephony/packages.adb";
    };
    packages =
      let
        p = ./powerpc64_e5500/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
