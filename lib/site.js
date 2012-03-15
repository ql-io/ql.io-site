/*
 * Copyright 2011 eBay Software Foundation
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *    http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

"use strict";

var http = require('http'),
    express = require('express'),
    fs = require('fs'),
    _ = require('underscore'),
    main = require('ql.io-app'),
    combo = require('combohandler');

var views = __dirname + '/../public/views';

main.exec(function (app) {
    // Add the home page to the console app
    app.use(express.static(__dirname + '/../public'));
    app.remove.get('/');
    app.get('/', function (req, res) {
        res.header('Content-Type', 'text/html');
        res.render(views + '/index.ejs', {
            layout: 'layout-home'
        });
    });

    // Docs
    app.get(/^\/docs?(?:\/(\d+)(?:\.\.(\d+))?)?/, function (req, res) {
        var path = req.url;
        if(path.indexOf('/docs') == 0) {
            path = views + (path === '/docs' ? '/docs/quickstart' : path) + '.ejs';
            res.render(path, {
                title: 'Docs',
                layout: __dirname + '/../public/views/layout'
            });
        }
        else {
            res.writeHead(404, 'File Not Found', {
                'content-type': 'application/json'
            });
            res.end();
        }
    });

    // Add an example page to the console app
    app.get('/examples', function (req, res) {
        fs.readFile(views + '/examples/examples.json', 'UTF-8', function (err, data) {
            if(err) {
                res.writeHead(500, 'Internal Server Error', {
                    'Content-Type': 'application/json'
                });
                res.write(JSON.stringify(err));
                res.end();
            }
            else {
                var examples = JSON.parse(data);

                res.render(views + '/examples/examples.ejs', {
                    examples: examples,
                    title: 'Examples',
                    layout: __dirname + '/../public/views/layout'
                });
            }
        });
    });

    app.get('/site.js', combo.combine({rootPath: __dirname + '/../public/scripts'}), function (req, res) {
        res.send(res.body, 200);
    });
});

