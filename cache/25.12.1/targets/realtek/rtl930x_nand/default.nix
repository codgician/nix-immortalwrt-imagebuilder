# 25.12.1 realtek/rtl930x_nand
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/targets/realtek/rtl930x_nand/";
  sha256sums = {
    hash = "sha256-K7MU+lP791WXFkZ3/LfPqHzhpz0K5qhTUtbUhKEgrfA=";
    name = "realtek_rtl930x_nand-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.1/targets/realtek/rtl930x_nand/sha256sums";
  };
  imagebuilder = {
    sha256 = "d909681f171cd48ab0b063ac8f74d4d634906cc68c4f859bd4ff12f69729087e";
    filename = "immortalwrt-imagebuilder-25.12.1-realtek-rtl930x_nand.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-YxwbFhBzzA4Hb1cjiOhWkVz7h5SO/Ev71GpBlcOoIOo=";
    name = "realtek_rtl930x_nand-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.1/targets/realtek/rtl930x_nand/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_24kc";
    linux_kernel = {
      release = "1";
      vermagic = "2572cc0a917a324a046851b214e400f0";
      version = "6.12.94";
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
    kmods_target = "6.12.94-1-2572cc0a917a324a046851b214e400f0";
    profiles = {
      linksys_lgs328c = {
        device_packages = [ ];
      };
    };
  };
  kmods."6.12.94-1-2572cc0a917a324a046851b214e400f0" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/targets/realtek/rtl930x_nand/kmods/6.12.94-1-2572cc0a917a324a046851b214e400f0/";
    sourceInfo = {
      hash = "sha256-9K0DpBCzbMb5az4PmWs57dLRb8+uzRJBxNjDwHHTTpI=";
      name = "kmods-realtek_rtl930x_nand-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/targets/realtek/rtl930x_nand/kmods/6.12.94-1-2572cc0a917a324a046851b214e400f0/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/targets/realtek/rtl930x_nand/packages/";
    sourceInfo = {
      hash = "sha256-VmZnkKpYSRPpkhauCvp+hLUznooyEvFtIZhJW6+N7Mk=";
      name = "realtek_rtl930x_nand-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/targets/realtek/rtl930x_nand/packages/packages.adb";
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
