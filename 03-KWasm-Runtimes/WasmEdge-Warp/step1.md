Install Rust :
```
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh && source "$HOME/.cargo/env" && \
rustup target add wasm32-wasi
```{{exec}}

Install WasmEdge:
`curl -sSf https://raw.githubusercontent.com/WasmEdge/WasmEdge/master/utils/install.sh | bash && source /root/.bashrc`{{exec}}
