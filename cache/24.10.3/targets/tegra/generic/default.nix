# 24.10.3 tegra/generic
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/targets/tegra/generic/";
  sha256sums = {
    hash = "sha256-mF/4NqXn3ajuS9muV0u4JgoK29aiTLIlwvxeLW8+WyU=";
    name = "tegra_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.3/targets/tegra/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "8dc1530215f88a04fa6c571325ea9ede6ebebe4417d0ac0246f520cb9103a3f2";
    filename = "immortalwrt-imagebuilder-24.10.3-tegra-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-KsHU7sR6K4RJIRipgtNgaBFkSsn5STKul5PntDYTdvQ=";
    name = "tegra_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.3/targets/tegra/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a9_vfpv3-d16";
    linux_kernel = {
      release = "1";
      vermagic = "c6983ef806efbfb6ad4e473c664bdf2a";
      version = "6.6.104";
    };
    default_packages = [
      "base-files"
      "block-mount"
      "ca-bundle"
      "default-settings-chn"
      "dnsmasq-full"
      "dropbear"
      "e2fsprogs"
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
      "mkf2fs"
      "mtd"
      "netifd"
      "nftables"
      "odhcp6c"
      "odhcpd-ipv6only"
      "opkg"
      "partx-utils"
      "ppp"
      "ppp-mod-pppoe"
      "procd-ujail"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "6.6.104-1-c6983ef806efbfb6ad4e473c664bdf2a";
    profiles = {
      compulab_trimslice = {
        device_packages = [
          "kmod-leds-gpio"
          "kmod-r8169"
          "kmod-rt2800-usb"
          "kmod-rtc-em3027"
          "kmod-usb-hid"
          "kmod-usb-storage"
          "wpad-openssl"
          "iwinfo"
        ];
      };
    };
  };
  kmods."6.6.104-1-c6983ef806efbfb6ad4e473c664bdf2a" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/targets/tegra/generic/kmods/6.6.104-1-c6983ef806efbfb6ad4e473c664bdf2a/";
    sourceInfo = {
      hash = "sha256-wGiDBpWd+10gn6omyV/c49hOQ0QV8Cz6/Z+L/qPY7Gg=";
      name = "kmods-tegra_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.3/targets/tegra/generic/kmods/6.6.104-1-c6983ef806efbfb6ad4e473c664bdf2a/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/targets/tegra/generic/packages/";
    sourceInfo = {
      hash = "sha256-ebOOcNqvB33Cb1TAOmdMBasRUdReXglpXdEv1Oh1oU4=";
      name = "tegra_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.3/targets/tegra/generic/packages/Packages";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "arm_cortex-a9_vfpv3-d16";
  feeds = import ./../../../packages/arm_cortex-a9_vfpv3-d16.nix;
}
