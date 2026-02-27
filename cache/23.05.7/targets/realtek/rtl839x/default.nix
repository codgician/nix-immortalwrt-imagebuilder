# 23.05.7 realtek/rtl839x
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/realtek/rtl839x/";
  sha256sums = {
    hash = "sha256-vvKNc3WmAWNLDoXq7euzjzY2od15AR3yzzHFz/lyV6w=";
    name = "realtek_rtl839x-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/realtek/rtl839x/sha256sums";
  };
  imagebuilder = {
    sha256 = "3469a1919c5d61d3fc1ae9fed6b9407d10a3065991868d873443aec8b4df202f";
    filename = "immortalwrt-imagebuilder-23.05.7-realtek-rtl839x.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-YTtH4o7V2B8vB10nqHTWy5oVIjL+9oAMdLIxEC6CnNU=";
    name = "realtek_rtl839x-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/realtek/rtl839x/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_24kc";
    linux_kernel = {
      release = "1";
      vermagic = "6f07ebd250af89e933dde3b3573de2ae";
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
    kmods_target = "5.15.195-1-6f07ebd250af89e933dde3b3573de2ae";
    profiles = {
      d-link_dgs-1210-52 = {
        device_packages = [ ];
      };
      netgear_gs750e = {
        device_packages = [ ];
      };
      panasonic_m48eg-pn28480k = {
        device_packages = [
          "kmod-hwmon-gpiofan"
          "kmod-hwmon-lm75"
          "kmod-i2c-mux-pca954x"
          "kmod-thermal"
        ];
      };
      tplink_sg2452p-v4 = {
        device_packages = [
          "kmod-hwmon-gpiofan"
          "kmod-hwmon-tps23861"
        ];
      };
      zyxel_gs1900-48 = {
        device_packages = [ ];
      };
    };
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/realtek/rtl839x/packages/";
    sourceInfo = {
      hash = "sha256-059HrXGptNt7tKGcp74VEiKkRJvWYgjO4n2ioeRx6kI=";
      name = "realtek_rtl839x-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/realtek/rtl839x/packages/Packages";
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
