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
    procEmitter = process.EventEmitter(),
    _ = require('underscore'),
    md = require("node-markdown").Markdown;

var views = __dirname + '/../public/views';
var app = require(__dirname + '/../node_modules/.bin/ql.io.app');

// Add the home page to the console app
app.use(express.static(__dirname + '/../public'));
app.remove.get('/');
app.get('/', function(req, res) {
    res.render(views + '/index.ejs', {
        layout: 'layout-home'
    });
});

// Docs
app.get(/^\/docs?(?:\/(\d+)(?:\.\.(\d+))?)?/, function(req, res) {
    var path = req.url;
    if (path.indexOf('/docs') == 0) {
        path = views + (path === '/docs' ? '/docs/list' : path) + '.ejs';
        res.render(path, {
            title: 'Docs',
            layout: '../layout'
        });
    }
    else {
        res.writeHead(404, 'File Not Found', {
            'content-type' : 'application/json'
        });
        res.end();
    }
});
