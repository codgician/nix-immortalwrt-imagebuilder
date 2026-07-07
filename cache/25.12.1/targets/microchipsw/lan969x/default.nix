# 25.12.1 microchipsw/lan969x
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/targets/microchipsw/lan969x/";
  sha256sums = {
    hash = "sha256-laajx6MB4gcIuyXeVh1GG4ioJ4N3goeWB+0FWAc8/6c=";
    name = "microchipsw_lan969x-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.1/targets/microchipsw/lan969x/sha256sums";
  };
  imagebuilder = {
    sha256 = "f18912873490139a9557a9be0625620905dd15b8f9532ba46cead763e10ca469";
    filename = "immortalwrt-imagebuilder-25.12.1-microchipsw-lan969x.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-LeITYJCH9Htido87m3ppkIzN0ZQOgy6U6mcHSHaxr/0=";
    name = "microchipsw_lan969x-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.1/targets/microchipsw/lan969x/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_cortex-a53";
    linux_kernel = {
      release = "1";
      vermagic = "940b1b544d4fd8d954a27f75e84e1682";
      version = "6.12.94";
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
    kmods_target = "6.12.94-1-940b1b544d4fd8d954a27f75e84e1682";
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
  kmods."6.12.94-1-940b1b544d4fd8d954a27f75e84e1682" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/targets/microchipsw/lan969x/kmods/6.12.94-1-940b1b544d4fd8d954a27f75e84e1682/";
    sourceInfo = {
      hash = "sha256-vRdogfrjho64diKqcCtWZQW6nITIvfdZVE9s3FNh1nA=";
      name = "kmods-microchipsw_lan969x-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/targets/microchipsw/lan969x/kmods/6.12.94-1-940b1b544d4fd8d954a27f75e84e1682/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/targets/microchipsw/lan969x/packages/";
    sourceInfo = {
      hash = "sha256-8u+G/PzhluZcVNKkT9my+oviBECIod29XtIUSK/aUkU=";
      name = "microchipsw_lan969x-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/targets/microchipsw/lan969x/packages/packages.adb";
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
