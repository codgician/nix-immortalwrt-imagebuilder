# 24.10.0 realtek/rtl839x
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/targets/realtek/rtl839x/";
  sha256sums = {
    hash = "sha256-Q7xj/l2pR+k23pxwk8ixoHjP7X8CgKgJUPIbhc2B+9E=";
    name = "realtek_rtl839x-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/realtek/rtl839x/sha256sums";
  };
  imagebuilder = {
    sha256 = "7e4604e7d8529e679bcb8a143977aad9e2da3a308d91e2a05892e8e208ab061c";
    filename = "immortalwrt-imagebuilder-24.10.0-realtek-rtl839x.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-qnbQpgMjbzzAo0U98M5i4pACaziKw8olSQ4VOlw0rTw=";
    name = "realtek_rtl839x-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/realtek/rtl839x/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_24kc";
    linux_kernel = {
      release = "1";
      vermagic = "f5808e23f4c81d423d31df714c7533d8";
      version = "6.6.73";
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
    kmods_target = "6.6.73-1-f5808e23f4c81d423d31df714c7533d8";
    profiles = {
      d-link_dgs-1210-52 = {
        device_packages = [ ];
      };
      hpe_1920-48g = {
        device_packages = [ ];
      };
      hpe_1920-48g-poe = {
        device_packages = [ "realtek-poe" ];
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
  kmods."6.6.73-1-f5808e23f4c81d423d31df714c7533d8" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/targets/realtek/rtl839x/kmods/6.6.73-1-f5808e23f4c81d423d31df714c7533d8/";
    sourceInfo = {
      hash = "sha256-gqK8ragGjr/24b053SOW5Gv+IUNrhB40+i+pCuI2qhM=";
      name = "kmods-realtek_rtl839x-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/realtek/rtl839x/kmods/6.6.73-1-f5808e23f4c81d423d31df714c7533d8/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/targets/realtek/rtl839x/packages/";
    sourceInfo = {
      hash = "sha256-ehCol8nC967At/9aU0skCu+D+d4XgwaQQmMpGvJ0Ltw=";
      name = "realtek_rtl839x-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/realtek/rtl839x/packages/Packages";
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
