# snapshot microchipsw/lan969x
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/microchipsw/lan969x/";
  sha256sums = {
    hash = "sha256-BXxuDuRzUClbiy206ykxSy+bkd+qm7afI7cfCEvwchQ=";
    name = "microchipsw_lan969x-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/microchipsw/lan969x/sha256sums";
  };
  imagebuilder = {
    sha256 = "4e187b9f68ec3cd71ae55e1d3e68c18244cbfb58db98c792d6a94e20e83dc05f";
    filename = "immortalwrt-imagebuilder-microchipsw-lan969x.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-yLU4ZGvss1DiEzfv8gArVIw5RHfYdwcEb6+VrDyH110=";
    name = "microchipsw_lan969x-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/microchipsw/lan969x/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_cortex-a53";
    linux_kernel = {
      release = "1";
      vermagic = "a4e892281ea19b7298317912abbd4f68";
      version = "6.18.39";
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
    kmods_target = "6.18.39-1-a4e892281ea19b7298317912abbd4f68";
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
  kmods."6.18.39-1-a4e892281ea19b7298317912abbd4f68" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/microchipsw/lan969x/kmods/6.18.39-1-a4e892281ea19b7298317912abbd4f68/";
    sourceInfo = {
      hash = "sha256-j6VOJ+gSjpfNA5G6tfRM1gu6nziW/A9u64dbVoNNRtw=";
      name = "kmods-microchipsw_lan969x-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/microchipsw/lan969x/kmods/6.18.39-1-a4e892281ea19b7298317912abbd4f68/packages.adb";
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
      hash = "sha256-GQQqaKl7gvM76n8SwpA/j+Ts2exBa+0FzhVXPJEqzpw=";
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
