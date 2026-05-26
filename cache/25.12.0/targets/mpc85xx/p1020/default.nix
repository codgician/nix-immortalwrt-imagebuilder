# 25.12.0 mpc85xx/p1020
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/targets/mpc85xx/p1020/";
  sha256sums = {
    hash = "sha256-VXDKQF3TKV1F3OLxHrV4+gXNpIrmHiT1uEHWchGnkGw=";
    name = "mpc85xx_p1020-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/mpc85xx/p1020/sha256sums";
  };
  imagebuilder = {
    sha256 = "b4de8336b9360672048532bdc2d885c40e9e615f4e56f559a5554371fe09ad47";
    filename = "immortalwrt-imagebuilder-25.12.0-mpc85xx-p1020.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-N4RCoT4P5tCXNnnykBE5iWrbLZ1ekhYsOWn8h7jFc54=";
    name = "mpc85xx_p1020-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/mpc85xx/p1020/profiles.json";
  };
  profiles.extract = {
    arch_packages = "powerpc_8548";
    linux_kernel = {
      release = "1";
      vermagic = "9d262ed1d3a01ae6007060a1f660bf67";
      version = "6.12.87";
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
    kmods_target = "6.12.87-1-9d262ed1d3a01ae6007060a1f660bf67";
    profiles = {
      aerohive_hiveap-330 = {
        device_packages = [
          "kmod-tpm-i2c-atmel"
          "kmod-hwmon-lm70"
        ];
      };
      enterasys_ws-ap3710i = {
        device_packages = [ ];
      };
      extreme-networks_ws-ap3825i = {
        device_packages = [
          "kmod-ath10k-ct"
          "ath10k-firmware-qca988x-ct"
        ];
      };
      hpe_msm460 = {
        device_packages = [ ];
      };
      ocedo_panda = {
        device_packages = [ "kmod-rtc-ds1307" ];
      };
    };
  };
  kmods."6.12.87-1-9d262ed1d3a01ae6007060a1f660bf67" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/targets/mpc85xx/p1020/kmods/6.12.87-1-9d262ed1d3a01ae6007060a1f660bf67/";
    sourceInfo = {
      hash = "sha256-V5qUFJtZWR/G8Q3yda+Kap4hwXZZPgZt9ReVIWm+um4=";
      name = "kmods-mpc85xx_p1020-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/mpc85xx/p1020/kmods/6.12.87-1-9d262ed1d3a01ae6007060a1f660bf67/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/targets/mpc85xx/p1020/packages/";
    sourceInfo = {
      hash = "sha256-yQ/EplYlGCZhDEL6q6Xlqz9db/u7uBH5lNzQZM2d++U=";
      name = "mpc85xx_p1020-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/mpc85xx/p1020/packages/packages.adb";
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
