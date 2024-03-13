/**
 * Just replace BAREUR
 */

let BAREURL = '/bare/';

/**
 * Non-developers, please modify without authorization, 98% report errors!
*/
self.__uv$config = {
    prefix: `/web/`,
    bare: `${BAREURL}`,
    encodeUrl: Ultraviolet.codec.xor.encode,
    decodeUrl: Ultraviolet.codec.xor.decode,
    handler: '/server/server.handler.js',
    client: '/server/server.client.js',
    bundle: '/server/server.bundle.js',
    config: '/server/server.config.js',
    sw: '/server/server.sw.js',
};
