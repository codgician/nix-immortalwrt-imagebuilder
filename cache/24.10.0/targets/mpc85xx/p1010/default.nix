# 24.10.0 mpc85xx/p1010
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/targets/mpc85xx/p1010/";
  sha256sums = {
    hash = "sha256-iS8tZdmOHtWkH+qxv27M/BK7IakSj2sEyignLFvpzIY=";
    name = "mpc85xx_p1010-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/mpc85xx/p1010/sha256sums";
  };
  imagebuilder = {
    sha256 = "2d5553bf13e880f5ba9f230c80dace796db8170449683514255f44da0cd8d538";
    filename = "immortalwrt-imagebuilder-24.10.0-mpc85xx-p1010.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-OAX2wdMzh3N+NHvCaRJtDdIxT+aSTdWIFFIyzkq+1xg=";
    name = "mpc85xx_p1010-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/mpc85xx/p1010/profiles.json";
  };
  profiles.extract = {
    arch_packages = "powerpc_8548";
    linux_kernel = {
      release = "1";
      vermagic = "44edc98920a6e8b1814ab1c3d43e10ba";
      version = "6.6.73";
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
      "wpad-basic-openssl"
    ];
    kmods_target = "6.6.73-1-44edc98920a6e8b1814ab1c3d43e10ba";
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
  kmods."6.6.73-1-44edc98920a6e8b1814ab1c3d43e10ba" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/targets/mpc85xx/p1010/kmods/6.6.73-1-44edc98920a6e8b1814ab1c3d43e10ba/";
    sourceInfo = {
      hash = "sha256-0afPHbXVpfCz4l8i1j3GuhbgLzhFHYisMNeQVAiAfM4=";
      name = "kmods-mpc85xx_p1010-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/mpc85xx/p1010/kmods/6.6.73-1-44edc98920a6e8b1814ab1c3d43e10ba/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/targets/mpc85xx/p1010/packages/";
    sourceInfo = {
      hash = "sha256-Auvtw3VmgNJzeOx0pqlacI4d8mOO9N5aWmaTX/sU7XQ=";
      name = "mpc85xx_p1010-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/mpc85xx/p1010/packages/Packages";
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
