# 24.10.5 octeon/generic
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/octeon/generic/";
  sha256sums = {
    hash = "sha256-H0WF0cEFyN9zXGn59HQSCU62cAUzc2RKUeilIyuguOQ=";
    name = "octeon_generic-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/octeon/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "88d82647846f64cadda6f4e3a7f7ed285e1200bc8ed7c88bb22e42f437b5b2b1";
    filename = "immortalwrt-imagebuilder-24.10.5-octeon-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-INg5OZ+zfxVYR7Cs6lNVfSdLW5PfpBaFOawys0Uuax4=";
    name = "octeon_generic-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/octeon/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips64_octeonplus";
    linux_kernel = {
      release = "1";
      vermagic = "751e3894f4de2a041cf8e701e8a82a47";
      version = "6.6.122";
    };
    default_packages = [
      "base-files"
      "block-mount"
      "ca-bundle"
      "default-settings-chn"
      "dnsmasq-full"
      "dropbear"
      "e2fsprogs"
      "firewall4"
      "fstools"
      "kmod-nf-nathelper"
      "kmod-nf-nathelper-extra"
      "kmod-nft-offload"
      "kmod-usb-dwc3-octeon"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "luci-app-package-manager"
      "luci-compat"
      "luci-lib-base"
      "luci-lib-ipkg"
      "luci-light"
      "mkf2fs"
      "mtd"
      "netifd"
      "nftables"
      "odhcp6c"
      "odhcpd-ipv6only"
      "opkg"
      "ppp"
      "ppp-mod-pppoe"
      "procd-ujail"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "6.6.122-1-751e3894f4de2a041cf8e701e8a82a47";
    profiles = {
      cisco_vedge1000 = {
        device_packages = [
          "blkid"
          "kmod-hwmon-jc42"
          "kmod-hwmon-max6697"
          "kmod-of-mdio"
          "kmod-rtc-ds1307"
          "kmod-usb-dwc3"
          "kmod-usb-storage-uas"
          "kmod-usb3"
          "sfdisk"
          "uboot-envtools"
        ];
      };
      generic = {
        device_packages = [ ];
      };
      itus_shield-router = {
        device_packages = [ ];
      };
      ubnt_edgerouter = {
        device_packages = [ ];
      };
      ubnt_edgerouter-4 = {
        device_packages = [
          "kmod-gpio-button-hotplug"
          "kmod-leds-gpio"
          "kmod-of-mdio"
          "kmod-sfp"
          "kmod-usb3"
          "kmod-usb-dwc3"
          "kmod-usb-storage-uas"
        ];
      };
      ubnt_edgerouter-6p = {
        device_packages = [
          "kmod-gpio-button-hotplug"
          "kmod-leds-gpio"
          "kmod-of-mdio"
          "kmod-sfp"
          "kmod-usb3"
          "kmod-usb-dwc3"
          "kmod-usb-storage-uas"
        ];
      };
      ubnt_edgerouter-lite = {
        device_packages = [ ];
      };
      ubnt_unifi-usg = {
        device_packages = [
          "kmod-gpio-button-hotplug"
          "kmod-leds-gpio"
        ];
      };
    };
  };
  kmods."6.6.122-1-751e3894f4de2a041cf8e701e8a82a47" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/octeon/generic/kmods/6.6.122-1-751e3894f4de2a041cf8e701e8a82a47/";
    sourceInfo = {
      hash = "sha256-RUNs2HwPSXs4f/ETn28rt+qSOTegc5FGXeYXEkfJt9s=";
      name = "kmods-octeon_generic-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/octeon/generic/kmods/6.6.122-1-751e3894f4de2a041cf8e701e8a82a47/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/octeon/generic/packages/";
    sourceInfo = {
      hash = "sha256-5o2jkX77d3jNM02RI4Fwshne1A8eo0dBuMqNOGjGCEo=";
      name = "octeon_generic-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/octeon/generic/packages/Packages";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "mips64_octeonplus";
  feeds = import ./../../../packages/mips64_octeonplus.nix;
}
