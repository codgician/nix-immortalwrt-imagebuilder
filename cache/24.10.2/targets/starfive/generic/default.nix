# 24.10.2 starfive/generic
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/targets/starfive/generic/";
  sha256sums = {
    hash = "sha256-pCGqPBuHtoWO0utBRvNe5FWrHm5ghyJ+J1F3PdjZGeE=";
    name = "starfive_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.2/targets/starfive/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "9a25617175c71878ea3d5c1b0a63777830422194a358c7adcbe3f1f87759ca38";
    filename = "immortalwrt-imagebuilder-24.10.2-starfive-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-qyan9BJtoEYEQJheAu9ogQVtsRNHFR5n6vQF8bYs9lo=";
    name = "starfive_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.2/targets/starfive/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "riscv64_riscv64";
    linux_kernel = {
      release = "1";
      vermagic = "bffa7191e979449fa0c39365be947a2f";
      version = "6.6.93";
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
    kmods_target = "6.6.93-1-bffa7191e979449fa0c39365be947a2f";
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
  kmods."6.6.93-1-bffa7191e979449fa0c39365be947a2f" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/targets/starfive/generic/kmods/6.6.93-1-bffa7191e979449fa0c39365be947a2f/";
    sourceInfo = {
      hash = "sha256-5EyFpnEY6u5cSujpxW2Wo7ZURcdf+bF4hECisKjdLAg=";
      name = "kmods-starfive_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.2/targets/starfive/generic/kmods/6.6.93-1-bffa7191e979449fa0c39365be947a2f/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/targets/starfive/generic/packages/";
    sourceInfo = {
      hash = "sha256-IFrTJ+m0JlN1wgPQXbaTKxTU5KoksZ0dA7KXFFPbvnw=";
      name = "starfive_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.2/targets/starfive/generic/packages/Packages";
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
