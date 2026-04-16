# 25.12.0-rc2 realtek/rtl931x_nand
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/realtek/rtl931x_nand/";
  sha256sums = {
    hash = "sha256-kRov2inQBM/k5PpLfoUxkjsuOzK71a68AU2ucYF0f9I=";
    name = "realtek_rtl931x_nand-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/realtek/rtl931x_nand/sha256sums";
  };
  imagebuilder = {
    sha256 = "db3b174dee8b3513107471086d3d2ddab315165ecc8b719c3fc5d61329ea2521";
    filename = "immortalwrt-imagebuilder-25.12.0-rc2-realtek-rtl931x_nand.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-oO2J7IoRY0I067vkIASNrpEZcyeabB32a24mFfMpPBM=";
    name = "realtek_rtl931x_nand-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/realtek/rtl931x_nand/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_24kc";
    linux_kernel = {
      release = "1";
      vermagic = "afbb7771e74aea512de81c4191454ed2";
      version = "6.12.79";
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
    kmods_target = "6.12.79-1-afbb7771e74aea512de81c4191454ed2";
    profiles = {
      linksys_lgs352c = {
        device_packages = [ "kmod-hwmon-lm63" ];
      };
    };
  };
  kmods."6.12.79-1-afbb7771e74aea512de81c4191454ed2" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/realtek/rtl931x_nand/kmods/6.12.79-1-afbb7771e74aea512de81c4191454ed2/";
    sourceInfo = {
      hash = "sha256-xVpFF4AQx+5TYFq2u3BqHtOuQhU2WgkQoQvX48kWhJc=";
      name = "kmods-realtek_rtl931x_nand-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/realtek/rtl931x_nand/kmods/6.12.79-1-afbb7771e74aea512de81c4191454ed2/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/realtek/rtl931x_nand/packages/";
    sourceInfo = {
      hash = "sha256-c7fGQzfdkok6kMLddw66Hu1c69VKMhk9S/qNUAGmbQs=";
      name = "realtek_rtl931x_nand-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/realtek/rtl931x_nand/packages/packages.adb";
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
