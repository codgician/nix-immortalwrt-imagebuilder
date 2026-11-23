# 24.10.7 starfive/generic
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.7/targets/starfive/generic/";
  sha256sums = {
    hash = "sha256-Vuna+Ud5vbiXejdLxG00BGC+kMWNCqpsyD6p1jtq9jo=";
    name = "starfive_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.7/targets/starfive/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "952a285cafd0432fd77c26801fb51e12364cf448c398e1eb8783cf98be0c4acd";
    filename = "immortalwrt-imagebuilder-24.10.7-starfive-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-M50TjhXNn+16CEPMpmQvobjuHaK0dEQ6krwWvHpOE7g=";
    name = "starfive_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.7/targets/starfive/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "riscv64_riscv64";
    linux_kernel = {
      release = "1";
      vermagic = "5c9cbc5d46a40c4c54266ccf8d455650";
      version = "6.6.159";
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
    kmods_target = "6.6.159-1-5c9cbc5d46a40c4c54266ccf8d455650";
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
  kmods."6.6.159-1-5c9cbc5d46a40c4c54266ccf8d455650" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.7/targets/starfive/generic/kmods/6.6.159-1-5c9cbc5d46a40c4c54266ccf8d455650/";
    sourceInfo = {
      hash = "sha256-HSXaPgA2vkYnRFJWskd64VX9/1fjtD0PO3RTqxuiFCw=";
      name = "kmods-starfive_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.7/targets/starfive/generic/kmods/6.6.159-1-5c9cbc5d46a40c4c54266ccf8d455650/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.7/targets/starfive/generic/packages/";
    sourceInfo = {
      hash = "sha256-JIf7QgKjdO8nmp2S9cTgiLru8BLTrCt7tzmq/reVzp4=";
      name = "starfive_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.7/targets/starfive/generic/packages/Packages";
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
