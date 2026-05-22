# snapshot mpc85xx/p1010
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/mpc85xx/p1010/";
  sha256sums = {
    hash = "sha256-IHRW0S6EC/b0YzTDigKM+BikUi6LXI3YD2BQwQ7XBl0=";
    name = "mpc85xx_p1010-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/mpc85xx/p1010/sha256sums";
  };
  imagebuilder = {
    sha256 = "3c99d12dbce821b5fc4f21ef80e79e7d068c0bd8901d86a3fcace733aff42fa9";
    filename = "immortalwrt-imagebuilder-mpc85xx-p1010.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-h01nlpltx3zx3ZWinT6tMw3IRRx57HeIoPUoFoeQIaI=";
    name = "mpc85xx_p1010-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/mpc85xx/p1010/profiles.json";
  };
  profiles.extract = {
    arch_packages = "powerpc_8548";
    linux_kernel = {
      release = "1";
      vermagic = "b12a517fd3dee1fd73710ed2b985353f";
      version = "6.12.89";
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
      "kmod-button-hotplug"
      "kmod-crypto-hw-talitos"
      "kmod-input-core"
      "kmod-input-gpio-keys"
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
    kmods_target = "6.12.89-1-b12a517fd3dee1fd73710ed2b985353f";
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
  kmods."6.12.89-1-b12a517fd3dee1fd73710ed2b985353f" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/mpc85xx/p1010/kmods/6.12.89-1-b12a517fd3dee1fd73710ed2b985353f/";
    sourceInfo = {
      hash = "sha256-G5ChGNSCtNOagmKfwR3dc3WxXLo6RR+iZMi0bEJb3qc=";
      name = "kmods-mpc85xx_p1010-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/mpc85xx/p1010/kmods/6.12.89-1-b12a517fd3dee1fd73710ed2b985353f/packages.adb";
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
      hash = "sha256-ISRV7jQMcCygm/z/QP3y/TAEni45GKMM+XcQ7dpdChw=";
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
