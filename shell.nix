with import <nixpkgs> { };

let
  pythonEnv = python3.withPackages(ps: [
    ps.requests
    ps.click
  ]);

in mkShell {
  buildInputs = [
    pythonEnv
    dmg2img
    qemu
  ];
}
