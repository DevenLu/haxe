var map = new haxe.DynamicAccess();
map.exists("foo") == false;
map.get("foo") == null;
(map["foo"] = 1) == 1;
map.set("bar", 2);
map.set("baz", 3) == 3;
map.exists("foo") == true;
map.exists("bar") == true;
map.exists("baz") == true;
map.get("foo") == 1;
map.get("bar") == 2;
map.get("baz") == 3;
var values = [];
for (key in map.keys()) {
	values.push(map[key]);
}
values.length == 3;
values[0] in [1, 2, 3];
values[1] in [1, 2, 3];
values[2] in [1, 2, 3];
var keys = ["foo", "bar", "baz"];
for (key in map.keys()) {
	t(keys.remove(key));
}
keys == [];
map.remove("bar") == true;
map.remove("bar") == false;
map.exists("foo") == true;
map.exists("bar") == false;
map.exists("baz") == true;
map.get("bar") == null;
map["bar"] == null;

map = {test: 2};
map["test"] == 2;

var d:Dynamic<Int> = map;
d.test == 2;

var map = new haxe.DynamicAccess();
map["a"] = 1;
map["b"] = 2;
map["c"] = 3;

var values = [];
for (value in map) {
	values.push(value);
}
values.length == 3;
values[0] in [1, 2, 3];
values[1] in [1, 2, 3];
values[2] in [1, 2, 3];

var keys = [];
var values = [];
for (key => value in map) {
	keys.push(key);
	values.push(value);
}
keys.length == 3;
keys[0] in ["a", "b", "c"];
keys[1] in ["a", "b", "c"];
keys[2] in ["a", "b", "c"];
values.length == 3;
values[0] in [1, 2, 3];
values[1] in [1, 2, 3];
values[2] in [1, 2, 3];
