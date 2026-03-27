# 25.12.0-rc1 microchipsw/lan969x
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/microchipsw/lan969x/";
  sha256sums = {
    hash = "sha256-gaYA6JeyQCJEVfsqrsgTybZqPTFZGo134ML3w5PMZ4Q=";
    name = "microchipsw_lan969x-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/microchipsw/lan969x/sha256sums";
  };
  imagebuilder = {
    sha256 = "2c767f6467fb0dc20c161b4701f8e33f638d3c1344e2f347a68cc2749434c1d8";
    filename = "immortalwrt-imagebuilder-25.12.0-rc1-microchipsw-lan969x.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-dbqmz7DC1lgQCjSXOOmKzgb0yZMvp5WAh9Qv3CRS1ZI=";
    name = "microchipsw_lan969x-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/microchipsw/lan969x/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_cortex-a53";
    linux_kernel = {
      release = "1";
      vermagic = "d7b25b3ace46c85bc1868eeea275d3f2";
      version = "6.12.74";
    };
    default_packages = [
      "apk-openssl"
      "base-files"
      "block-mount"
      "ca-bundle"
      "dcb"
      "default-settings-chn"
      "dnsmasq-full"
      "dropbear"
      "e2fsprogs"
      "ethtool-full"
      "f2fs-tools"
      "firewall4"
      "fstools"
      "ip-bridge"
      "kmod-fs-ext4"
      "kmod-fs-f2fs"
      "kmod-gpio-button-hotplug"
      "kmod-leds-gpio"
      "kmod-nf-nathelper"
      "kmod-nft-offload"
      "kmod-phy-micrel"
      "kmod-sfp"
      "kmod-sparx5-switch"
      "kmod-usb-dwc3"
      "kmod-usb3"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "losetup"
      "luci"
      "mtd"
      "netifd"
      "nftables"
      "odhcp6c"
      "odhcpd-ipv6only"
      "ppp"
      "ppp-mod-pppoe"
      "procd-ujail"
      "uboot-envtools"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "6.12.74-1-d7b25b3ace46c85bc1868eeea275d3f2";
    profiles = {
      microchip_ev23x71a = {
        device_packages = [ "kmod-i2c-mux-gpio" ];
      };
      novarq_tactical-1000 = {
        device_packages = [
          "kmod-i2c-mux-gpio"
          "kmod-gpio-pwm"
          "kmod-hwmon-pwmfan"
          "kmod-hwmon-gpiofan"
          "kmod-rtc-ds1307"
          "kmod-hwmon-lm75"
        ];
      };
    };
  };
  kmods."6.12.74-1-d7b25b3ace46c85bc1868eeea275d3f2" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/microchipsw/lan969x/kmods/6.12.74-1-d7b25b3ace46c85bc1868eeea275d3f2/";
    sourceInfo = {
      hash = "sha256-mrls/4EUPUZdJ3FsoW/z6duxbDxnYC1lPQeISudWuJc=";
      name = "kmods-microchipsw_lan969x-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/microchipsw/lan969x/kmods/6.12.74-1-d7b25b3ace46c85bc1868eeea275d3f2/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/microchipsw/lan969x/packages/";
    sourceInfo = {
      hash = "sha256-pvYBfLFdd1UBq4PQYo+6Z9HXsU5gyVyg995KqdR7Cig=";
      name = "microchipsw_lan969x-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/microchipsw/lan969x/packages/packages.adb";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "aarch64_cortex-a53";
  feeds = import ./../../../packages/aarch64_cortex-a53.nix;
}
