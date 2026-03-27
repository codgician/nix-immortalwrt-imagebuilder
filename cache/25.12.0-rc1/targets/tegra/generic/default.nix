# 25.12.0-rc1 tegra/generic
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/tegra/generic/";
  sha256sums = {
    hash = "sha256-crvUUAuoPQvhUuKbq3QYHwP2VzMnA1lONXsjLgRXeAY=";
    name = "tegra_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/tegra/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "c1aecea1b801b0e60c0769e7e413b65156c5a7f8f04b08d3a18bbef244905c1d";
    filename = "immortalwrt-imagebuilder-25.12.0-rc1-tegra-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-6g5LVsxbUsb8IdoGvI67PjLXAXuEvyGwjmukepIqBB8=";
    name = "tegra_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/tegra/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a9_vfpv3-d16";
    linux_kernel = {
      release = "1";
      vermagic = "a4507dc92fbe0878e2ee7684e4bf6ff7";
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
      "e2fsprogs"
      "firewall4"
      "fstools"
      "kmod-nf-nathelper"
      "kmod-nft-offload"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "luci"
      "mkf2fs"
      "mtd"
      "netifd"
      "nftables"
      "odhcp6c"
      "odhcpd-ipv6only"
      "partx-utils"
      "ppp"
      "ppp-mod-pppoe"
      "procd-ujail"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "6.12.74-1-a4507dc92fbe0878e2ee7684e4bf6ff7";
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
        ];
      };
    };
  };
  kmods."6.12.74-1-a4507dc92fbe0878e2ee7684e4bf6ff7" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/tegra/generic/kmods/6.12.74-1-a4507dc92fbe0878e2ee7684e4bf6ff7/";
    sourceInfo = {
      hash = "sha256-ERh7G2y+aG8VZUI8n34cUG6/BhpMFUOVHIH5cUsnjKA=";
      name = "kmods-tegra_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/tegra/generic/kmods/6.12.74-1-a4507dc92fbe0878e2ee7684e4bf6ff7/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/tegra/generic/packages/";
    sourceInfo = {
      hash = "sha256-yY+DzQphEyp9ifmbU5k0v00UacIvCrTf2IMZlL671rY=";
      name = "tegra_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/tegra/generic/packages/packages.adb";
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
