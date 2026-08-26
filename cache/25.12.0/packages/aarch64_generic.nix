# 25.12.0 package feeds for aarch64_generic
{
  sha256sums = {
    hash = "sha256-ux8t9biAn1FcWHeI8e2GvJnDfX7BAtMtSMNdcTHs0I4=";
    name = "aarch64_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/aarch64_generic/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/aarch64_generic/base/";
    sourceInfo = {
      hash = "sha256-Uw0RQqoLK6RjRswxHMk3x3ManOLSU0f8iKxgkXHndzQ=";
      name = "aarch64_generic-base-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/aarch64_generic/base/packages.adb";
    };
    packages =
      let
        p = ./aarch64_generic/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/aarch64_generic/luci/";
    sourceInfo = {
      hash = "sha256-eJgASY+tqgSlW0FS4zP+0wx/xOuoTF1Szzrqd8fWCm4=";
      name = "aarch64_generic-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/aarch64_generic/luci/packages.adb";
    };
    packages =
      let
        p = ./aarch64_generic/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/aarch64_generic/packages/";
    sourceInfo = {
      hash = "sha256-1/03oMXnyubFLpHyN/vgASzcwbMZG1BXhacul7gM+/0=";
      name = "aarch64_generic-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/aarch64_generic/packages/packages.adb";
    };
    packages =
      let
        p = ./aarch64_generic/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/aarch64_generic/routing/";
    sourceInfo = {
      hash = "sha256-/DAVbzG4A9EaqaycUsNZUT0PkD/aanqbWBXEjL2pXWk=";
      name = "aarch64_generic-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/aarch64_generic/routing/packages.adb";
    };
    packages =
      let
        p = ./aarch64_generic/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/aarch64_generic/telephony/";
    sourceInfo = {
      hash = "sha256-ytW2gQ4lEIaj91+X7+brnVC16iKIlz+F08CJmijLU/Y=";
      name = "aarch64_generic-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/aarch64_generic/telephony/packages.adb";
    };
    packages =
      let
        p = ./aarch64_generic/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
