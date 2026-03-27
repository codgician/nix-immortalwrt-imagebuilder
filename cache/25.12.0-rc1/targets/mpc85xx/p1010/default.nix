# 25.12.0-rc1 mpc85xx/p1010
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/mpc85xx/p1010/";
  sha256sums = {
    hash = "sha256-k/GaqBr13Yf0anD29/dovK+QjCxD0P/oKgSap4HRnNU=";
    name = "mpc85xx_p1010-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/mpc85xx/p1010/sha256sums";
  };
  imagebuilder = {
    sha256 = "ef477933d5a9995b76067a60ad7cc19b05a2a1972f54d4f416d458a60ebe562d";
    filename = "immortalwrt-imagebuilder-25.12.0-rc1-mpc85xx-p1010.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-HoUBdZpPX44VV0UC96NIiggbwHhet4lWXYat6WXoVZ8=";
    name = "mpc85xx_p1010-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/mpc85xx/p1010/profiles.json";
  };
  profiles.extract = {
    arch_packages = "powerpc_8548";
    linux_kernel = {
      release = "1";
      vermagic = "a256edc664b71e398ce1c76914a7d6f7";
      version = "6.12.74";
    };
    default_packages = [
      "apk-openssl"
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
      "kmod-nft-offload"
      "kmod-usb2"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "luci"
      "mtd"
      "netifd"
      "nftables"
      "odhcp6c"
      "odhcpd-ipv6only"
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
    kmods_target = "6.12.74-1-a256edc664b71e398ce1c76914a7d6f7";
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
  kmods."6.12.74-1-a256edc664b71e398ce1c76914a7d6f7" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/mpc85xx/p1010/kmods/6.12.74-1-a256edc664b71e398ce1c76914a7d6f7/";
    sourceInfo = {
      hash = "sha256-UTBzYAMdIKxf9zHw3MHyUNp6ZNtbt2My6G2/eTkqx/0=";
      name = "kmods-mpc85xx_p1010-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/mpc85xx/p1010/kmods/6.12.74-1-a256edc664b71e398ce1c76914a7d6f7/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/mpc85xx/p1010/packages/";
    sourceInfo = {
      hash = "sha256-mklhxA+LmBKyMN32jpOrRyZlNLPeQsQbIP331Y3u5JU=";
      name = "mpc85xx_p1010-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/mpc85xx/p1010/packages/packages.adb";
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
