{
    "id": "2538c1cd-3c4c-459b-894b-2ab3f04a6e6e",
    "modelName": "GMExtension",
    "mvc": "1.2",
    "name": "netlog",
    "IncludedResources": [
        "Included Files\\netlog\\netlog.exe",
        "Included Files\\netlog\\netlog.n"
    ],
    "androidPermissions": [
        
    ],
    "androidProps": true,
    "androidactivityinject": "",
    "androidclassname": "",
    "androidinject": "",
    "androidmanifestinject": "",
    "androidsourcedir": "",
    "author": "",
    "classname": "",
    "copyToTargets": 105554163798254,
    "date": "2021-10-28 01:02:20",
    "description": "",
    "exportToGame": true,
    "extensionName": "",
    "files": [
        {
            "id": "b1665abf-a342-4e04-ae9a-844d3c6d7bd3",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                {
                    "id": "02de84db-aff7-4393-9396-ac1df2392db8",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "netlog_is_ready",
                    "hidden": true,
                    "value": "(global.netlog_ready)"
                }
            ],
            "copyToTargets": 105554172285166,
            "filename": "netlog.gml",
            "final": "netlog_cleanup",
            "functions": [
                {
                    "id": "28dc615e-5742-4747-b7cd-c4533b9fa528",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "netlog_preinit",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "netlog_preinit",
                    "returnType": 2
                },
                {
                    "id": "ae035cdc-a711-4fa8-997b-ec877bfb4c93",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "netlog_cleanup",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "netlog_cleanup",
                    "returnType": 2
                },
                {
                    "id": "1b3285d8-75bb-4bf7-8fdb-abe191412bb2",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "netlog_init",
                    "help": "netlog_init(url, port) : Attempts connecting to netlog server (if available).",
                    "hidden": false,
                    "kind": 11,
                    "name": "netlog_init",
                    "returnType": 2
                },
                {
                    "id": "4a7d9273-9c0c-4df1-ad31-22f919464146",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "netlog_async_net",
                    "help": "netlog_async_net() : Should be added to Async - Networking event",
                    "hidden": false,
                    "kind": 11,
                    "name": "netlog_async_net",
                    "returnType": 2
                },
                {
                    "id": "478a6047-b060-463b-80e8-21795685fc93",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "netlog",
                    "help": "netlog(message) : Sends a message either to server (if connected) or to show_debug_message.",
                    "hidden": false,
                    "kind": 11,
                    "name": "netlog",
                    "returnType": 2
                }
            ],
            "init": "netlog_preinit",
            "kind": 2,
            "order": [
                
            ],
            "origname": "extensions\\gml.gml",
            "uncompress": false
        }
    ],
    "gradleinject": "",
    "helpfile": "",
    "installdir": "",
    "iosProps": true,
    "iosSystemFrameworkEntries": [
        
    ],
    "iosThirdPartyFrameworkEntries": [
        
    ],
    "iosdelegatename": "",
    "iosplistinject": "",
    "license": "Proprietary",
    "maccompilerflags": "",
    "maclinkerflags": "",
    "macsourcedir": "",
    "options": null,
    "optionsFile": "options.json",
    "packageID": "",
    "productID": "",
    "sourcedir": "",
    "supportedTargets": 105554163798254,
    "tvosProps": false,
    "tvosSystemFrameworkEntries": [
        
    ],
    "tvosThirdPartyFrameworkEntries": [
        
    ],
    "tvosclassname": "",
    "tvosdelegatename": "",
    "tvosmaccompilerflags": "",
    "tvosmaclinkerflags": "",
    "tvosplistinject": "",
    "version": "1.0.0"
}