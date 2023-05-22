let invokeCallbacks = [];

async function invokeMethod(method, params) {

    if(params) params = JSON.parse(params)
    
    return new Promise((resolve, reject) => {

        function wrapResolve(data) {
            if(data == null || data == undefined) {
                resolve(data);    
            } else {
                resolve(JSON.stringify(data));
            }
        }


        async function caller(callback) {
            try {
                wrapResolve(await callback());
            } catch(e) {
                reject(e.message || e.error)
            }
        }


        for(let i = 0; i<invokeCallbacks.length; i++) {
            invokeCallbacks[i](method, params, caller)
        }

    })
 }