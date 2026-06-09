# snapshot package feeds for i386_pentium4
{
  sha256sums = {
    hash = "sha256-YXz3TUiqUhxWFIpe3p7B5JHVZNwBx1ED4ZaOLaBWdvU=";
    name = "i386_pentium4-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/packages/i386_pentium4/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/i386_pentium4/base/";
    sourceInfo = {
      hash = "sha256-qpb0/hrm8KXOyFTUp6MtpsDULeA3G4mYFBWQUGJVCeU=";
      name = "i386_pentium4-base-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/i386_pentium4/base/packages.adb";
    };
    packages =
      let
        p = ./i386_pentium4/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/i386_pentium4/luci/";
    sourceInfo = {
      hash = "sha256-1RvCl57Tslc2gAQ8q6WdbLkQvl4nokD0ZlXI2bhovgc=";
      name = "i386_pentium4-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/i386_pentium4/luci/packages.adb";
    };
    packages =
      let
        p = ./i386_pentium4/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/i386_pentium4/packages/";
    sourceInfo = {
      hash = "sha256-anrumYUmYaP3HsEmZR1ovt9hB3CgmfY1/UEHTowyVuY=";
      name = "i386_pentium4-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/i386_pentium4/packages/packages.adb";
    };
    packages =
      let
        p = ./i386_pentium4/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/i386_pentium4/routing/";
    sourceInfo = {
      hash = "sha256-YXEZAc22sFAiJ6/TPq7IH2f4wrlGqGX7tG+P5/AAvJ8=";
      name = "i386_pentium4-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/i386_pentium4/routing/packages.adb";
    };
    packages =
      let
        p = ./i386_pentium4/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/i386_pentium4/telephony/";
    sourceInfo = {
      hash = "sha256-XZu3psrfqPUYOAFrym3Hen36Z0dT3oT75WCus46bZu8=";
      name = "i386_pentium4-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/i386_pentium4/telephony/packages.adb";
    };
    packages =
      let
        p = ./i386_pentium4/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
