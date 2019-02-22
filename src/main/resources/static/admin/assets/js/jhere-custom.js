(function(e, t, n) {
    function x(t, n) {
        this.element = t,
        this.options = e.extend({},
        i, n),
        this.init()
    }
    function T() {
        var e = this.map || {};
        return {
            center: e.center,
            zoom: e.zoomLevel,
            bbox: e.getViewBounds && e.getViewBounds(),
            type: this.mtype
        }
    }
    function N(e, t) {
        var n = new u.kml.Manager;
        n.addObserver("state", c(function(e) {
            e.state === "finished" && t.call(this, e)
        },
        this)),
        n.parseKML(e)
    }
    function C(t) {
        var n = t.target,
        r = this.map.pixelToGeo(t.displayX, t.displayY);
        if (n !== this.map) return;
        t.type = "map" + t.type,
        e(this.element).trigger(L(t, r))
    }
    function k(e) {
        var t = e.target,
        n = t[e.type];
        A(n) && n.call(this.element, L(e, t.coordinate))
    }
    function L(t, n) {
        return e.Event(t.type, {
            originalEvent: t,
            geo: {
                latitude: n.latitude,
                longitude: n.longitude
            },
            target: t.target
        })
    }
    function A(e) {
        return typeof e == "function"
    }
    function O() {
        return !! e().on
    }
    var r = "jHERE",
    i, s, o, u, a, f, l, c = e.proxy,
    h, p = "mouse",
    d = "click",
    v = "drag",
    m = "touch",
    g = "start",
    y = "end",
    b = "move",
    w = "appId",
    E = "authenticationToken",
    S = [d, "dbl" + d, p + "up", p + "down", p + b, p + "over", p + "out", p + "enter", p + "leave", "longpress", v + g, v, v + y, "resize", m + g, m + y, m + b];
    i = {
        appId: "69Dgg78qt4obQKxVbRA8",
        authToken: "Nz7ilIB_v1CRwPXxgPdvuA",
        zoom: 12,
        center: [52.49, 13.37],
        enable: ["behavior", "zoombar", "scalebar", "typeselector"],
        type: "map",
        marker: {
            text: "",
            textColor: "#333333",
            fill: "#ff6347",
            stroke: "#333333",
            shape: "balloon",
            icon: undefined
        },
        bubble: {
            content: "",
            closable: !0,
            onclose: e.noop
        },
        heatmap: {
            max: 20,
            opacity: .8,
            coarseness: 2
        }
    },
    e[r] = h = {},
    s = x.prototype,
    h.defaultCredentials = function(e, t) {
        l = {
            id: e,
            token: t
        },
        f.load().is.done(function() {
            o.Settings.set(w, e),
            o.Settings.set(E, t)
        })
    },
    s.init = function() {
        f.load().is.done(c(this.makemap, this))
    },
    s.makemap = function() {
        var t = this,
        n = t.options,
        i = a.component,
        s = [],
        f = c(C, t),
        h = {};
        i.Positioning = u.positioning.component.Positioning,
        l = l || {
            id: n.appId,
            token: n.authToken
        },
        o.Settings.set(w, l.id),
        o.Settings.set(E, l.token),
        e.data(t.element, r, !0),
        e.each(i, c(function(n, r) {
            n = n.toLowerCase();
            if (~e.inArray(n, t.options.enable)) return A(r) && s.push(new r) || e.error("invalid: " + n)
        },
        t)),
        t.map = new a.Display(t.element, {
            zoomLevel: n.zoom,
            center: n.center,
            components: s
        }),
        t.type(n.type),
        t._mc = new a.Container,
        t.map.objects.add(t._mc),
        e.each(S,
        function(e, t) {
            h[t] = [f, !1, null]
        }),
        t.map.addListeners(h)
    },
    s.center = function(e) {
        this.map.setCenter(e)
    },
    s.zoom = function(e) {
        this.map.set("zoomLevel", e)
    },
    s.type = function(e) {
        var t = this.map,
        n = {
            map: t.NORMAL,
            satellite: t.SATELLITE,
            smart: t.SMARTMAP,
            terrain: t.TERRAIN,
            pt: t.SMART_PT,
            community: t.NORMAL_COMMUNITY,
            satcommunity: t.SATELLITE_COMMUNITY,
            traffic: t.TRAFFIC
        };
        e in n ? (this.mtype = e, e = n[e]) : (this.mtype = "map", e = n.map),
        t.set("baseMapType", e)
    },
    s.marker = function(t, n) {
        var r = {},
        s = c(k, this),
        o = this._mc,
        u = "Marker";
        e.each(S,
        function(e, t) {
            r[t] = [s, !1, null]
        }),
        n = e.extend({},
        i.marker, n),
        n.textPen = n.textPen || {
            strokeColor: n.textColor
        },
        n.pen = n.pen || {
            strokeColor: n.stroke
        },
        n.brush = n.brush || {
            color: n.fill
        },
        n.eventListener = r,
        n.icon || (u = "Standard" + u),
        o.objects.add(new a[u](t, n))
    },
    s.nomarkers = function() {
        this._mc.objects.clear()
    },
    s.bubble = function(t, n) {
        var r, s = this.map;
        n = e.extend({},
        i.bubble, n),
        n.content.jquery && (n.content.css("white-space", "normal"), n.content = e("<div/>").append(n.content.clone()).html()),
        r = s.getComponentById("InfoBubbles") || s.addComponent(new a.component.InfoBubbles),
        r.openBubble(n.content, {
            latitude: t.latitude || t[0],
            longitude: t.longitude || t[1]
        },
        n.onclose, !n.closable)
    },
    s.nobubbles = function() {
        var e;
        return (e = this.map.getComponentById("InfoBubbles")) && e.closeAll()
    },
    s.kml = function(e, t, n) {
        A(t) && (n = t, t = !1),
        N.call(this, e, c(function(e) {
            var r = this.map,
            i = new u.kml.component.KMLResultSet(e.kmlDocument, r);
            i.addObserver("state", c(function(e) {
                var i, s;
                e.state === "finished" && (t && (i = e.container.objects.get(0), s = i.getBoundingBox(), s && r.zoomTo(s)), A(n) && n.call(this, e))
            },
            this)),
            r.objects.add(i.create())
        },
        this))
    },
    s.heatmap = function(t, n, r) {
        var s;
        n = n || "value",
        n.match(/^density|value$/) || (n = "value"),
        r = r || {},
        r.type = n,
        r = e.extend({},
        i.heatmap, r),
        s = new u.heatmap.Overlay(r),
        s.addData(t),
        this.map.overlays.add(s)
    },
    s.originalMap = function(e) {
        e.call(this.element, this.map, u)
    },
    s.destroy = function() {
        this.map.destroy(),
        e.removeData(this.element),
        e(this.element).empty()
    },
    f = {},
    f.is = !1,
    f.load = function() {
        var t, r, i;
        return f.is && f.is.state().match(/pending|resolved/) ? this: (f.is = e.Deferred(), i = function() {
            o = nokia,
            u = o.maps,
            o.Features.load({
                map: "auto",
                ui: "auto",
                search: "auto",
                routing: "auto",
                positioning: "auto",
                behavior: "auto",
                kml: "auto",
                heatmap: "auto"
            },
            function() {
                a = u.map,
                f.is.resolve()
            })
        },
        t = n.getElementsByTagName("head")[0], 
        r = n.createElement("script"),
        r.src1 = "http://api.maps.nokia.com/2.2.4/jsl.js",
        r.type = "text/javascript", r.charset = "utf-8",
        r.onreadystatechange = function() {
            r.readyState.match(/loaded|complete/) && i()
        },
        r.onload = i, t.appendChild(r), this)
    },
    h._JSLALoader = f,
    h.extend = function(e, t) {
        typeof e == "string" && A(t) && (s[e] = t)
    },
    e.fn[r] = function(t) {
        var n = arguments,
        i = "plg_" + r,
        s;
        return O() || e.error(r + " requires Zepto or jQuery >= 1.7"),
        !t && (s = e.data(this[0], i)) ? T.call(s) : this.each(function() {
            var o;
            s = e.data(this, i),
            s ? (typeof t != "string" && e.error(r + " already initialized, expected method."), o = t, n = Array.prototype.slice.call(n, 1), A(s[o]) || e.error(r + ": " + o + " does not exist"), f.load().is.done(function() {
                s[o].apply(s, n)
            })) : (s = new x(this, t), e.data(this, i, s))
        })
    }
})(jQuery, window, document); (function(e) {
    function n(e) {
        return typeof e == "function"
    }
    function r(r, i, s, o) {
        var u = e.Deferred();
        return i = n(i) ? i: e.noop,
        s = n(s) ? s: e.noop,
        t._JSLALoader.load().is.done(function() {
            function t(e, t) {
                var n = e.location;
                n = o ? e.location.address: e.location.position,
                t === "OK" ? (u.resolve(n), i(n)) : (u.reject(), s())
            }
            var e = nokia.places.search.manager;
            o ? e.reverseGeoCode({
                latitude: r.latitude || r[0],
                longitude: r.longitude || r[1],
                onComplete: t
            }) : e.geoCode({
                searchTerm: r,
                onComplete: t
            })
        }),
        u
    }
    var t = e.jHERE;
    t.geocode = function(e, t, n) {
        return r(e, t, n)
    },
    t.reverseGeocode = function(e, t, n) {
        return r(e, t, n, !0)
    }
})(jQuery); (function(e) {
    function i(e) {
        return e instanceof Array ? {
            latitude: e[0],
            longitude: e[1]
        }: e
    }
    var t, n, r = {
        type: "shortest",
        transportMode: "car",
        options: "",
        trafficMode: "default",
        width: 4,
        color: "#ff6347",
        marker: {
            text: "#",
            textColor: "#fff"
        }
    };
    n = function(n, s, o) {
        var u, a, f, l;
        t = t || nokia.maps,
        n = i(n),
        s = i(s),
        o = e.extend({},
        r, o),
        f = function(n, r, i) {
            var s, u, a, f, l, c = {},
            h;
            i === "finished" ? (s = n.getRoutes(), f = s[0], a = new t.map.Polyline(f && f.shape, {
                pen: new t.util.Pen({
                    lineWidth: o.width,
                    strokeColor: o.color
                })
            }), u = new t.map.Container, u.objects.add(a), e.each(f.waypoints, e.proxy(function(t, n) {
                var r = e.extend({},
                o.marker);
                o.marker.text === "#" && (r.text = t + 1),
                this.marker(n.originalPosition, r)
            },
            this)), this.map.objects.add(u), l = f.legs && f.legs.length && f.legs[0], c.time = l.travelTime, c.length = l.length, c.maneuvers = e.map(l.maneuvers,
            function(e) {
                return {
                    street: e.streetName,
                    length: e.length,
                    route: e.routeName
                }
            }), typeof o.onroute == "function" && o.onroute.call(this.element, c), h = e.Event("jhere.route", {
                route: c,
                target: this.element
            }), e(this.element).trigger(h)) : i === "failed" && e.error("Failed to calcolate route")
        },
        u = new t.routing.Manager,
        u.addObserver("state", e.proxy(f, this)),
        a = new t.routing.WaypointParameterList,
        a.addCoordinate(n),
        a.addCoordinate(s),
        l = {
            transportModes: [o.transportMode],
            type: o.type,
            options: o.options,
            trafficMode: o.trafficMode
        },
        u.calculateRoute(a, [l])
    },
    e.jHERE.extend("route", n)
})(jQuery); (function(e) {
    function a(e) {
        return e instanceof Array ? {
            latitude: e[0],
            longitude: e[1]
        }: e
    }
    function f(e) {
        return e ? (e.pen = e.pen || {},
        e.brush = e.brush || {},
        e.pen.strokeColor = e.pen.strokeColor || e.stroke || "#111", e.stroke = "solid", e.pen.lineWidth = e.pen.lineWidth || e.thickness || 1, e.brush.color = e.brush.color || e.fill, e) : e
    }
    function l(e, n) {
        e.objects.add(new t.map.Circle(a(n.center), n.radius || 1e3, n.style))
    }
    function c(e, n) {
        var r = new t.geo.BoundingBox(a(n.topLeft), a(n.bottomRight), !1);
        e.objects.add(new t.map.Rectangle(r, n.style))
    }
    function h(n, r) {
        r.points = e.map(r.points,
        function(e) {
            return a(e)
        }),
        n.objects.add(new t.map.Polyline(r.points, r.style))
    }
    function p(n, r) {
        r.points = e.map(r.points,
        function(e) {
            return a(e)
        }),
        n.objects.add(new t.map.Polygon(r.points, r.style))
    }
    var t, n, r, i, s, o, u;
    n = function(n, r) {
        t = t || nokia.maps,
        u || (u = new t.map.Container, this.map.objects.add(u)),
        r.style = f(r.style);
        switch (n) {
        case "circle":
            l(u, r);
            break;
        case "rectangle":
            c(u, r);
            break;
        case "polyline":
            h(u, r);
            break;
        case "polygon":
            p(u, r);
            break;
        default:
            e.error(n + " not supported")
        }
    },
    r = function(e) {
        n.call(this, "circle", e)
    },
    i = function(e) {
        n.call(this, "rectangle", e)
    },
    s = function(e) {
        n.call(this, "polyline", e)
    },
    o = function(e) {
        n.call(this, "polygon", e)
    },
    e.jHERE.extend("shape", n),
    e.jHERE.extend("circle", r),
    e.jHERE.extend("rectangle", i),
    e.jHERE.extend("polyline", s),
    e.jHERE.extend("polygon", o)
})(jQuery); (function(e) {
    function v(e) {
        var t = e.target,
        n = t[e.type];
        g(n) && n.call(this.element, m(e, t.coordinate))
    }
    function m(t, n) {
        return e.Event(t.type, {
            originalEvent: t,
            geo: {
                latitude: n.latitude,
                longitude: n.longitude
            },
            target: t.target
        })
    }
    function g(e) {
        return typeof e == "function"
    }
    var t, n, r, i, s = {
        text: "",
        textColor: "#333333",
        fill: "#ff6347",
        stroke: "#333333",
        shape: "balloon",
        icon: undefined,
        group: "_"
    },
    o = e.proxy,
    u = "mouse",
    a = "click",
    f = "drag",
    l = "touch",
    c = "start",
    h = "end",
    p = "move",
    d = [a, "dbl" + a, u + "up", u + "down", u + p, u + "over", u + "out", u + "enter", u + "leave", "longpress", f + c, f, f + h, "resize", l + c, l + h, l + p];
    n = function(n, r) {
        var i = {},
        u = o(v, this),
        a = this._mc,
        f = "Marker",
        l,
        c;
        this.groups = this.groups || {},
        c = this.groups,
        t = t || nokia.maps,
        e.each(d,
        function(e, t) {
            i[t] = [u, !1, null]
        }),
        r = e.extend({},
        s, r),
        r.textPen = r.textPen || {
            strokeColor: r.textColor
        },
        r.pen = r.pen || {
            strokeColor: r.stroke
        },
        r.brush = r.brush || {
            color: r.fill
        },
        r.eventListener = i,
        r.icon || (f = "Standard" + f),
        l = new t.map[f](n, r),
        c[r.group] = c[r.group] || [],
        c[r.group].visible = c[r.group].length === 0 ? !0 : c[r.group].visible,
        c[r.group].push(l),
        c[r.group].visible && a.objects.add(l)
    },
    i = function(t, n) {
        var r = this._mc,
        i = r.objects,
        s;
        this.groups = this.groups || {},
        s = this.groups,
        t = t instanceof Array ? t: [t],
        e.each(t,
        function(e, t) {
            n ? i.addAll(s[t] || []) : i.removeAll(s[t] || []),
            s[t].visible = !!n
        })
    },
    r = function() {
        this._mc.objects.clear(),
        this.groups = {}
    },
    e.jHERE.extend("marker", n),
    e.jHERE.extend("markergroups", i),
    e.jHERE.extend("nomarkers", r)
})(jQuery);