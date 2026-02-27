# 23.05.7 package feeds for powerpc_464fp
{
  sha256sums = {
    hash = "sha256-k3FkHekWnvJxuJ9bOzfXG1ZzIm8mSF4ftnw9u8yANmg=";
    name = "powerpc_464fp-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/powerpc_464fp/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/powerpc_464fp/base/";
    sourceInfo = {
      hash = "sha256-7eGwIQqzMUvr7MvJFQp4/cp8ZHocvRcTdfQpRk/OE8Q=";
      name = "powerpc_464fp-base-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/powerpc_464fp/base/Packages";
    };
    packages =
      let
        p = ./powerpc_464fp/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/powerpc_464fp/luci/";
    sourceInfo = {
      hash = "sha256-W2i3sDIJV58gupgtjvFpy0oWCiXgL68lGPYJa96DdrM=";
      name = "powerpc_464fp-luci-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/powerpc_464fp/luci/Packages";
    };
    packages =
      let
        p = ./powerpc_464fp/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/powerpc_464fp/packages/";
    sourceInfo = {
      hash = "sha256-MpUKuWChvrcl3rkkdk/vlrdyaKIitpc0kdNPzabJGoo=";
      name = "powerpc_464fp-packages-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/powerpc_464fp/packages/Packages";
    };
    packages =
      let
        p = ./powerpc_464fp/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/powerpc_464fp/routing/";
    sourceInfo = {
      hash = "sha256-kVU9Ze6i85ENs5tE1RnPcssqqEk0kS77r5dQmJvq70Q=";
      name = "powerpc_464fp-routing-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/powerpc_464fp/routing/Packages";
    };
    packages =
      let
        p = ./powerpc_464fp/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/powerpc_464fp/telephony/";
    sourceInfo = {
      hash = "sha256-/Kk/Vht0RBVBQRP9S5d3f6jD3mqI5n/wprl5XzIhcdA=";
      name = "powerpc_464fp-telephony-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/powerpc_464fp/telephony/Packages";
    };
    packages =
      let
        p = ./powerpc_464fp/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
