# 24.10.4 starfive/generic
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/targets/starfive/generic/";
  sha256sums = {
    hash = "sha256-NiqI+oKgRbuokeFlMiHuy7y0USuH9DK9gsCgbsHZhAs=";
    name = "starfive_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/starfive/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "ad8df02f69302673f66c42c136ebaf14d3c120beee75c0d015c1f40482a1dfd6";
    filename = "immortalwrt-imagebuilder-24.10.4-starfive-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-XKxmFnTkPH9fFE0+qP0uYJbG0ej4CzMZlYK2fkS1Fl0=";
    name = "starfive_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/starfive/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "riscv64_riscv64";
    linux_kernel = {
      release = "1";
      vermagic = "5c9cbc5d46a40c4c54266ccf8d455650";
      version = "6.6.110";
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
      "kmod-nf-nathelper"
      "kmod-nf-nathelper-extra"
      "kmod-nft-offload"
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
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "6.6.110-1-5c9cbc5d46a40c4c54266ccf8d455650";
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
          "kmod-usb3"
          "kmod-usb-cdns3-starfive"
          "iwinfo"
        ];
      };
      "visionfive2-v1.2a" = {
        device_packages = [
          "kmod-eeprom-at24"
          "kmod-pcie-starfive"
          "kmod-usb3"
          "kmod-usb-cdns3-starfive"
        ];
      };
      "visionfive2-v1.3b" = {
        device_packages = [
          "kmod-eeprom-at24"
          "kmod-pcie-starfive"
          "kmod-usb3"
          "kmod-usb-cdns3-starfive"
        ];
      };
    };
  };
  kmods."6.6.110-1-5c9cbc5d46a40c4c54266ccf8d455650" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/targets/starfive/generic/kmods/6.6.110-1-5c9cbc5d46a40c4c54266ccf8d455650/";
    sourceInfo = {
      hash = "sha256-1GQKOdibOrsXBXEcwMJGPDiJZiZqMzY1+kIczLyyOBI=";
      name = "kmods-starfive_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/starfive/generic/kmods/6.6.110-1-5c9cbc5d46a40c4c54266ccf8d455650/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/targets/starfive/generic/packages/";
    sourceInfo = {
      hash = "sha256-9p0qXf4a/Io09fWQUaIBC2YMbVFvk0gkXFf9E+8N3Uc=";
      name = "starfive_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/starfive/generic/packages/Packages";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "riscv64_riscv64";
  feeds = import ./../../../packages/riscv64_riscv64.nix;
}
