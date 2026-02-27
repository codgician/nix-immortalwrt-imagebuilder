# 23.05.7 realtek/rtl838x
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/realtek/rtl838x/";
  sha256sums = {
    hash = "sha256-Hj8ywnrTSTB0rUk9VvRbKzEUkWJZl0bCyE8yaSzIV9Y=";
    name = "realtek_rtl838x-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/realtek/rtl838x/sha256sums";
  };
  imagebuilder = {
    sha256 = "b2876e560932564e3422f965cea452f9b630e37b87054347472a782e1c7e3ffa";
    filename = "immortalwrt-imagebuilder-23.05.7-realtek-rtl838x.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-gDO0twNYUJIm9hXE0sXj8fqO6IRErACllE2kma5cpVs=";
    name = "realtek_rtl838x-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/realtek/rtl838x/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_4kec";
    linux_kernel = {
      release = "1";
      vermagic = "8bb5714604c9170f67a30a9d50d3790a";
      version = "5.15.195";
    };
    default_packages = [
      "base-files"
      "block-mount"
      "busybox"
      "ca-bundle"
      "default-settings-chn"
      "dropbear"
      "ethtool"
      "firewall4"
      "fstools"
      "ip-bridge"
      "ip-full"
      "kmod-gpio-button-hotplug"
      "kmod-nf-nathelper"
      "kmod-nf-nathelper-extra"
      "kmod-nft-offload"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "luci"
      "luci-app-opkg"
      "luci-compat"
      "luci-lib-base"
      "luci-lib-ipkg"
      "mtd"
      "netifd"
      "nftables"
      "odhcp6c"
      "opkg"
      "procd"
      "procd-seccomp"
      "procd-ujail"
      "tc-bpf"
      "uboot-envtools"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "5.15.195-1-8bb5714604c9170f67a30a9d50d3790a";
    profiles = {
      allnet_all-sg8208m = {
        device_packages = [ ];
      };
      apresia_aplgs120gtss = {
        device_packages = [ ];
      };
      d-link_dgs-1210-10mp-f = {
        device_packages = [ "realtek-poe" ];
      };
      d-link_dgs-1210-10p = {
        device_packages = [ "lua-rs232" ];
      };
      d-link_dgs-1210-16 = {
        device_packages = [ ];
      };
      d-link_dgs-1210-20 = {
        device_packages = [ ];
      };
      d-link_dgs-1210-28 = {
        device_packages = [ ];
      };
      d-link_dgs-1210-28mp-f = {
        device_packages = [ "realtek-poe" ];
      };
      engenius_ews2910p = {
        device_packages = [ ];
      };
      hpe_1920-16g = {
        device_packages = [ ];
      };
      hpe_1920-24g = {
        device_packages = [ ];
      };
      hpe_1920-8g = {
        device_packages = [ ];
      };
      hpe_1920-8g-poe-180w = {
        device_packages = [ ];
      };
      hpe_1920-8g-poe-65w = {
        device_packages = [ "realtek-poe" ];
      };
      inaba_aml2-17gp = {
        device_packages = [ ];
      };
      iodata_bsh-g24mb = {
        device_packages = [ ];
      };
      netgear_gs108t-v3 = {
        device_packages = [ ];
      };
      netgear_gs110tpp-v1 = {
        device_packages = [ ];
      };
      netgear_gs308t-v1 = {
        device_packages = [ ];
      };
      netgear_gs310tp-v1 = {
        device_packages = [ "lua-rs232" ];
      };
      panasonic_m16eg-pn28160k = {
        device_packages = [ "kmod-i2c-mux-pca954x" ];
      };
      panasonic_m24eg-pn28240k = {
        device_packages = [ "kmod-i2c-mux-pca954x" ];
      };
      panasonic_m8eg-pn28080k = {
        device_packages = [ "kmod-i2c-mux-pca954x" ];
      };
      tplink_sg2008p-v1 = {
        device_packages = [ "kmod-hwmon-tps23861" ];
      };
      tplink_sg2210p-v3 = {
        device_packages = [ "kmod-hwmon-tps23861" ];
      };
      zyxel_gs1900-10hp = {
        device_packages = [ ];
      };
      zyxel_gs1900-16 = {
        device_packages = [ ];
      };
      zyxel_gs1900-24-v1 = {
        device_packages = [ ];
      };
      zyxel_gs1900-24e = {
        device_packages = [ ];
      };
      zyxel_gs1900-24hp-v1 = {
        device_packages = [ ];
      };
      zyxel_gs1900-24hp-v2 = {
        device_packages = [ ];
      };
      zyxel_gs1900-8 = {
        device_packages = [ ];
      };
      zyxel_gs1900-8hp-v1 = {
        device_packages = [ "lua-rs232" ];
      };
      zyxel_gs1900-8hp-v2 = {
        device_packages = [ "lua-rs232" ];
      };
    };
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/realtek/rtl838x/packages/";
    sourceInfo = {
      hash = "sha256-TWWl2ZxjWgvy48XNV6gEvnsBPD8VnmIUtlu/T8l12jM=";
      name = "realtek_rtl838x-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/realtek/rtl838x/packages/Packages";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "mips_4kec";
  feeds = import ./../../../packages/mips_4kec.nix;
}
