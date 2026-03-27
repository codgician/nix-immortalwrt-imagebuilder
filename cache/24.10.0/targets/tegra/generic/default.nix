# 24.10.0 tegra/generic
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/targets/tegra/generic/";
  sha256sums = {
    hash = "sha256-L7zqiwmq+kTdW0TtYCk6moLavtCu4GwqI9D/ijQRXI4=";
    name = "tegra_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/tegra/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "02cd8214b11a4f2e8d3b90e6316db38ae1947e77371012118213b9770e8dea81";
    filename = "immortalwrt-imagebuilder-24.10.0-tegra-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-h3TaxPJ2nK2arTMSetisUxZB/ch1HJLzOz4N39DJuZM=";
    name = "tegra_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/tegra/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a9_vfpv3-d16";
    linux_kernel = {
      release = "1";
      vermagic = "d0c2d50416e7185db8341de916e8b64e";
      version = "6.6.73";
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
    kmods_target = "6.6.73-1-d0c2d50416e7185db8341de916e8b64e";
    profiles = {
      compulab_trimslice = {
        device_packages = [
          "kmod-leds-gpio"
          "kmod-r8169"
          "kmod-rt2800-usb"
          "kmod-rtc-em3027"
          "kmod-usb-hid"
          "kmod-usb-storage"
          "wpad-basic-openssl"
          "iwinfo"
        ];
      };
    };
  };
  kmods."6.6.73-1-d0c2d50416e7185db8341de916e8b64e" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/targets/tegra/generic/kmods/6.6.73-1-d0c2d50416e7185db8341de916e8b64e/";
    sourceInfo = {
      hash = "sha256-WZKqvxIK3qbwDOxkWWcQP2Dm32QjI9q6kZE1zxvMaEo=";
      name = "kmods-tegra_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/tegra/generic/kmods/6.6.73-1-d0c2d50416e7185db8341de916e8b64e/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/targets/tegra/generic/packages/";
    sourceInfo = {
      hash = "sha256-DyHbgQYa2Getzp2Ia4wGwiYpAC63yUKOpKj+CidDDQ8=";
      name = "tegra_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/tegra/generic/packages/Packages";
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
