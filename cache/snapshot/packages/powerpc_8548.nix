# snapshot package feeds for powerpc_8548
{
  sha256sums = {
    hash = "sha256-50bdyANTnEHIbgrL7jFFIu7/E9jGuJC5/B2NHm1+nyI=";
    name = "powerpc_8548-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/packages/powerpc_8548/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/powerpc_8548/base/";
    sourceInfo = {
      hash = "sha256-9lPJMYIQtI8i0YMVeznDWSQj4lkqTLq2OalPf+VB0ik=";
      name = "powerpc_8548-base-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/powerpc_8548/base/packages.adb";
    };
    packages =
      let
        p = ./powerpc_8548/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/powerpc_8548/luci/";
    sourceInfo = {
      hash = "sha256-AsnvctBeVYMFo7ju2YjNeIjPs8zl4HbUHOTaGIlAFBY=";
      name = "powerpc_8548-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/powerpc_8548/luci/packages.adb";
    };
    packages =
      let
        p = ./powerpc_8548/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/powerpc_8548/packages/";
    sourceInfo = {
      hash = "sha256-AVq1FRcxaOpTDrRYxXapWfWFPs9KCKFnTbd5iK919Y8=";
      name = "powerpc_8548-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/powerpc_8548/packages/packages.adb";
    };
    packages =
      let
        p = ./powerpc_8548/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/powerpc_8548/routing/";
    sourceInfo = {
      hash = "sha256-U+MphsDxSoJhSF1Cat+RH0ceU19+FC9qi6caKm6QCLk=";
      name = "powerpc_8548-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/powerpc_8548/routing/packages.adb";
    };
    packages =
      let
        p = ./powerpc_8548/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/powerpc_8548/telephony/";
    sourceInfo = {
      hash = "sha256-zgkDYSaqXEzJbpgQuRLc0jfQeZbrEYIK0dYEeJjrdKA=";
      name = "powerpc_8548-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/powerpc_8548/telephony/packages.adb";
    };
    packages =
      let
        p = ./powerpc_8548/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
