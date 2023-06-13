
<br>

### KWasm.sh Playground
Latest KWasm is already installed.

**HAVE FUN**

### Utils
Install K9s:
`curl -L https://github.com/derailed/k9s/releases/download/v0.27.4/k9s_Linux_amd64.tar.gz | tar xzf - -C /usr/local/bin`{{exec}}

Install Rust :
`curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh && source "$HOME/.cargo/env"`{{exec}}
Add `wasm32-wasi`{} target
`rustup target add wasm32-wasi`{{exec}}

Install Spin:
`curl -fsSL https://developer.fermyon.com/downloads/install.sh | bash && mv ./spin /usr/local/bin/spin`{{exec}}

Install WasmEdge:
`curl -sSf https://raw.githubusercontent.com/WasmEdge/WasmEdge/master/utils/install.sh | bash && source /root/.bashrc`{{exec}}

Install WasmTime:
`curl https://wasmtime.dev/install.sh -sSf | bash && source /root/.bashrc`{{exec}}

Install Wasmer:
`curl https://get.wasmer.io -sSfL | sh && source /root/.wasmer/wasmer.sh`{{exec}}


[Open tab for port 8080]({{TRAFFIC_HOST1_8080}}) (needs bind to all interfaces e.g. `--address 0.0.0.0`)