# snapshot microchipsw/lan969x
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/microchipsw/lan969x/";
  sha256sums = {
    hash = "sha256-2hjnTy4MGEkitrzAF5Xjge50mQY748Vz36QX5m419Ek=";
    name = "microchipsw_lan969x-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/microchipsw/lan969x/sha256sums";
  };
  imagebuilder = {
    sha256 = "1091b85a41715fdfb4a939b101a00ff4f883c26741629aeaf2b05b9b7b8949a3";
    filename = "immortalwrt-imagebuilder-microchipsw-lan969x.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-4fslH82ys5TBB+meTTxJCMWT9yJR9YMWMjzQK4jwsyk=";
    name = "microchipsw_lan969x-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/microchipsw/lan969x/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_cortex-a53";
    linux_kernel = {
      release = "1";
      vermagic = "ecdde7c6076fbab77b507006e75a8c8b";
      version = "6.18.37";
    };
    default_packages = [
      "apk-openssl"
      "base-files"
      "ca-bundle"
      "dcb"
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
    kmods_target = "6.18.37-1-ecdde7c6076fbab77b507006e75a8c8b";
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
  kmods."6.18.37-1-ecdde7c6076fbab77b507006e75a8c8b" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/microchipsw/lan969x/kmods/6.18.37-1-ecdde7c6076fbab77b507006e75a8c8b/";
    sourceInfo = {
      hash = "sha256-WYTVklOHlWHIdmCQN1VYxd7gk44IxeFSeIcWzsO9e4Y=";
      name = "kmods-microchipsw_lan969x-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/microchipsw/lan969x/kmods/6.18.37-1-ecdde7c6076fbab77b507006e75a8c8b/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/microchipsw/lan969x/packages/";
    sourceInfo = {
      hash = "sha256-MR+ZKshHaJeDRA6BjpUk5/cMUy2S0RFXAx6X5v0PGpE=";
      name = "microchipsw_lan969x-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/microchipsw/lan969x/packages/packages.adb";
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
