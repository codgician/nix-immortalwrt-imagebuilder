# snapshot bmips/bcm6318
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/bmips/bcm6318/";
  sha256sums = {
    hash = "sha256-BHtqc3P5O+BkTaJHJIwyi2OFAFXtun1udrSZNhwWLj0=";
    name = "bmips_bcm6318-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/bmips/bcm6318/sha256sums";
  };
  imagebuilder = {
    sha256 = "73c872137b2fbc9683a758530038157c17edbdb11b07c8276699899e5ad3ce48";
    filename = "immortalwrt-imagebuilder-bmips-bcm6318.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-Klz/JUGiWVnl3xDWZbtjmefpZS1eRgvbQmbe8T5G2xc=";
    name = "bmips_bcm6318-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/bmips/bcm6318/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_mips32";
    linux_kernel = {
      release = "1";
      vermagic = "32646d0d2f46331e553c64f8bd232f76";
      version = "6.12.77";
    };
    default_packages = [
      "apk-openssl"
      "base-files"
      "ca-bundle"
      "dnsmasq-full"
      "dropbear"
      "ethtool"
      "firewall4"
      "fstools"
      "kmod-gpio-button-hotplug"
      "kmod-nft-offload"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
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
    kmods_target = "6.12.77-1-32646d0d2f46331e553c64f8bd232f76";
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
  kmods."6.12.77-1-32646d0d2f46331e553c64f8bd232f76" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/bmips/bcm6318/kmods/6.12.77-1-32646d0d2f46331e553c64f8bd232f76/";
    sourceInfo = {
      hash = "sha256-R5NNbHEzdakb6XqhkURSSFa3Qpf7BpkmH+p4BSPYq5A=";
      name = "kmods-bmips_bcm6318-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/bmips/bcm6318/kmods/6.12.77-1-32646d0d2f46331e553c64f8bd232f76/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/bmips/bcm6318/packages/";
    sourceInfo = {
      hash = "sha256-83ztvmuB+PyryWiJqk1VTT6Knm22XMrjn7FashkTPi0=";
      name = "bmips_bcm6318-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/bmips/bcm6318/packages/packages.adb";
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
