# 25.12.2 octeon/generic
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.2/targets/octeon/generic/";
  sha256sums = {
    hash = "sha256-qEXZHnTRyTaLG5vx+i0eKisEiH1u2+8HP6taIO2c24E=";
    name = "octeon_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.2/targets/octeon/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "50571bb13565819c12e0887346f8483e11714e7cf2ec34d0140a863785190f56";
    filename = "immortalwrt-imagebuilder-25.12.2-octeon-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-wM6EtwBVMxPlGfQDpp1pH3nD7DTWmiXaJNohOziFvHI=";
    name = "octeon_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.2/targets/octeon/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips64_octeonplus";
    linux_kernel = {
      release = "1";
      vermagic = "67da05ed522bc7541d9e6e49ea508551";
      version = "6.12.103";
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
    kmods_target = "6.12.103-1-67da05ed522bc7541d9e6e49ea508551";
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
  kmods."6.12.103-1-67da05ed522bc7541d9e6e49ea508551" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.2/targets/octeon/generic/kmods/6.12.103-1-67da05ed522bc7541d9e6e49ea508551/";
    sourceInfo = {
      hash = "sha256-vaNjy6PfldhepSnQVORC3pSYa7N+ieMCbwy9qgRVi9M=";
      name = "kmods-octeon_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.2/targets/octeon/generic/kmods/6.12.103-1-67da05ed522bc7541d9e6e49ea508551/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.2/targets/octeon/generic/packages/";
    sourceInfo = {
      hash = "sha256-lXgRS6iL2/imO/2THyzadGfWMX2xqLT8VJRLn6tk6hI=";
      name = "octeon_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.2/targets/octeon/generic/packages/packages.adb";
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
