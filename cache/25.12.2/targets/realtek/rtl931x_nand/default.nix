# 25.12.2 realtek/rtl931x_nand
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.2/targets/realtek/rtl931x_nand/";
  sha256sums = {
    hash = "sha256-4Zp0UeuntDMi1HVO+0V7lrbmSOSO+imXZumqSDx9Svs=";
    name = "realtek_rtl931x_nand-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.2/targets/realtek/rtl931x_nand/sha256sums";
  };
  imagebuilder = {
    sha256 = "22c53a851560eafc99ed58105e2d9ad599d68a3c6717bff6af3e600269a3cd35";
    filename = "immortalwrt-imagebuilder-25.12.2-realtek-rtl931x_nand.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-AuelNjaZQAPClOesoP3RVyqs6ci3DLnku68cSlkfdJQ=";
    name = "realtek_rtl931x_nand-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.2/targets/realtek/rtl931x_nand/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_24kc";
    linux_kernel = {
      release = "1";
      vermagic = "d588480e66ef29a63ec1f39ceaf7576e";
      version = "6.12.103";
    };
    default_packages = [
      "apk-openssl"
      "base-files"
      "block-mount"
      "ca-bundle"
      "default-settings-chn"
      "dropbear"
      "ethtool"
      "firewall4"
      "fstools"
      "kmod-gpio-button-hotplug"
      "kmod-nf-nathelper"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "luci"
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
    kmods_target = "6.12.103-1-d588480e66ef29a63ec1f39ceaf7576e";
    profiles = {
      linksys_lgs352c = {
        device_packages = [ "kmod-hwmon-lm63" ];
      };
    };
  };
  kmods."6.12.103-1-d588480e66ef29a63ec1f39ceaf7576e" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.2/targets/realtek/rtl931x_nand/kmods/6.12.103-1-d588480e66ef29a63ec1f39ceaf7576e/";
    sourceInfo = {
      hash = "sha256-5YnUbj88LYKzv+/9P/9DShzy441eQ3b3p+OUYibAFYo=";
      name = "kmods-realtek_rtl931x_nand-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.2/targets/realtek/rtl931x_nand/kmods/6.12.103-1-d588480e66ef29a63ec1f39ceaf7576e/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.2/targets/realtek/rtl931x_nand/packages/";
    sourceInfo = {
      hash = "sha256-7+76ffD7MDA2hazhqHqIA0WhiwNcfsgWSVhRM6KNqMU=";
      name = "realtek_rtl931x_nand-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.2/targets/realtek/rtl931x_nand/packages/packages.adb";
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
