# 24.10.1 realtek/rtl839x
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/targets/realtek/rtl839x/";
  sha256sums = {
    hash = "sha256-FLvgOU5bpJiQ2Ih7K46WoBBK1g4HLG2BzN+hOsrOZO0=";
    name = "realtek_rtl839x-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/realtek/rtl839x/sha256sums";
  };
  imagebuilder = {
    sha256 = "9818d7ae968dbd3afcbbb76ced97a693b359096c63d086883d1fdc667b464d1c";
    filename = "immortalwrt-imagebuilder-24.10.1-realtek-rtl839x.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-dWOi4SkTnwxXjxuBa5EQFQbwaB+0ifoHF/yd++15G20=";
    name = "realtek_rtl839x-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/realtek/rtl839x/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_24kc";
    linux_kernel = {
      release = "1";
      vermagic = "5bf3f9dcc0d7775602eee9639e4aaf6b";
      version = "6.6.86";
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
    kmods_target = "6.6.86-1-5bf3f9dcc0d7775602eee9639e4aaf6b";
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
  kmods."6.6.86-1-5bf3f9dcc0d7775602eee9639e4aaf6b" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/targets/realtek/rtl839x/kmods/6.6.86-1-5bf3f9dcc0d7775602eee9639e4aaf6b/";
    sourceInfo = {
      hash = "sha256-Hd3DAY0JIQC5kE39vYW1o14IzsMNxah9vj/LNu9dkHk=";
      name = "kmods-realtek_rtl839x-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/realtek/rtl839x/kmods/6.6.86-1-5bf3f9dcc0d7775602eee9639e4aaf6b/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/targets/realtek/rtl839x/packages/";
    sourceInfo = {
      hash = "sha256-CQXJmnB49zbhZBt+IDoNd8n6WnN/yLb6WWwJB/6k4BY=";
      name = "realtek_rtl839x-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/realtek/rtl839x/packages/Packages";
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
