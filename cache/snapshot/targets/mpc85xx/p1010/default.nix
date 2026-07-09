# snapshot mpc85xx/p1010
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/mpc85xx/p1010/";
  sha256sums = {
    hash = "sha256-dZgzr0wV1zzh5mCVD9+38NmIoly7VGrz91ROfHuVmMc=";
    name = "mpc85xx_p1010-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/mpc85xx/p1010/sha256sums";
  };
  imagebuilder = {
    sha256 = "8ec492023696bc546643f88b07bf27aec535ab5636e28a6249bd096d6a1171ff";
    filename = "immortalwrt-imagebuilder-mpc85xx-p1010.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-2ruICUi2unZ+yBTiQfXJdi94gBn3ryubDzcFvcVMZ5U=";
    name = "mpc85xx_p1010-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/mpc85xx/p1010/profiles.json";
  };
  profiles.extract = {
    arch_packages = "powerpc_8548";
    linux_kernel = {
      release = "1";
      vermagic = "a2410ed2d34df09e2472e7efc39ffc09";
      version = "6.12.94";
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
    kmods_target = "6.12.94-1-a2410ed2d34df09e2472e7efc39ffc09";
    profiles = {
      aerohive_br200-wp = {
        device_packages = [ ];
      };
      enterasys_ws-ap3715i = {
        device_packages = [ ];
      };
      sophos_red-15w-rev1 = {
        device_packages = [ ];
      };
      tplink_tl-wdr4900-v1 = {
        device_packages = [ "kmod-usb-ledtrig-usbport" ];
      };
      watchguard_firebox-t10 = {
        device_packages = [
          "kmod-rtc-s35390a"
          "kmod-eeprom-at24"
        ];
      };
      watchguard_firebox-t15 = {
        device_packages = [
          "kmod-rtc-s35390a"
          "kmod-eeprom-at24"
        ];
      };
    };
  };
  kmods."6.12.94-1-a2410ed2d34df09e2472e7efc39ffc09" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/mpc85xx/p1010/kmods/6.12.94-1-a2410ed2d34df09e2472e7efc39ffc09/";
    sourceInfo = {
      hash = "sha256-GgtjM9U28woJDos39AtJwc0YLvurJaa6l/W2wOb8wo0=";
      name = "kmods-mpc85xx_p1010-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/mpc85xx/p1010/kmods/6.12.94-1-a2410ed2d34df09e2472e7efc39ffc09/packages.adb";
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
      hash = "sha256-SKVQleqxTo2YJaQ7z91JMs3niQRnkHU/tJsppO8EaRo=";
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
