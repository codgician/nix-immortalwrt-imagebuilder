# snapshot microchipsw/lan969x
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/microchipsw/lan969x/";
  sha256sums = {
    hash = "sha256-c9iA5ja7xlSV7AsP6kJywkZRXL8iTmgohIAzNy2kLrI=";
    name = "microchipsw_lan969x-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/microchipsw/lan969x/sha256sums";
  };
  imagebuilder = {
    sha256 = "66acf91d2cf62d36c26e2c137f661012aa38d5482a3c9833285731ac247f2ffd";
    filename = "immortalwrt-imagebuilder-microchipsw-lan969x.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-UsnkoTIqlTqeF1xevhZqMUfdG0VP5sm+JAPcs+H7yXw=";
    name = "microchipsw_lan969x-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/microchipsw/lan969x/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_cortex-a53";
    linux_kernel = {
      release = "1";
      vermagic = "64a9865a764eb42e5a44e6bc705761a6";
      version = "6.18.60";
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
    kmods_target = "6.18.60-1-64a9865a764eb42e5a44e6bc705761a6";
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
  kmods."6.18.60-1-64a9865a764eb42e5a44e6bc705761a6" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/microchipsw/lan969x/kmods/6.18.60-1-64a9865a764eb42e5a44e6bc705761a6/";
    sourceInfo = {
      hash = "sha256-1ECLkCLsTgNW3fIqot1+XlI94yhcLiMe9IEovXfbXeI=";
      name = "kmods-microchipsw_lan969x-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/microchipsw/lan969x/kmods/6.18.60-1-64a9865a764eb42e5a44e6bc705761a6/packages.adb";
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
      hash = "sha256-pC+/HiwtgIZWBE1XyVAEFPTuEybKP46N6Dan3zYk5dA=";
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
