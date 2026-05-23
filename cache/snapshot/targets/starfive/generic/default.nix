# snapshot starfive/generic
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/starfive/generic/";
  sha256sums = {
    hash = "sha256-367R3jlW5iK1SrK+2+r4BdvP19buPv5wDx8KnEBsNdM=";
    name = "starfive_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/starfive/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "136e10dd97a63e5e122cc35c1b42069111d7c6d9ccd53cb4696cda2c63a9b18f";
    filename = "immortalwrt-imagebuilder-starfive-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-4Ztx6V4+Jingru99n8pNDeV4ZqMob2Xp8HhoNXK0MCE=";
    name = "starfive_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/starfive/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "riscv64_generic";
    linux_kernel = {
      release = "1";
      vermagic = "14cff4dee19d324677198a4abbcccbec";
      version = "6.18.31";
    };
    default_packages = [
      "apk-openssl"
      "base-files"
      "ca-bundle"
      "dnsmasq-full"
      "dropbear"
      "firewall4"
      "fstools"
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
    kmods_target = "6.18.31-1-14cff4dee19d324677198a4abbcccbec";
    profiles = {
      beaglev-starlight = {
        device_packages = [ ];
      };
      visionfive-v1 = {
        device_packages = [
          "kmod-eeprom-at24"
          "kmod-brcmfmac"
          "cypress-firmware-43430-sdio"
          "wpad-openssl"
          "kmod-leds-gpio"
        ];
      };
      "visionfive2-v1.2a" = {
        device_packages = [
          "kmod-eeprom-at24"
          "kmod-leds-gpio"
        ];
      };
      "visionfive2-v1.3b" = {
        device_packages = [
          "kmod-eeprom-at24"
          "kmod-leds-gpio"
          "uboot-envtools"
        ];
      };
    };
  };
  kmods."6.18.31-1-14cff4dee19d324677198a4abbcccbec" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/starfive/generic/kmods/6.18.31-1-14cff4dee19d324677198a4abbcccbec/";
    sourceInfo = {
      hash = "sha256-Ba+BMt3VDAEbGmJkWsHY4yU7CY3NLzV7UWH5Ws1t2QI=";
      name = "kmods-starfive_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/starfive/generic/kmods/6.18.31-1-14cff4dee19d324677198a4abbcccbec/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/starfive/generic/packages/";
    sourceInfo = {
      hash = "sha256-evTyUQQvYUGJGUFNGXcLg1c9HnYHBy3k9MtY4/ciHEk=";
      name = "starfive_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/starfive/generic/packages/packages.adb";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "riscv64_generic";
  feeds = import ./../../../packages/riscv64_generic.nix;
}
