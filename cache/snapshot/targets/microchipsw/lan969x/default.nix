# snapshot microchipsw/lan969x
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/microchipsw/lan969x/";
  sha256sums = {
    hash = "sha256-TxzEPkHNxR+ZM+eu7fwNOTUTrxygwnjihcsOBCOxJ+E=";
    name = "microchipsw_lan969x-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/microchipsw/lan969x/sha256sums";
  };
  imagebuilder = {
    sha256 = "5a654cc71b0fd82bc5d42bece4c0dc0b8878ed8554dbdf3604bd6fbea4c6a545";
    filename = "immortalwrt-imagebuilder-microchipsw-lan969x.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-Ne/iNBu2CmnzYIEl/7A5Ev2d6Gt5twMzBRdIX6lNfQg=";
    name = "microchipsw_lan969x-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/microchipsw/lan969x/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_cortex-a53";
    linux_kernel = {
      release = "1";
      vermagic = "9cef80e6c27aa23453f44624db9cda97";
      version = "6.18.44";
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
    kmods_target = "6.18.44-1-9cef80e6c27aa23453f44624db9cda97";
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
  kmods."6.18.44-1-9cef80e6c27aa23453f44624db9cda97" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/microchipsw/lan969x/kmods/6.18.44-1-9cef80e6c27aa23453f44624db9cda97/";
    sourceInfo = {
      hash = "sha256-XXgmmZzfvMkt8RQSwSjkIXJYEXCxHGb6l4M2K549gKo=";
      name = "kmods-microchipsw_lan969x-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/microchipsw/lan969x/kmods/6.18.44-1-9cef80e6c27aa23453f44624db9cda97/packages.adb";
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
      hash = "sha256-UZlrcmaK6fJmj+Yf0LhuK+rygo4q3XTxn9WAlIdBPBg=";
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
