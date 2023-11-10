const { syncDB } = require("../sync-db")

describe('Pruebas en Sync Db', () => { 
    test('debe ejecutar el proceso 2 veces', () => { 
        syncDB();
        const times = syncDB();
        console.log('se llamo', times);
        expect(times).toBe(2);
     })
 })