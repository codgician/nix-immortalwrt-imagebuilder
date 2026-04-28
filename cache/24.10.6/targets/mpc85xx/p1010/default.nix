# 24.10.6 mpc85xx/p1010
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/targets/mpc85xx/p1010/";
  sha256sums = {
    hash = "sha256-aeYxIyq4SK3cPzJDudTBErdkSjHRDS0ubsXuWh16ATk=";
    name = "mpc85xx_p1010-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.6/targets/mpc85xx/p1010/sha256sums";
  };
  imagebuilder = {
    sha256 = "cb249e2a321dd49bd199a541a0b60645a947b21e1b3b1d1c488fa6520125483d";
    filename = "immortalwrt-imagebuilder-24.10.6-mpc85xx-p1010.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-gEQJn+PVZcgiug3FSyL4Gqg991mOeP/T04jNm99rzGU=";
    name = "mpc85xx_p1010-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.6/targets/mpc85xx/p1010/profiles.json";
  };
  profiles.extract = {
    arch_packages = "powerpc_8548";
    linux_kernel = {
      release = "1";
      vermagic = "12d2809c67b353539a7c1102236dfa5d";
      version = "6.6.133";
    };
    default_packages = [
      "base-files"
      "block-mount"
      "ca-bundle"
      "default-settings-chn"
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
      "kmod-nf-nathelper"
      "kmod-nf-nathelper-extra"
      "kmod-nft-offload"
      "kmod-usb2"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "luci-app-package-manager"
      "luci-compat"
      "luci-lib-base"
      "luci-lib-ipkg"
      "luci-light"
      "mtd"
      "netifd"
      "nftables"
      "odhcp6c"
      "odhcpd-ipv6only"
      "opkg"
      "ppp"
      "ppp-mod-pppoe"
      "procd-ujail"
      "swconfig"
      "uboot-envtools"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
      "wpad-openssl"
    ];
    kmods_target = "6.6.133-1-12d2809c67b353539a7c1102236dfa5d";
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
    };
  };
  kmods."6.6.133-1-12d2809c67b353539a7c1102236dfa5d" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/targets/mpc85xx/p1010/kmods/6.6.133-1-12d2809c67b353539a7c1102236dfa5d/";
    sourceInfo = {
      hash = "sha256-jSAwrtPUmHySlazSKyrqDlpr2BZJ15zHi6s+fd3x5ws=";
      name = "kmods-mpc85xx_p1010-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.6/targets/mpc85xx/p1010/kmods/6.6.133-1-12d2809c67b353539a7c1102236dfa5d/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/targets/mpc85xx/p1010/packages/";
    sourceInfo = {
      hash = "sha256-2fFcZ7eXbLH7btJHW/tgA1y9++b3MXZk/Xbq7leM0+s=";
      name = "mpc85xx_p1010-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.6/targets/mpc85xx/p1010/packages/Packages";
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
