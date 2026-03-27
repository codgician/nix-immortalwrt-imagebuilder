# 24.10.3 starfive/generic
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/targets/starfive/generic/";
  sha256sums = {
    hash = "sha256-O/Yq04fpeYzduc259H59wq86njqznSknQs4YOE0mCiU=";
    name = "starfive_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.3/targets/starfive/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "cbcbe000cbf17e8ca296b00eaa49f639a4278592844a6b20b37bd28bd36db03d";
    filename = "immortalwrt-imagebuilder-24.10.3-starfive-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-FEyW4ycmqN7U+yvAmdBcZmEOeA+Tr0UcGx9mj33mrww=";
    name = "starfive_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.3/targets/starfive/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "riscv64_riscv64";
    linux_kernel = {
      release = "1";
      vermagic = "bffa7191e979449fa0c39365be947a2f";
      version = "6.6.104";
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
    kmods_target = "6.6.104-1-bffa7191e979449fa0c39365be947a2f";
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
  kmods."6.6.104-1-bffa7191e979449fa0c39365be947a2f" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/targets/starfive/generic/kmods/6.6.104-1-bffa7191e979449fa0c39365be947a2f/";
    sourceInfo = {
      hash = "sha256-oT2wHFyhlKkmXVExxlUl0uvqdFVulLoS2pqZsUudzjw=";
      name = "kmods-starfive_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.3/targets/starfive/generic/kmods/6.6.104-1-bffa7191e979449fa0c39365be947a2f/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/targets/starfive/generic/packages/";
    sourceInfo = {
      hash = "sha256-QHpyyix+5r3LOQdAxty7R1gaisHoEF7UgeGYa0aHuxE=";
      name = "starfive_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.3/targets/starfive/generic/packages/Packages";
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
