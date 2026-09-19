# snapshot mpc85xx/p1010
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/mpc85xx/p1010/";
  sha256sums = {
    hash = "sha256-eTTz6DlwhOB5ImPCwWqZzIvlbUfIXJmrmACpigw4WzY=";
    name = "mpc85xx_p1010-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/mpc85xx/p1010/sha256sums";
  };
  imagebuilder = {
    sha256 = "a9eb88b88f785ef59c2b45b4dc1cc25cf3c824df444f871a83d39aedc9f09072";
    filename = "immortalwrt-imagebuilder-mpc85xx-p1010.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-jm0Au94yipZZpfmWyowinTOHgV+gCXgb08mxpWX3ZAg=";
    name = "mpc85xx_p1010-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/mpc85xx/p1010/profiles.json";
  };
  profiles.extract = {
    arch_packages = "powerpc_8548";
    linux_kernel = {
      release = "1";
      vermagic = "8195ad394bbc6011d3d720913d0112ed";
      version = "6.18.52";
    };
    default_packages = [
      "apk-openssl"
      "base-files"
      "ca-bundle"
      "dnsmasq-full"
      "dropbear"
      "firewall4"
      "fstools"
      "kmod-ath9k"
      "kmod-crypto-hw-talitos"
      "kmod-gpio-button-hotplug"
      "kmod-leds-gpio"
      "kmod-nft-offload"
      "kmod-usb2"
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
      "uboot-envtools"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
      "wpad-openssl"
    ];
    kmods_target = "6.18.52-1-8195ad394bbc6011d3d720913d0112ed";
    profiles = {
      aerohive_br200-wp = {
        device_packages = [
          "kmod-dsa-qca8k"
          "kmod-phy-qca83xx"
        ];
      };
      enterasys_ws-ap3715i = {
        device_packages = [ "kmod-phy-at803x" ];
      };
      sophos_red-15w-rev1 = {
        device_packages = [ "kmod-phy-realtek" ];
      };
      tplink_tl-wdr4900-v1 = {
        device_packages = [
          "kmod-usb-ledtrig-usbport"
          "kmod-dsa-qca8k"
          "kmod-phy-qca83xx"
        ];
      };
      watchguard_firebox-t10 = {
        device_packages = [
          "kmod-rtc-s35390a"
          "kmod-eeprom-at24"
          "kmod-phy-at803x"
        ];
      };
      watchguard_firebox-t15 = {
        device_packages = [
          "kmod-rtc-s35390a"
          "kmod-eeprom-at24"
          "kmod-phy-at803x"
        ];
      };
    };
  };
  kmods."6.18.52-1-8195ad394bbc6011d3d720913d0112ed" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/mpc85xx/p1010/kmods/6.18.52-1-8195ad394bbc6011d3d720913d0112ed/";
    sourceInfo = {
      hash = "sha256-8kATo1K+tObn3h1ZPCe0/tEUjmcZsJpIxNgZD+q9dyg=";
      name = "kmods-mpc85xx_p1010-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/mpc85xx/p1010/kmods/6.18.52-1-8195ad394bbc6011d3d720913d0112ed/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/mpc85xx/p1010/packages/";
    sourceInfo = {
      hash = "sha256-xFoRBp8F6KMGoxmy5j0u2cWLFWrnAoiBghD/vgaSCDk=";
      name = "mpc85xx_p1010-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/mpc85xx/p1010/packages/packages.adb";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "powerpc_8548";
  feeds = import ./../../../packages/powerpc_8548.nix;
}
