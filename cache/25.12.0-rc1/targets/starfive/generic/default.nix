# 25.12.0-rc1 starfive/generic
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/starfive/generic/";
  sha256sums = {
    hash = "sha256-/SXC0k9GnYSA8ErPjWngdCcIbGRLWpMrOquG0trXRNc=";
    name = "starfive_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/starfive/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "eb6367bc127059ef8909d00c8a34ac1a6d6e1ab08de90e8e8a0b167a08b879d8";
    filename = "immortalwrt-imagebuilder-25.12.0-rc1-starfive-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-cu63j7lfUSEI6jMF1YOXIszJmxcJyckHufv3zTyziNE=";
    name = "starfive_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/starfive/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "riscv64_generic";
    linux_kernel = {
      release = "1";
      vermagic = "8ed5cf24dd0a921468ff5e0bc02e032f";
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
      "kmod-nf-nathelper"
      "kmod-nft-offload"
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
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "6.12.74-1-8ed5cf24dd0a921468ff5e0bc02e032f";
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
        ];
      };
      "visionfive2-v1.2a" = {
        device_packages = [ "kmod-eeprom-at24" ];
      };
      "visionfive2-v1.3b" = {
        device_packages = [ "kmod-eeprom-at24" ];
      };
    };
  };
  kmods."6.12.74-1-8ed5cf24dd0a921468ff5e0bc02e032f" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/starfive/generic/kmods/6.12.74-1-8ed5cf24dd0a921468ff5e0bc02e032f/";
    sourceInfo = {
      hash = "sha256-B+NpreWePcrjuYGgcCXalu+bIlG6YHWNx72u1lwHpf8=";
      name = "kmods-starfive_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/starfive/generic/kmods/6.12.74-1-8ed5cf24dd0a921468ff5e0bc02e032f/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/starfive/generic/packages/";
    sourceInfo = {
      hash = "sha256-YfkgaSBwHEzNvqhn14k3K+Ehe12QezihTCVRbAsLEY8=";
      name = "starfive_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/starfive/generic/packages/packages.adb";
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
