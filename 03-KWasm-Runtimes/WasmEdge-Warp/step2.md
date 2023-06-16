`git clone https://github.com/WasmEdge/wasmedge_hyper_demo.git`{{exec}}
```
cd wasmedge_hyper_demo/server-warp/
cargo build --target wasm32-wasi --release
```{{exec}}
`wasmedge target/wasm32-wasi/release/wasmedge_warp_server.wasm`{{exec}}

[Open tab for port 8080]({{TRAFFIC_HOST1_8080}})