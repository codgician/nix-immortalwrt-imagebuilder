# snapshot mpc85xx/p1010
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/mpc85xx/p1010/";
  sha256sums = {
    hash = "sha256-hYTUERIfiV/aVCKvTJGalZB523NH5oAoMNyAlPUsdvI=";
    name = "mpc85xx_p1010-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/mpc85xx/p1010/sha256sums";
  };
  imagebuilder = {
    sha256 = "7099a726af2b19bb2c3249223503f8b5714683f6faf49b4b5c45d2f38f5af8eb";
    filename = "immortalwrt-imagebuilder-mpc85xx-p1010.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-KlMjuC1yK2Xa22O2uF6OyJO6Swls0k22bhqUBpXiI5U=";
    name = "mpc85xx_p1010-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/mpc85xx/p1010/profiles.json";
  };
  profiles.extract = {
    arch_packages = "powerpc_8548";
    linux_kernel = {
      release = "1";
      vermagic = "cd6e288bd3fbe787e16766615d04ddce";
      version = "6.18.55";
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
    kmods_target = "6.18.55-1-cd6e288bd3fbe787e16766615d04ddce";
    profiles = {
      aerohive_br200-wp = {
        device_packages = [ "kmod-dsa-qca8k" ];
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
  kmods."6.18.55-1-cd6e288bd3fbe787e16766615d04ddce" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/mpc85xx/p1010/kmods/6.18.55-1-cd6e288bd3fbe787e16766615d04ddce/";
    sourceInfo = {
      hash = "sha256-nbqVQA2Jl08jQnb7OtWlEaMurI3TSZyG33dFjJWQJxk=";
      name = "kmods-mpc85xx_p1010-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/mpc85xx/p1010/kmods/6.18.55-1-cd6e288bd3fbe787e16766615d04ddce/packages.adb";
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
      hash = "sha256-QrVsM/mcWF0O1Fpqz4xpDWK9nacuHCBRaafP+CmO0nk=";
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
