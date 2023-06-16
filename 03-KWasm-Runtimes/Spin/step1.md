Install Rust :
```
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh && source "$HOME/.cargo/env" && \
rustup target add wasm32-wasi
```{{exec}}

Install Spin:
`curl -fsSL https://developer.fermyon.com/downloads/install.sh | bash && mv ./spin /usr/local/bin/spin`{{exec}}
