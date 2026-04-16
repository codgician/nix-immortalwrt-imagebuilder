# 25.12.0-rc2 microchipsw/lan969x
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/microchipsw/lan969x/";
  sha256sums = {
    hash = "sha256-fX7NloIcuAq4j94hPwP7LjVYGVhQn2/6sLA2uJ+61yo=";
    name = "microchipsw_lan969x-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/microchipsw/lan969x/sha256sums";
  };
  imagebuilder = {
    sha256 = "27ecb0c94df79e90a6ddcbdd33b5b54f8866c922445fb597eadc1159ad1bd04a";
    filename = "immortalwrt-imagebuilder-25.12.0-rc2-microchipsw-lan969x.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-nxvdYj3y9aj7u9YuN4pKSd7HkJ3GFKyIuA07bagiwT4=";
    name = "microchipsw_lan969x-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/microchipsw/lan969x/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_cortex-a53";
    linux_kernel = {
      release = "1";
      vermagic = "c819eefca6f02a097b36e8eac1d4fb07";
      version = "6.12.79";
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
    kmods_target = "6.12.79-1-c819eefca6f02a097b36e8eac1d4fb07";
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
  kmods."6.12.79-1-c819eefca6f02a097b36e8eac1d4fb07" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/microchipsw/lan969x/kmods/6.12.79-1-c819eefca6f02a097b36e8eac1d4fb07/";
    sourceInfo = {
      hash = "sha256-Lu3SoLx4wc6i1knpnofO4ICjW1tlpAaJ205h7ct/63A=";
      name = "kmods-microchipsw_lan969x-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/microchipsw/lan969x/kmods/6.12.79-1-c819eefca6f02a097b36e8eac1d4fb07/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/microchipsw/lan969x/packages/";
    sourceInfo = {
      hash = "sha256-5YkawKmE3JH+rVgxmEN0q8S7RCv9+GIJnUE3eAIgX+I=";
      name = "microchipsw_lan969x-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/microchipsw/lan969x/packages/packages.adb";
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
