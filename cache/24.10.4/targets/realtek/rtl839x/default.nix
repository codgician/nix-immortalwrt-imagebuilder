# 24.10.4 realtek/rtl839x
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/targets/realtek/rtl839x/";
  sha256sums = {
    hash = "sha256-+0tnP0ehxkGuWTz8hIZYgM71pif6eBs/JOL+gco27pw=";
    name = "realtek_rtl839x-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/realtek/rtl839x/sha256sums";
  };
  imagebuilder = {
    sha256 = "2d68ee21b6f9767e75ea64d77c908f8be69b37b387087a22939d620dbe926622";
    filename = "immortalwrt-imagebuilder-24.10.4-realtek-rtl839x.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-XcuMvceFMdEnjOQ8BTrxBvJktNl6vH6x5PRdIwwJ8SE=";
    name = "realtek_rtl839x-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/realtek/rtl839x/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_24kc";
    linux_kernel = {
      release = "1";
      vermagic = "dcc69638a4c8a07f24128954269929e1";
      version = "6.6.110";
    };
    default_packages = [
      "base-files"
      "block-mount"
      "ca-bundle"
      "default-settings-chn"
      "dropbear"
      "ethtool"
      "firewall4"
      "fstools"
      "kmod-gpio-button-hotplug"
      "kmod-nf-nathelper"
      "kmod-nf-nathelper-extra"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "luci-app-package-manager"
      "luci-compat"
      "luci-lib-base"
      "luci-lib-ipkg"
      "luci-light"
      "mtd"
      "netifd"
      "odhcp6c"
      "opkg"
      "procd-ujail"
      "uboot-envtools"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "6.6.110-1-dcc69638a4c8a07f24128954269929e1";
    profiles = {
      d-link_dgs-1210-52 = {
        device_packages = [ ];
      };
      hpe_1920-48g = {
        device_packages = [ ];
      };
      hpe_1920-48g-poe = {
        device_packages = [
          "realtek-poe"
          "kmod-hwmon-gpiofan"
        ];
      };
      netgear_gs750e = {
        device_packages = [ ];
      };
      panasonic_m48eg-pn28480k = {
        device_packages = [
          "kmod-hwmon-gpiofan"
          "kmod-hwmon-lm75"
          "kmod-i2c-mux-pca954x"
          "kmod-thermal"
        ];
      };
      tplink_sg2452p-v4 = {
        device_packages = [
          "kmod-hwmon-gpiofan"
          "kmod-hwmon-tps23861"
        ];
      };
      zyxel_gs1900-48 = {
        device_packages = [ ];
      };
    };
  };
  kmods."6.6.110-1-dcc69638a4c8a07f24128954269929e1" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/targets/realtek/rtl839x/kmods/6.6.110-1-dcc69638a4c8a07f24128954269929e1/";
    sourceInfo = {
      hash = "sha256-Mdh16EV7oY1rCpr96/u7xJCVkI7P8QrThMscKwap9M4=";
      name = "kmods-realtek_rtl839x-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/realtek/rtl839x/kmods/6.6.110-1-dcc69638a4c8a07f24128954269929e1/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/targets/realtek/rtl839x/packages/";
    sourceInfo = {
      hash = "sha256-mHjSxmZDUrCz0NamAP1De5ET0aMATPOQm99XCNpyHpA=";
      name = "realtek_rtl839x-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/realtek/rtl839x/packages/Packages";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "mips_24kc";
  feeds = import ./../../../packages/mips_24kc.nix;
}
