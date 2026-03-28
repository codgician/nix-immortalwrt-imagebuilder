# snapshot starfive/generic
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/starfive/generic/";
  sha256sums = {
    hash = "sha256-L51zhlOpXfG/tTTsusVkgggNakdVB1a8JrH8sfqL7pw=";
    name = "starfive_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/starfive/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "e7d57d0fa37b63c861bae468afa00410e6f65a2cf8113a44ac1d582d9430e951";
    filename = "immortalwrt-imagebuilder-starfive-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-MudHTKyRmZdq0iSm5D/3+q4gspBC+bV7bCcbRjTWslo=";
    name = "starfive_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/starfive/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "riscv64_generic";
    linux_kernel = {
      release = "1";
      vermagic = "d65ebcbdd7d69966edd7dd14ad1520fe";
      version = "6.12.77";
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
    kmods_target = "6.12.77-1-d65ebcbdd7d69966edd7dd14ad1520fe";
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
  kmods."6.12.77-1-d65ebcbdd7d69966edd7dd14ad1520fe" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/starfive/generic/kmods/6.12.77-1-d65ebcbdd7d69966edd7dd14ad1520fe/";
    sourceInfo = {
      hash = "sha256-5eUZ+9qBZRq2QLZFAgbCNSvzWasG+E3SnY31TUe+ic8=";
      name = "kmods-starfive_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/starfive/generic/kmods/6.12.77-1-d65ebcbdd7d69966edd7dd14ad1520fe/packages.adb";
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
      hash = "sha256-KNGnXnNglOsxUjR5QW2XTU75ub6PCYDN8X1oPckxsJA=";
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
