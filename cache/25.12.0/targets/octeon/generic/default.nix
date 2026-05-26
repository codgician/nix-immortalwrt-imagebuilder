# 25.12.0 octeon/generic
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/targets/octeon/generic/";
  sha256sums = {
    hash = "sha256-WY5gPrk9pWjMROPNkhu1p5EHdIGkxSkczv2ep9rM4mk=";
    name = "octeon_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/octeon/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "199481ca942219355b69628ef3e9cc50900a70bc3686fceabea86a04d8a4867c";
    filename = "immortalwrt-imagebuilder-25.12.0-octeon-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-N6eeDRycNOUcmWCkwqCYjXZGPC67oMajN9blY2h7dAs=";
    name = "octeon_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/octeon/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips64_octeonplus";
    linux_kernel = {
      release = "1";
      vermagic = "e072522ea70bae30942f299bd91628ee";
      version = "6.12.87";
    };
    default_packages = [
      "apk-openssl"
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
      "kmod-nft-offload"
      "kmod-usb-dwc3-octeon"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "luci"
      "mkf2fs"
      "mtd"
      "netifd"
      "nftables"
      "odhcp6c"
      "odhcpd-ipv6only"
      "ppp"
      "ppp-mod-pppoe"
      "procd-ujail"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "6.12.87-1-e072522ea70bae30942f299bd91628ee";
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
  kmods."6.12.87-1-e072522ea70bae30942f299bd91628ee" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/targets/octeon/generic/kmods/6.12.87-1-e072522ea70bae30942f299bd91628ee/";
    sourceInfo = {
      hash = "sha256-EFeaLNyliDYKy7D4KPYu2AIoXrW1/24xY6wYKanUHMw=";
      name = "kmods-octeon_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/octeon/generic/kmods/6.12.87-1-e072522ea70bae30942f299bd91628ee/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/targets/octeon/generic/packages/";
    sourceInfo = {
      hash = "sha256-GZajB20CM0oyWIPO0OvDZMRW8IznwPFTM5yEgUtZTe4=";
      name = "octeon_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/octeon/generic/packages/packages.adb";
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
