# 25.12.1 octeon/generic
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/targets/octeon/generic/";
  sha256sums = {
    hash = "sha256-OZ+gg47iZx8cI5eOtv615NA7x6RPkv31sETZri8qXwM=";
    name = "octeon_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.1/targets/octeon/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "25b072eda4801fb1cfdc578e044a9d3f0a327c0901a658a052e5f8cf30252631";
    filename = "immortalwrt-imagebuilder-25.12.1-octeon-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-8iRBs0TJUMvbwFyZyV/VtgwRs8aJImhfV00ZSpoazbg=";
    name = "octeon_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.1/targets/octeon/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips64_octeonplus";
    linux_kernel = {
      release = "1";
      vermagic = "67da05ed522bc7541d9e6e49ea508551";
      version = "6.12.94";
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
    kmods_target = "6.12.94-1-67da05ed522bc7541d9e6e49ea508551";
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
  kmods."6.12.94-1-67da05ed522bc7541d9e6e49ea508551" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/targets/octeon/generic/kmods/6.12.94-1-67da05ed522bc7541d9e6e49ea508551/";
    sourceInfo = {
      hash = "sha256-gJESJOF4sW2EP/XryaEvjZEn+sy5CIMAf/Jmq4k9HoY=";
      name = "kmods-octeon_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/targets/octeon/generic/kmods/6.12.94-1-67da05ed522bc7541d9e6e49ea508551/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/targets/octeon/generic/packages/";
    sourceInfo = {
      hash = "sha256-HfcvCwWSdtUSmzziY12X46UVG/Uon4s7mrW8dZlyYw0=";
      name = "octeon_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/targets/octeon/generic/packages/packages.adb";
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
