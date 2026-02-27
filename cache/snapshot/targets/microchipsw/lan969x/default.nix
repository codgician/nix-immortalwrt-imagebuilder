# snapshot microchipsw/lan969x
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/microchipsw/lan969x/";
  sha256sums = {
    hash = "sha256-ILkwQaXCypFFr2mb4NH9aD1PcbPu2oNPHPvCFdjzKTE=";
    name = "microchipsw_lan969x-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/microchipsw/lan969x/sha256sums";
  };
  imagebuilder = {
    sha256 = "743c1598a30815de506087a230dc351f422597477e77f5da9f69398e7175006c";
    filename = "immortalwrt-imagebuilder-microchipsw-lan969x.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-agl1P283zZe7My7SZwMnri6kPKiQgc36FDPwecSUjtY=";
    name = "microchipsw_lan969x-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/microchipsw/lan969x/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_cortex-a53";
    linux_kernel = {
      release = "1";
      vermagic = "8d585b84acbd07d3b9c90c56361eeeb2";
      version = "6.12.67";
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
    kmods_target = "6.12.67-1-8d585b84acbd07d3b9c90c56361eeeb2";
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
  kmods."6.12.67-1-8d585b84acbd07d3b9c90c56361eeeb2" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/microchipsw/lan969x/kmods/6.12.67-1-8d585b84acbd07d3b9c90c56361eeeb2/";
    sourceInfo = {
      hash = "sha256-VM2Mb5yX7RZsXLRahIoynNps7/vq7XnFO0YTaIyd4QQ=";
      name = "kmods-microchipsw_lan969x-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/microchipsw/lan969x/kmods/6.12.67-1-8d585b84acbd07d3b9c90c56361eeeb2/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/microchipsw/lan969x/packages/";
    sourceInfo = {
      hash = "sha256-yEeUdXIgEzmFpa0JvPhT9/q/oBRHT0Azyh/SoC900fc=";
      name = "microchipsw_lan969x-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/microchipsw/lan969x/packages/packages.adb";
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
