# 24.10.1 tegra/generic
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/targets/tegra/generic/";
  sha256sums = {
    hash = "sha256-GiRB2UpdS9xfDQfdIUwNVMl+rCs4kNm8BTHsTbVQl1s=";
    name = "tegra_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/tegra/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "dc96cd92f66022eedbd35d990969751a02889c0f3601ddf7b3ed88f4e3991698";
    filename = "immortalwrt-imagebuilder-24.10.1-tegra-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-zJuoyGjw2VOULRFYF52zh0OAYp2lYOvOaS+3Pf7aWGc=";
    name = "tegra_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/tegra/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a9_vfpv3-d16";
    linux_kernel = {
      release = "1";
      vermagic = "af7f2d71ebb8c1eba1488f1a36af4a4e";
      version = "6.6.86";
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
    kmods_target = "6.6.86-1-af7f2d71ebb8c1eba1488f1a36af4a4e";
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
  kmods."6.6.86-1-af7f2d71ebb8c1eba1488f1a36af4a4e" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/targets/tegra/generic/kmods/6.6.86-1-af7f2d71ebb8c1eba1488f1a36af4a4e/";
    sourceInfo = {
      hash = "sha256-xpTh8WkplHwtDCkg8dHIPx0S9iuvDSTwD2CYyJuHJlY=";
      name = "kmods-tegra_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/tegra/generic/kmods/6.6.86-1-af7f2d71ebb8c1eba1488f1a36af4a4e/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/targets/tegra/generic/packages/";
    sourceInfo = {
      hash = "sha256-Bxmm8GB4DKDHNYVVbFXtpgQSk57pT39cADp4CbUgqNU=";
      name = "tegra_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/tegra/generic/packages/Packages";
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
