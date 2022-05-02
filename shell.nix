with (import <nixpkgs> {});
let
  env = bundlerEnv {
    name = "bad-ldap-server";
    ruby = ruby;
    gemdir  = ./.;
  };
in mkShell {
  buildInputs = [ env env.wrappedRuby ];
}
