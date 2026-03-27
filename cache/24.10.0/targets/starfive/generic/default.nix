# 24.10.0 starfive/generic
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/targets/starfive/generic/";
  sha256sums = {
    hash = "sha256-1M7KRc1nRx4LGfhANbPvOZDkw6cdVblQ5u/SwQ1ymU0=";
    name = "starfive_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/starfive/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "af6010faa8ea0670b6b84212a70f0f4cfca6748f7e7d74f63bb939add5409765";
    filename = "immortalwrt-imagebuilder-24.10.0-starfive-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-oRcsgEO71BB+pTKW9u5OTEqCx9sgzUVkbXTMXeX28os=";
    name = "starfive_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/starfive/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "riscv64_riscv64";
    linux_kernel = {
      release = "1";
      vermagic = "47ec2f33cc0e84bf1753f70424751a27";
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
    kmods_target = "6.6.73-1-47ec2f33cc0e84bf1753f70424751a27";
    profiles = {
      beaglev-starlight = {
        device_packages = [ ];
      };
      visionfive-v1 = {
        device_packages = [
          "kmod-eeprom-at24"
          "kmod-brcmfmac"
          "cypress-firmware-43430-sdio"
          "wpad-basic-mbedtls"
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
  kmods."6.6.73-1-47ec2f33cc0e84bf1753f70424751a27" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/targets/starfive/generic/kmods/6.6.73-1-47ec2f33cc0e84bf1753f70424751a27/";
    sourceInfo = {
      hash = "sha256-Arjmw1X61vGnpwue//F3gfT0EcQI9yP3UYHmbt1yj90=";
      name = "kmods-starfive_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/starfive/generic/kmods/6.6.73-1-47ec2f33cc0e84bf1753f70424751a27/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/targets/starfive/generic/packages/";
    sourceInfo = {
      hash = "sha256-X0ZeNHMnaFRJPhI92vdjWQzIarQeKUjhoKlRcQD5TFA=";
      name = "starfive_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/starfive/generic/packages/Packages";
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
