class Polaris < Formula
  include Language::Python::Virtualenv

  desc "Local security checks for code and AI coding agents"
  homepage "https://github.com/hitheoai/polaris"
  url "https://files.pythonhosted.org/packages/ae/47/13359bbc24f0f09c693d051949b09f1d1f1dda832667a03170242352ec92/theovex_polaris-0.6.0.tar.gz"
  sha256 "6d3da20f561dd40930fa77551a7e2964e5aae132c8f98f2bbe999c87e305e5ec"
  license "Apache-2.0"

  depends_on arch: :arm64
  depends_on "cryptography" => :no_linkage
  depends_on "libyaml"
  depends_on :macos
  depends_on "pydantic" => :no_linkage
  depends_on "python@3.14"
  depends_on "rpds-py" => :no_linkage

  pypi_packages package_name:     "theovex-polaris[mcp,tui]",
                exclude_packages: %w[cryptography pydantic rpds-py]

  resource "anyio" do
    url "https://files.pythonhosted.org/packages/a9/d2/f4d173e22df740bc37b1db102b386ba719b66e95b0f0d751f556b387e6d2/anyio-4.15.1.tar.gz"
    sha256 "9f28306018cbd6d329e64a36d58256edff76dd996fe423bc957326e578b82a94"
  end

  resource "attrs" do
    url "https://files.pythonhosted.org/packages/9a/8e/82a0fe20a541c03148528be8cac2408564a6c9a0cc7e9171802bc1d26985/attrs-26.1.0.tar.gz"
    sha256 "d03ceb89cb322a8fd706d4fb91940737b6642aa36998fe130a9bc96c985eff32"
  end

  resource "click" do
    url "https://files.pythonhosted.org/packages/c7/0e/7fa0ef50764b67090eca4114772a2abf8b6148198475e54c660b97caeee6/click-8.5.0.tar.gz"
    sha256 "ba0d2089de75ea0310e2dde03160e6ca10009947fb95a182f9b54021bb272e34"
  end

  resource "h11" do
    url "https://files.pythonhosted.org/packages/01/ee/02a2c011bdab74c6fb3c75474d40b3052059d95df7e73351460c8588d963/h11-0.16.0.tar.gz"
    sha256 "4e35b956cf45792e4caa5885e69fba00bdbc6ffafbfa020300e549b208ee5ff1"
  end

  resource "httpcore2" do
    url "https://files.pythonhosted.org/packages/cb/f3/1db7aa2bc2524062192bb0e0323969492d1883152a232fe36eea65f4e35c/httpcore2-2.13.1.tar.gz"
    sha256 "e0aa977abe17e69a3b820a24542a6fa88702676d83880b8d194dcd18408e5103"
  end

  resource "httpx2" do
    url "https://files.pythonhosted.org/packages/d5/44/474bef2a0e9d90f1715d32cb98b0738695ca17ba324095fb2497ed7fbd59/httpx2-2.13.1.tar.gz"
    sha256 "e48744a19e3af5ee48313d0ce5fe941d5422fae5705ea922a4aabf94d7800dfa"
  end

  resource "idna" do
    url "https://files.pythonhosted.org/packages/f5/08/8eea9d4b8302028f3abb2c0813953f7aec26d33b7a8960ed760e65ff29fa/idna-3.20.tar.gz"
    sha256 "a7db850025b95ded1eae8a46181a1a6c56c92c96f0e2b005d9ff8dc0210cab44"
  end

  resource "jsonschema" do
    url "https://files.pythonhosted.org/packages/b3/fc/e067678238fa451312d4c62bf6e6cf5ec56375422aee02f9cb5f909b3047/jsonschema-4.26.0.tar.gz"
    sha256 "0c26707e2efad8aa1bfc5b7ce170f3fccc2e4918ff85989ba9ffa9facb2be326"
  end

  resource "jsonschema-specifications" do
    url "https://files.pythonhosted.org/packages/19/74/a633ee74eb36c44aa6d1095e7cc5569bebf04342ee146178e2d36600708b/jsonschema_specifications-2025.9.1.tar.gz"
    sha256 "b540987f239e745613c7a9176f3edb72b832a4ac465cf02712288397832b5e8d"
  end

  resource "linkify-it-py" do
    url "https://files.pythonhosted.org/packages/45/98/7a1a5f31fd5c7ba93e963b168e244b8e3dd705b3d2a718e3c3307583bf57/linkify_it_py-2.2.0.tar.gz"
    sha256 "907acd2d17ac1fbb9ddb62c8957ccbd6158cac602231a15c3b0cd1e215f03cee"
  end

  resource "markdown-it-py" do
    url "https://files.pythonhosted.org/packages/06/ff/7841249c247aa650a76b9ee4bbaeae59370dc8bfd2f6c01f3630c35eb134/markdown_it_py-4.2.0.tar.gz"
    sha256 "04a21681d6fbb623de53f6f364d352309d4094dd4194040a10fd51833e418d49"
  end

  resource "mcp" do
    url "https://files.pythonhosted.org/packages/9d/8d/e0d339616f4810e9051d4aba6887afab289ab1f81875fe908b606cdfd0e3/mcp-2.3.0.tar.gz"
    sha256 "8b147a50441cf059dc88c684e0aeed3687f0aa0f39c6cde7b90330effd2b34d8"
  end

  resource "mcp-types" do
    url "https://files.pythonhosted.org/packages/9e/2d/7c251e34207f6c51000312fc8839111ac45cfe02023f90b44e7f1051dd8e/mcp_types-2.3.0.tar.gz"
    sha256 "d1e46549edb35ee19a94940fcee6d1addd7e589ab7ea92dda83f5d84781fc362"
  end

  resource "mdit-py-plugins" do
    url "https://files.pythonhosted.org/packages/59/fc/f8d0863f8862f25602c0404d75568e89fb6b4109804645e5cdfb1be5cf56/mdit_py_plugins-0.6.1.tar.gz"
    sha256 "a2bca0f039f39dbd35fb74ae1b5f998608c437463371f0ff7f49a19a17a114d0"
  end

  resource "mdurl" do
    url "https://files.pythonhosted.org/packages/d6/54/cfe61301667036ec958cb99bd3efefba235e65cdeb9c84d24a8293ba1d90/mdurl-0.1.2.tar.gz"
    sha256 "bb413d29f5eea38f31dd4754dd7377d4465116fb207585f97bf925588687c1ba"
  end

  resource "opentelemetry-api" do
    url "https://files.pythonhosted.org/packages/1f/dc/e12c1fe1ed8a7b7149777127b1a0e12ce5bd5a81d97408bedc2128c260f5/opentelemetry_api-1.45.0.tar.gz"
    sha256 "711ede81773c8025c2c03dac0450bc89f3d30aea6eabcc815c570d4e35a963f7"
  end

  resource "platformdirs" do
    url "https://files.pythonhosted.org/packages/42/23/4a86fc741c38c5b69792a4ef954b281afa69bea9f083f881de1b0d23bc07/platformdirs-4.12.3.tar.gz"
    sha256 "427fc0bb321ae0c5b037fa03238ca74820437be162e78b4848c4d4055b9b766c"
  end

  resource "pygments" do
    url "https://files.pythonhosted.org/packages/49/2e/ced460408999b33da6b31b0021b0f37d329e202d4169aeb164493778f25b/pygments-2.21.0.tar.gz"
    sha256 "610ca751c9bc2492b38eb9a38a7fbc93edbbb2d7182edaf34e66ae493dee5c8c"
  end

  resource "pyjwt" do
    url "https://files.pythonhosted.org/packages/43/ea/5194e52748b0da83d71e082d75496eaec6e58f419f5e184786ded517e6a9/pyjwt-2.15.1.tar.gz"
    sha256 "4f259e80cdfb6b3fc18a7de51fd1ef9ec79652f25019bae68975ca2468a34df8"
  end

  resource "python-multipart" do
    url "https://files.pythonhosted.org/packages/5b/42/55c32bb9b12693c092ad250a0e82edb5b31ddeda6eb772de5f308b3804ad/python_multipart-0.0.32.tar.gz"
    sha256 "be54b7f3fa167bb83e4fcd936b887b708f4e57fe75911c02aebf53efaf8d938e"
  end

  resource "pyyaml" do
    url "https://files.pythonhosted.org/packages/05/8e/961c0007c59b8dd7729d542c61a4d537767a59645b82a0b521206e1e25c2/pyyaml-6.0.3.tar.gz"
    sha256 "d76623373421df22fb4cf8817020cbb7ef15c725b9d5e45f17e189bfc384190f"
  end

  resource "referencing" do
    url "https://files.pythonhosted.org/packages/22/f5/df4e9027acead3ecc63e50fe1e36aca1523e1719559c499951bb4b53188f/referencing-0.37.0.tar.gz"
    sha256 "44aefc3142c5b842538163acb373e24cce6632bd54bdb01b21ad5863489f50d8"
  end

  resource "rich" do
    url "https://files.pythonhosted.org/packages/c0/8f/0722ca900cc807c13a6a0c696dacf35430f72e0ec571c4275d2371fca3e9/rich-15.0.0.tar.gz"
    sha256 "edd07a4824c6b40189fb7ac9bc4c52536e9780fbbfbddf6f1e2502c31b068c36"
  end

  resource "sse-starlette" do
    url "https://files.pythonhosted.org/packages/e4/be/0123026f719d1a7936f214a88b553bb5701e04ff2511147c1dab0c5035eb/sse_starlette-3.5.0.tar.gz"
    sha256 "75de713aa8a9441513cc283220826da079d982770965b951e9437720e8bafdb2"
  end

  resource "starlette" do
    url "https://files.pythonhosted.org/packages/7b/2b/3850dc6bf7ef71b088962eba31dafc6cffd2f96e577ebb0bb316df96da3e/starlette-1.7.0.tar.gz"
    sha256 "c79f74ea63cff761804fbbfb182f1e0b440c2d07b164d24700c5a1bab5d6ff5d"
  end

  resource "textual" do
    url "https://files.pythonhosted.org/packages/00/21/39a76b01bd5eea82a04baaca7580e105d8c59450df03998345bb2cfb307b/textual-8.2.8.tar.gz"
    sha256 "3f106a9fbc73e39dd266c9712432087de78a6d644084c7c241d6a25c3169115b"
  end

  resource "tomlkit" do
    url "https://files.pythonhosted.org/packages/94/96/e07752635b98536177fa1f37671c8f3cdde2e724c6bcf6034b2cfb571565/tomlkit-0.15.1.tar.gz"
    sha256 "e25bbf38843005246210a12982776f27f99cb9be67160e14434d0c0d21ee1e97"
  end

  resource "tree-sitter" do
    url "https://files.pythonhosted.org/packages/f7/03/5600b84aff2e6c4fe80cfebb4063fe2f50299521befe5f6092ab8c082f4a/tree_sitter-0.26.0.tar.gz"
    sha256 "b40c219edccc4564530c96f8f1556f6202b37cda964d1cbd7bd2b7e68b40a245"
  end

  resource "tree-sitter-javascript" do
    url "https://files.pythonhosted.org/packages/59/e0/e63103c72a9d3dfd89a31e02e660263ad84b7438e5f44ee82e443e65bbde/tree_sitter_javascript-0.25.0.tar.gz"
    sha256 "329b5414874f0588a98f1c291f1b28138286617aa907746ffe55adfdcf963f38"
  end

  resource "tree-sitter-rust" do
    # The matching PyPI sdist omits src/tree_sitter/*.h; common source files are identical.
    url "https://github.com/tree-sitter/tree-sitter-rust/archive/refs/tags/v0.24.2.tar.gz"
    sha256 "061e90a539a55a6aa65dceb0ad6425c50ab1a6e3e6d4ba430e2795ed4550f10e"
  end

  resource "tree-sitter-typescript" do
    # The matching PyPI sdist omits the scanner/parser headers; common source files are identical.
    url "https://github.com/tree-sitter/tree-sitter-typescript/archive/refs/tags/v0.23.2.tar.gz"
    sha256 "2c4ce711ae8d1218a3b2f899189298159d672870b5b34dff5d937bed2f3e8983"
  end

  resource "truststore" do
    url "https://files.pythonhosted.org/packages/53/a3/1585216310e344e8102c22482f6060c7a6ea0322b63e026372e6dcefcfd6/truststore-0.10.4.tar.gz"
    sha256 "9d91bd436463ad5e4ee4aba766628dd6cd7010cf3e2461756b3303710eebc301"
  end

  resource "uvicorn" do
    url "https://files.pythonhosted.org/packages/da/34/30e9280707135d2cfc589dfff3cb796bd07a3aeb1a3e415ba09dd89d7bb4/uvicorn-0.54.0.tar.gz"
    sha256 "a2e33cbfaa0306f8e6b0c13e0cb89d7d7a2da3e62b90c66e18c33d9807b28620"
  end

  def install
    virtualenv_install_with_resources(system_site_packages: false)
  end

  def caveats
    <<~EOS
      Includes the terminal UI and MCP integration, using Polaris's built-in analyzers.
      Semgrep, local model dependencies, and model weights are not installed.

      Start with: polaris check
      Editor integration is opt-in: polaris setup --help
      No editor settings, shell profiles, credentials, or background services were changed.

      Use brew upgrade/reinstall/uninstall polaris to manage this installation.
      Uninstall retains project/editor configuration and user settings.
    EOS
  end

  test do
    system formula_opt_bin("python@3.14")/"python3.14", "-m", "pip",
           "--python=#{libexec}/bin/python", "check"
    assert_match version.to_s, shell_output("#{bin}/polaris --version")
    assert_match version.to_s, shell_output("#{bin}/theo --version")
    assert_match "usage:", shell_output("#{bin}/polaris tui --help")

    (testpath/"verify.py").write <<~PYTHON
      import importlib.metadata as metadata
      import importlib.util
      import json
      import os
      from pathlib import Path
      import subprocess
      import sys

      import anyio
      from mcp import Client, StdioServerParameters
      from polaris.tui.cli import textual_available
      import polaris.tui.simple
      from tree_sitter import Language, Parser
      import tree_sitter_javascript
      import tree_sitter_rust
      import tree_sitter_typescript

      assert metadata.version("theovex-polaris") == sys.argv[2]
      assert textual_available()
      for excluded in ("semgrep", "torch", "transformers"):
          assert importlib.util.find_spec(excluded) is None, excluded
      for language, source in (
          (tree_sitter_javascript.language(), b"const value = 1;"),
          (tree_sitter_rust.language(), b"fn main() {}"),
          (tree_sitter_typescript.language_typescript(), b"const value: number = 1;"),
          (tree_sitter_typescript.language_tsx(), b"const view = <div />;"),
      ):
          assert not Parser(Language(language)).parse(source).root_node.has_error

      command = str(Path(sys.argv[1]).resolve())
      work = Path.cwd().resolve()
      home = work / "home"
      home.mkdir()
      environment = {
          "HOME": str(home),
          "PATH": os.defpath,
          "POLARIS_HOME": str(home / ".polaris"),
          "PYTHONDONTWRITEBYTECODE": "1",
          "HF_HUB_OFFLINE": "1",
          "TRANSFORMERS_OFFLINE": "1",
          "NO_COLOR": "1",
      }
      risky = work / "risky"
      safe = work / "safe"
      risky.mkdir()
      safe.mkdir()
      (risky / "app.py").write_text(
          'import os\\n\\ndef ping(host):\\n    os.system("ping -c 1 " + host)\\n'
      )
      (risky / "app.js").write_text(
          'import { execSync } from "node:child_process";\\n'
          'import express from "express";\\n'
          'const app = express();\\n'
          'app.get("/run", (req, res) => { res.send(execSync(req.query.command).toString()); });\\n'
      )
      (safe / "app.py").write_text('def add(left, right):\\n    return left + right\\n')
      (safe / "app.js").write_text('export function add(left, right) { return left + right; }\\n')
      original = {p: p.read_bytes() for folder in (risky, safe) for p in folder.iterdir()}

      def check(folder, expected_exit, expected_status):
          result = subprocess.run(
              [command, "check", "--all", "--json", "--root", str(folder)],
              cwd=folder, env=environment, capture_output=True, text=True, timeout=60,
          )
          assert result.returncode == expected_exit, (result.returncode, result.stdout, result.stderr)
          report = json.loads(result.stdout)
          assert report["format"] == "polaris.check/1", report
          assert report["status"] == expected_status, report
          return report

      flagged = check(risky, 1, "fix_needed")
      findings = {
          (item["where"]["file"], item["technical"]["check"])
          for item in flagged["items"]
      }
      assert {("app.py", "command_injection"), ("app.js", "command_injection")} <= findings, flagged
      assert flagged["counts"]["fix_now"] >= 2, flagged
      clear = check(safe, 0, "clear")
      assert clear["counts"]["fix_now"] == 0, clear

      async def verify_mcp():
          server = StdioServerParameters(
              command=command,
              args=["mcp", "--engine", "rules", "--root", str(risky), "--no-external-analyzers"],
              env=environment,
          )
          with anyio.fail_after(60):
              async with Client(server) as client:
                  names = {tool.name for tool in (await client.list_tools()).tools}
                  assert names == {"polaris_check", "polaris_explain", "polaris_fix"}, names
                  result = await client.call_tool("polaris_check", {"scope": "all"})
                  assert not result.is_error, result
                  report = result.structured_content
                  assert report["format"] == "polaris.check/1", report
                  assert report["status"] == "fix_needed", report
                  assert report["counts"] == flagged["counts"], report
                  assert {
                      (item["where"]["file"], item["technical"]["check"])
                      for item in report["items"]
                  } == findings, report

      anyio.run(verify_mcp)
      assert all(path.read_bytes() == content for path, content in original.items())
      print("Python/JavaScript checks, TUI imports, and MCP stdio checks passed.")
    PYTHON
    system libexec/"bin/python", "-I", "-B", testpath/"verify.py", bin/"polaris", version.to_s
  end
end
