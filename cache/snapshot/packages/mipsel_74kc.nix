# snapshot package feeds for mipsel_74kc
{
  sha256sums = {
    hash = "sha256-5QqKfOge7Aa4zQ0/rQmHhcSJ5j/9p1ieduyVX+eUpCs=";
    name = "mipsel_74kc-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/packages/mipsel_74kc/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/mipsel_74kc/base/";
    sourceInfo = {
      hash = "sha256-/fkKP+L22yV/g+RAnYdUtXtpf07H1RIlVJun6YWGG8w=";
      name = "mipsel_74kc-base-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/mipsel_74kc/base/packages.adb";
    };
    packages =
      let
        p = ./mipsel_74kc/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/mipsel_74kc/luci/";
    sourceInfo = {
      hash = "sha256-ecRPL40EjvSasg14QpKSelGGOAjPBWEiRi1ZPIm/FK8=";
      name = "mipsel_74kc-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/mipsel_74kc/luci/packages.adb";
    };
    packages =
      let
        p = ./mipsel_74kc/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/mipsel_74kc/packages/";
    sourceInfo = {
      hash = "sha256-keRDMVBGs1ID/akx4/8vWoAJB2PhVDTCqWx32PA6vKU=";
      name = "mipsel_74kc-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/mipsel_74kc/packages/packages.adb";
    };
    packages =
      let
        p = ./mipsel_74kc/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/mipsel_74kc/routing/";
    sourceInfo = {
      hash = "sha256-YsyAUVfEycw/Co2NlPzEstD0LU0Z1oIYZRrJoUm49ts=";
      name = "mipsel_74kc-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/mipsel_74kc/routing/packages.adb";
    };
    packages =
      let
        p = ./mipsel_74kc/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/mipsel_74kc/telephony/";
    sourceInfo = {
      hash = "sha256-CoRKYw4Q+aa/vw/N/NVoDmOAJKHMkxwPj1dVLE//dcE=";
      name = "mipsel_74kc-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/mipsel_74kc/telephony/packages.adb";
    };
    packages =
      let
        p = ./mipsel_74kc/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
