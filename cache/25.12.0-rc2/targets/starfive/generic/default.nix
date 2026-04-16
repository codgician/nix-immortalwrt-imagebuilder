# 25.12.0-rc2 starfive/generic
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/starfive/generic/";
  sha256sums = {
    hash = "sha256-OLamd7nBlrY7ea8WSRHIjSUg5SyA0SI5Un0EeRX2vAs=";
    name = "starfive_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/starfive/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "3e7e5def3b0096f7993a632d2e50a2418ed319a20c8a799ab13b62d0fbff01dd";
    filename = "immortalwrt-imagebuilder-25.12.0-rc2-starfive-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-yPaHwZjJ5AG4utFm5tFRItX47BLeiyFdym36U7sE9vs=";
    name = "starfive_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/starfive/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "riscv64_generic";
    linux_kernel = {
      release = "1";
      vermagic = "a8ce3542a81f0a7f52ea4317929e38ad";
      version = "6.12.79";
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
    kmods_target = "6.12.79-1-a8ce3542a81f0a7f52ea4317929e38ad";
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
  kmods."6.12.79-1-a8ce3542a81f0a7f52ea4317929e38ad" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/starfive/generic/kmods/6.12.79-1-a8ce3542a81f0a7f52ea4317929e38ad/";
    sourceInfo = {
      hash = "sha256-wXkvwZBguAr4khzReJ1n8PjKQ2i6if/pNa3OUC6BFXk=";
      name = "kmods-starfive_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/starfive/generic/kmods/6.12.79-1-a8ce3542a81f0a7f52ea4317929e38ad/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/starfive/generic/packages/";
    sourceInfo = {
      hash = "sha256-hwG7vfPr2Bp5+fioslPBnCChFDnOmvzFUeiBvXsImW0=";
      name = "starfive_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/starfive/generic/packages/packages.adb";
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
