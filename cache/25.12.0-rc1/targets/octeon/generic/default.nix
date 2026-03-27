# 25.12.0-rc1 octeon/generic
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/octeon/generic/";
  sha256sums = {
    hash = "sha256-Bn/kkPMPxD7j8u/XuBMz8OLNXYc8E40YFSr78pCiBsY=";
    name = "octeon_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/octeon/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "8efbc0b3a1482c0dc3f93f0b4d17ee27c4acc4bdb8d381127051d38f2886a9b2";
    filename = "immortalwrt-imagebuilder-25.12.0-rc1-octeon-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-6rc5u5Tue269HiAQ+7F0KoY6k9Wb7xZ5HmxEYu5KE0s=";
    name = "octeon_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/octeon/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips64_octeonplus";
    linux_kernel = {
      release = "1";
      vermagic = "e9e9f7e052198a26effe67f226fe7159";
      version = "6.12.74";
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
    kmods_target = "6.12.74-1-e9e9f7e052198a26effe67f226fe7159";
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
  kmods."6.12.74-1-e9e9f7e052198a26effe67f226fe7159" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/octeon/generic/kmods/6.12.74-1-e9e9f7e052198a26effe67f226fe7159/";
    sourceInfo = {
      hash = "sha256-dTBZ8Mpu0AO9XSYp/roZiDGeiNBryClLbHkSdssUVS8=";
      name = "kmods-octeon_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/octeon/generic/kmods/6.12.74-1-e9e9f7e052198a26effe67f226fe7159/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/octeon/generic/packages/";
    sourceInfo = {
      hash = "sha256-s3Z3VcGcriQ5qAFOHnqeaeZUf5HsAhyLy4FBnM++8Ic=";
      name = "octeon_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/octeon/generic/packages/packages.adb";
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
