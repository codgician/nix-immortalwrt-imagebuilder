# snapshot realtek/rtl930x_nand
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/realtek/rtl930x_nand/";
  sha256sums = {
    hash = "sha256-a8xPcKLUOOps9RsIeTXOCSeOlFwZCwrTuYIi5Kz5dA0=";
    name = "realtek_rtl930x_nand-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/realtek/rtl930x_nand/sha256sums";
  };
  imagebuilder = {
    sha256 = "9e2a80c2e2f476c50c905450af20a02e3eee8dd1d7f6b2cceb9890d7b296c2d5";
    filename = "immortalwrt-imagebuilder-realtek-rtl930x_nand.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-WxbiGJpONjwhUdH7ikB40K/XpvfraTUA/Qp0RG5VdmQ=";
    name = "realtek_rtl930x_nand-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/realtek/rtl930x_nand/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_24kc";
    linux_kernel = {
      release = "1";
      vermagic = "ea2e151ad3a159d1690f41a74a24e175";
      version = "6.18.44";
    };
    default_packages = [
      "apk-openssl"
      "base-files"
      "ca-bundle"
      "dropbear"
      "ethtool"
      "firewall4"
      "fstools"
      "kmod-gpio-button-hotplug"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "mtd"
      "netifd"
      "odhcp6c"
      "procd-ujail"
      "uboot-envtools"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "6.18.44-1-ea2e151ad3a159d1690f41a74a24e175";
    profiles = {
      linksys_lgs328c = {
        device_packages = [ ];
      };
      linksys_lgs328mpc-v2 = {
        device_packages = [
          "kmod-hwmon-lm63"
          "kmod-pse-realtek-mcu-i2c"
        ];
      };
    };
  };
  kmods."6.18.44-1-ea2e151ad3a159d1690f41a74a24e175" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/realtek/rtl930x_nand/kmods/6.18.44-1-ea2e151ad3a159d1690f41a74a24e175/";
    sourceInfo = {
      hash = "sha256-k4OMSHkIUZ48l5Sxg+88f9EfReRKl4xudqd34VQR2uU=";
      name = "kmods-realtek_rtl930x_nand-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/realtek/rtl930x_nand/kmods/6.18.44-1-ea2e151ad3a159d1690f41a74a24e175/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/realtek/rtl930x_nand/packages/";
    sourceInfo = {
      hash = "sha256-UXYxDtxkH9SzGMg0dF3t4USzgHCTFb4zCkfclocUE5g=";
      name = "realtek_rtl930x_nand-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/realtek/rtl930x_nand/packages/packages.adb";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "mips_24kc";
  feeds = import ./../../../packages/mips_24kc.nix;
}
