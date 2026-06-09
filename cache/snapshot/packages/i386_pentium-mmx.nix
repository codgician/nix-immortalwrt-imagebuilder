# snapshot package feeds for i386_pentium-mmx
{
  sha256sums = {
    hash = "sha256-O8VfpyZn2XTqdu5Gbh3X8hwNRkTq3LxwmTNeBKeb5Hg=";
    name = "i386_pentium-mmx-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/packages/i386_pentium-mmx/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/i386_pentium-mmx/base/";
    sourceInfo = {
      hash = "sha256-+Xp5EJUFfjs35bKBLgAyzOlUsjH5er5jz9K0uZgDO/g=";
      name = "i386_pentium-mmx-base-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/i386_pentium-mmx/base/packages.adb";
    };
    packages =
      let
        p = ./i386_pentium-mmx/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/i386_pentium-mmx/luci/";
    sourceInfo = {
      hash = "sha256-QPITibWZzVODchjWvmxhUFrOhRhqTRs7IvSsN2p70RQ=";
      name = "i386_pentium-mmx-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/i386_pentium-mmx/luci/packages.adb";
    };
    packages =
      let
        p = ./i386_pentium-mmx/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/i386_pentium-mmx/packages/";
    sourceInfo = {
      hash = "sha256-j66ukOtRbKgLu9T78mYRzEYmO/x2ZZTakWsaSe1OVyo=";
      name = "i386_pentium-mmx-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/i386_pentium-mmx/packages/packages.adb";
    };
    packages =
      let
        p = ./i386_pentium-mmx/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/i386_pentium-mmx/routing/";
    sourceInfo = {
      hash = "sha256-V00PVo1QgiiYasdvnWG2KT4u1ihLZPMVIctUFRfZAbU=";
      name = "i386_pentium-mmx-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/i386_pentium-mmx/routing/packages.adb";
    };
    packages =
      let
        p = ./i386_pentium-mmx/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/i386_pentium-mmx/telephony/";
    sourceInfo = {
      hash = "sha256-DIFMwZTOTyqqaVCFk1yuQ6uiPtj2AJctt2mWB2jP4AI=";
      name = "i386_pentium-mmx-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/i386_pentium-mmx/telephony/packages.adb";
    };
    packages =
      let
        p = ./i386_pentium-mmx/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
