function make_environment(...envs) {
    return new Proxy(envs, {
        get(target, prop, receiver) {
            for (let env of envs) {
                if (env.hasOwnProperty(prop)) {
                    return env[prop]
                }
            }
            return (...args) => { console.error("NOT IMPLEMENTED: " + prop, args) }
        }
    });
}

WebAssembly.instantiateStreaming(fetch("game.wasm"), {
    env: make_environment({
        WindowShouldClose: () => {
            return true
        }
    })
}).then((w) => {
    w.instance.exports.main()
}).catch((err) => {
    console.log("Error instantiating game", err)
})
