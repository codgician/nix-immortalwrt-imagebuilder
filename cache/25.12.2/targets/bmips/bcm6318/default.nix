# 25.12.2 bmips/bcm6318
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.2/targets/bmips/bcm6318/";
  sha256sums = {
    hash = "sha256-vfNE4cCct4ujOIUjd7OiQ2g0PDOHrteSa5TXV86exTs=";
    name = "bmips_bcm6318-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.2/targets/bmips/bcm6318/sha256sums";
  };
  imagebuilder = {
    sha256 = "05a669a0b3b2577a37bf459a07799ee5f7dde1884e573b8e69391d513b0a7b3c";
    filename = "immortalwrt-imagebuilder-25.12.2-bmips-bcm6318.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-3qnoBiXVSUW5MqjeAXFqdr2cdyaIOo37Jz4gjs4VFAk=";
    name = "bmips_bcm6318-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.2/targets/bmips/bcm6318/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_mips32";
    linux_kernel = {
      release = "1";
      vermagic = "4c18b5ff4c8377500a52172c2f1bcde7";
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
      "ethtool"
      "firewall4"
      "fstools"
      "kmod-gpio-button-hotplug"
      "kmod-nf-nathelper"
      "kmod-nft-offload"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "luci"
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
    kmods_target = "6.12.103-1-4c18b5ff4c8377500a52172c2f1bcde7";
    profiles = {
      comtrend_ar-5315u = {
        device_packages = [
          "kmod-usb-ohci"
          "kmod-usb-ledtrig-usbport"
          "kmod-usb2"
          "kmod-b43"
          "wpad-basic-openssl"
          "broadcom-43217-sprom"
          "kmod-leds-bcm6328"
        ];
      };
      tp-link_td-w8968-v3 = {
        device_packages = [
          "kmod-usb-ohci"
          "kmod-usb-ledtrig-usbport"
          "kmod-usb2"
          "kmod-b43"
          "wpad-basic-openssl"
          "broadcom-43217-sprom"
          "kmod-leds-bcm6328"
        ];
      };
    };
  };
  kmods."6.12.103-1-4c18b5ff4c8377500a52172c2f1bcde7" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.2/targets/bmips/bcm6318/kmods/6.12.103-1-4c18b5ff4c8377500a52172c2f1bcde7/";
    sourceInfo = {
      hash = "sha256-hJyF2UedZPtgsjnR22biwuYQ/SA5RoZmgT0mbRu0wWk=";
      name = "kmods-bmips_bcm6318-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.2/targets/bmips/bcm6318/kmods/6.12.103-1-4c18b5ff4c8377500a52172c2f1bcde7/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.2/targets/bmips/bcm6318/packages/";
    sourceInfo = {
      hash = "sha256-U2rrp1ZSxwt5yqGJPh/x3lFFrkxXQHAtHW+g9O+88DM=";
      name = "bmips_bcm6318-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.2/targets/bmips/bcm6318/packages/packages.adb";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "mips_mips32";
  feeds = import ./../../../packages/mips_mips32.nix;
}
