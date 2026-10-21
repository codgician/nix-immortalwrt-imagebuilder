# snapshot qualcommbe/ipq95xx
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/qualcommbe/ipq95xx/";
  sha256sums = {
    hash = "sha256-g6E10zyiGyoUhQ7Y0j6jL0UsL9jn6gdbz63j9agz/WU=";
    name = "qualcommbe_ipq95xx-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/qualcommbe/ipq95xx/sha256sums";
  };
  imagebuilder = {
    sha256 = "6f52a6ad26b97575f1cdd55ec84d9ea3cc712aa6f98968d803ad9fa03eb01caa";
    filename = "immortalwrt-imagebuilder-qualcommbe-ipq95xx.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-s+Zx+NzwXuE3gsydLlFbAIJztQVAAsa1HVKEE1qFvH4=";
    name = "qualcommbe_ipq95xx-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/qualcommbe/ipq95xx/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_cortex-a53";
    linux_kernel = {
      release = "1";
      vermagic = "f1a6a34e2b2cfb8d65e23e659c5d63d8";
      version = "6.18.55";
    };
    default_packages = [
      "apk-openssl"
      "base-files"
      "ca-bundle"
      "dnsmasq-full"
      "dropbear"
      "e2fsprogs"
      "firewall4"
      "fstools"
      "kmod-fs-ext4"
      "kmod-gpio-button-hotplug"
      "kmod-leds-gpio"
      "kmod-nft-offload"
      "kmod-qcom-ppe"
      "kmod-usb-dwc3"
      "kmod-usb-dwc3-qcom"
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
      "wpad-openssl"
    ];
    kmods_target = "6.18.55-1-f1a6a34e2b2cfb8d65e23e659c5d63d8";
    profiles = {
      "8devices_kiwi-dvk" = {
        device_packages = [
          "kmod-ath12k"
          "ath12k-firmware-qcn9274"
          "ipq-wifi-8devices_kiwi"
          "f2fsck"
          "mkf2fs"
          "kmod-sfp"
          "kmod-phy-maxlinear"
          "kmod-phy-realtek"
          "rtl826x-firmware"
        ];
      };
      askey_sbe1v1k = {
        device_packages = [
          "ath12k-firmware-qcn9274"
          "f2fsck"
          "ipq-wifi-askey_sbe1v1k"
          "kmod-ath12k"
          "kmod-hwmon-pwmfan"
          "kmod-phy-realtek"
          "mkf2fs"
          "rtl826x-firmware"
        ];
      };
      linksys_ln6001 = {
        device_packages = [
          "bluetooth-uart"
          "kmod-leds-pwm"
          "kmod-fs-f2fs"
          "mkf2fs"
          "f2fsck"
        ];
      };
      qcom_rdp433 = {
        device_packages = [ ];
      };
    };
  };
  kmods."6.18.55-1-f1a6a34e2b2cfb8d65e23e659c5d63d8" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/qualcommbe/ipq95xx/kmods/6.18.55-1-f1a6a34e2b2cfb8d65e23e659c5d63d8/";
    sourceInfo = {
      hash = "sha256-mP2qicdmvo//OvKMS3chdvwjGCRETDasV5+z/UJLmVc=";
      name = "kmods-qualcommbe_ipq95xx-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/qualcommbe/ipq95xx/kmods/6.18.55-1-f1a6a34e2b2cfb8d65e23e659c5d63d8/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/qualcommbe/ipq95xx/packages/";
    sourceInfo = {
      hash = "sha256-Vqay2ClwjF0Q/YeumoL9lT6rWkunMj2KShB860GDnqM=";
      name = "qualcommbe_ipq95xx-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/qualcommbe/ipq95xx/packages/packages.adb";
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
