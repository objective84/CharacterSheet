/**
 * Created by PVarnerHowland on 10/1/2014.
 */
define("LightPuzzleView",
    ["jquery", "underscore", "marionette"],
    function($, _, marionette) {
        return marionette.ItemView.extend({
            imgs: null,
            nums: null,
            maxcolcount: 7,
            maxrowcount:  7,
            emptyimg:  "resources/images/empty.gif",
            colcount: null,
            rowcount:null,
            imgcount:null,
            cells:null,
            steps:null,
            playing:null,
            autogen:null,
            outrangeimg: "resources/images/outrange.gif",

            onRender: function() {
                $('.puzzle-button').on('click', _.bind(this.onPuzzleButtonClick, this))
                this.imgs = new Array();
                this.nums = new Array();
                this.imgs[0] = "resources/images/blue.gif";
                this.imgs[1] = "resources/images/red.gif";
                for (var val = 0; val < this.imgs.length; val++)
                    this.nums[val] = "number" + val + ".gif";
                var col;
                var row;
                this.cells = new Array();
                for (col = 0; col < this.maxcolcount; col++) {
                    this.cells[col] = new Array();
                    for (row = 0; row < this.maxrowcount; row++)
                        this.cells[col][row] = 0;
                }
                this.newSettings();
            },

            onPuzzleButtonClick: function(event) {
                var col, row, id;
                id = $(event.target).prop('id');
                col = parseInt(id.split('_')[0]);
                row = parseInt(id.split('_')[1]);
                if (col >= this.colcount || row >= this.rowcount) return;
                this.flip(col, row);
                if (this.playing) {
                    if (col > 0)            this.flip(col - 1, row);
                    if (row > 0)            this.flip(col, row - 1);
                    if (col < this.colcount - 1) this.flip(col + 1, row);
                    if (row < this.rowcount - 1) this.flip(col, row + 1);
                    this.steps++;
                    if (this.autogen && this.isCleared()) {
                        alert("Cleared in " + this.steps + " steps!");
                        this.autogen = false;
                    }
                }
            },

            flip: function(col, row) {
                this.setcell(col, row, (this.cells[col][row] + 1) % this.imgcount);
            },

            setcell: function(col, row, val) {
                this.cells[col][row] = val;
                this.setcellimage(col, row, this.imgs[val]);
            },

            setcellimage: function(col, row, imgsrc) {

                $("#" + this.cellname(col, row)).attr('src', imgsrc);
            },

            cellname: function(col, row) {
                return col + "_" + row;
            },

            newSettings: function() {
                this.colcount = 4;
                this.rowcount = 3;
                this.imgcount = 2;
                for (var col = 0; col < this.maxcolcount; col++)
                    for (var row = 0; row < this.maxrowcount; row++) {
                        this.setcellimage(col, row, this.emptyimg);
                    }
                this.newGame();
            },

            newGame: function() {
//                for (var col = 0; col < this.colcount; col++)
//                for (var row = 0; row < this.rowcount; row++) {
//                    this.setcell(col, row, Math.floor(Math.random() * this.imgcount));
//                }
                this.setcell(0, 0, 1);
                this.setcell(0, 1, 0);
                this.setcell(0, 2, 0);

                this.setcell(1, 0, 1);
                this.setcell(1, 1, 0);
                this.setcell(1, 2, 1);

                this.setcell(2, 0, 1);
                this.setcell(2, 1, 1);
                this.setcell(2, 2, 0);

                this.setcell(3, 0, 0);
                this.setcell(3, 1, 0);
                this.setcell(3, 2, 1);

                this.playing = true;
                this.autogen = true;
                this.steps = 0;
            },

            isCleared: function() {
                var sample = this.cells[0][0];
                for (var col = 0; col < this.colcount; col++)
                    for (var row = 0; row < this.rowcount; row++)
                        if (this.cells[col][row] != sample) return false;
                return true;
            }
        });
    });





//// var nosolimg = "nosol.gif";      // string, URL of no solution image
//
//// --- global variables ---
//
//
//init();
//
//
//function newSettings () {
//    var dimension = document.toolbar.dimension.options[
//        document.toolbar.dimension.selectedIndex].value;
//    colcount = eval(dimension.substring(0, 1));
//    rowcount = eval(dimension.substring(2, 3));
//    imgcount = eval(document.toolbar.colors.options[
//        document.toolbar.colors.selectedIndex].value);
//    for (var col = 0; col < maxcolcount; col++)
//        for (var row = 0; row < maxrowcount; row++) {
//            setcellimage(col, row, emptyimg);
//            setanscellimage(col, row, outrangeimg);
//        }
//    newGame();
//}
//
//function newGame () {
//    for (var col = 0; col < colcount; col++)
//        for (var row = 0; row < rowcount; row++) {
//            setcell(col, row, Math.floor(Math.random() * imgcount));
//            setanscellimage(col, row, outrangeimg);
//        }
//    playing = true;
//    autogen = true;
//    steps = 0;
//}
//
//function edit () {
//    if (!playing) {
//        for (var col = 0; col < colcount; col++)
//            for (var row = 0; row < rowcount; row++)
//                setcell(col, row, 0);
//    }
//    playing = false;
//    autogen = false;
//}
//
//function play () {
//    playing = true;
//}
//
//function ansoperate (col, row) {
//    operate(col, row);
//    solve();
//}
//
//
//
//// --- operation methods ---
//function setcell (col, row, val) {
//    cells[col][row] = val;
//    setcellimage(col, row, imgs[val]);
//}
//
//function setcellimage (col, row, imgsrc) {
//    eval("document." + cellname(col, row) + ".src = '" + imgsrc + "'");
//}
//
//function setanscellimage (col, row, imgsrc) {
//    eval("document.ans" + cellname(col, row) + ".src = '" + imgsrc + "'");
//}
//
//function cellname (col, row) {
//    return "cell" + col + "_" + row;
//}
//
//function flip (col, row) {
//    setcell(col, row, (cells[col][row] + 1) % imgcount);
//}
//
//// --- status methods ---
//function isCleared () {
//    var sample = cells[0][0];
//    for (var col = 0; col < colcount; col++)
//        for (var row = 0; row < rowcount; row++)
//            if (cells[col][row] != sample) return false;
//    return true;
//}
//
//// --- finite field algebra solver
//function modulate (x) {
//    // returns z such that 0 <= z < imgcount and x == z (mod imgcount)
//    if (x >= 0) return x % imgcount;
//    x = (-x) % imgcount;
//    if (x == 0) return 0;
//    return imgcount - x;
//}
//
//function gcd (x, y) { // call when: x >= 0 and y >= 0
//    if (y == 0) return x;
//    if (x == y) return x;
//    if (x > y)  x = x % y; // x < y
//    while (x > 0) {
//        y = y % x; // y < x
//        if (y == 0) return x;
//        x = x % y; // x < y
//    }
//    return y;
//}
//
//function invert (value) { // call when: 0 <= value < imgcount
//    // returns z such that value * z == 1 (mod imgcount), or 0 if no such z
//    if (value <= 1) return value;
//    var seed = gcd(value, imgcount);
//    if (seed != 1) return 0;
//    var a = 1, b = 0, x = value;    // invar: a * value + b * imgcount == x
//    var c = 0, d = 1, y = imgcount; // invar: c * value + d * imgcount == y
//    while (x > 1) {
//        var tmp = Math.floor(y / x);
//        y -= x * tmp;
//        c -= a * tmp;
//        d -= b * tmp;
//        tmp = a;
//        a = c;
//        c = tmp;
//        tmp = b;
//        b = d;
//        d = tmp;
//        tmp = x;
//        x = y;
//        y = tmp;
//    }
//    return a;
//}
//
//// --- finite field matrix solver
//
//var mat;    // integer[i][j]
//var cols;   // integer[]
//var m;      // count of rows of the matrix
//var n;      // count of columns of the matrix
//var np;     // count of columns of the enlarged matrix
//var r;      // minimum rank of the matrix
//var maxr;   // maximum rank of the matrix
//
//function a (i, j) {
//    return mat[i][cols[j]];
//}
//
//function setmat (i, j, val) {
//    mat[i][cols[j]] = modulate(val);
//}
//
//function solve () {
//    var col;
//    var row;
//    for (var goal = 0; goal < imgcount; goal++) {
//        if (solveProblem(goal)) { // found an integer solution
//            var anscols = new Array();
//            var j;
//            for (j = 0; j < n; j++)  anscols[cols[j]] = j;
//            for (col = 0; col < colcount; col++)
//                for (row = 0; row < rowcount; row++) {
//                    var value;
//                    j = anscols[row * colcount + col];
//                    if (j < r) value = a(j, n); else value = 0;
//                    setanscellimage(col, row, nums[value]);
//                }
//            return;
//        }
//    }
//    // (aborted or) no solution
//    for (var col = 0; col < colcount; col++)
//        for (var row = 0; row < rowcount; row++)
//            setanscellimage(col, row, outrangeimg);
//    alert("No solutions!"); // setanscellimage(0,0,nosolimg);
//}
//
////  // general solution:
////  if (j < r) {
////      for (var jj = r; jj < n; jj++) + any[jj] * modulate(-a(j,jj));
////  }
////  else {
////      + any[j];
////  }
//
//function checkNormal () {
//    var size = colcount * rowcount;
//    m = size;
//    n = size;
//    np = n + size;
//    initMatrix();
//    for (var col = 0; col < colcount; col++)
//        for (var row = 0; row < rowcount; row++) {
//            var i = row * colcount + col;
//            var line = mat[i];
//            for (var j = n; j < np; j++)  line[j] = 0;
//            line[n + i] = 1;
//        }
//    if (sweep())
//        alert("Always solvable");
//    else alert("Not always solvable ( "
//        + Math.pow(imgcount, n - r) + " identity patterns )");
//}
//
//function initMatrix () {
//    maxr = Math.min(m, n);
//    mat = new Array();
//    for (var col = 0; col < colcount; col++)
//        for (var row = 0; row < rowcount; row++) {
//            var i = row * colcount + col;
//            var line = new Array();
//            mat[i] = line;
//            for (var j = 0; j < n; j++) line[j] = 0;
//            line[i] = 1;
//            if (col > 0)            line[i - 1] = 1;
//            if (row > 0)            line[i - colcount] = 1;
//            if (col < colcount - 1) line[i + 1] = 1;
//            if (row < rowcount - 1) line[i + colcount] = 1;
//        }
//    cols = new Array();
//    for (var j = 0; j < np; j++) cols[j] = j;
//}
//
//function solveProblem (goal) {
//    var size = colcount * rowcount;
//    m = size;
//    n = size;
//    np = n + 1;
//    initMatrix();
//    for (var col = 0; col < colcount; col++)
//        for (var row = 0; row < rowcount; row++)
//            mat[row * colcount + col][n] = modulate(goal - cells[col][row]);
//    return sweep();
//}
//
//function sweep () {
//    for (r = 0; r < maxr; r++) {
//        if (!sweepStep()) return false; // failed in founding a solution
//        if (r == maxr) break;
//    }
//    return true; // successfully found a solution
//}
//
//function sweepStep () {
//    var i;
//    var j;
//    var finished = true;
//    for (j = r; j < n; j++) {
//        for (i = r; i < m; i++) {
//            var aij = a(i, j);
//            if (aij != 0)  finished = false;
//            var inv = invert(aij);
//            if (inv != 0) {
//                for (var jj = r; jj < np; jj++)
//                    setmat(i, jj, a(i, jj) * inv);
//                doBasicSweep(i, j);
//                return true;
//            }
//        }
//    }
//    if (finished) { // we have: 0x = b (every matrix element is 0)
//        maxr = r;   // rank(A) == maxr
//        for (j = n; j < np; j++)
//            for (i = r; i < m; i++)
//                if (a(i, j) != 0)  return false; // no solution since b != 0
//        return true;    // 0x = 0 has solutions including x = 0
//    }
//    alert("Internal error - contact the author to obtain a full solver");
//    return false;   // failed in finding a solution
//}
//
//function swap (array, x, y) {
//    var tmp = array[x];
//    array[x] = array[y];
//    array[y] = tmp;
//}
//
//function doBasicSweep (pivoti, pivotj) {
//    if (r != pivoti) swap(mat, r, pivoti);
//    if (r != pivotj) swap(cols, r, pivotj);
//    for (var i = 0; i < m; i++) {
//        if (i != r) {
//            var air = a(i, r);
//            if (air != 0)
//                for (var j = r; j < np; j++)
//                    setmat(i, j, a(i, j) - a(r, j) * air);
//        }
//    }
//}
//
//// --- document writer ---
//function createField (imgsrc, prefix) {
//    var row;
//    var col;
//    for (row = 0; row < maxrowcount; row++) {
//        for (col = 0; col < maxcolcount; col++) {
//            document.write("<IMG SRC='" + imgsrc);
//            document.write("' NAME='" + prefix + cellname(col, row));
//            document.write("' onmousedown='javascript:" + prefix);
//            document.write("operate(" + col + "," + row + ")' ");
//            document.write("ondblclick='javascript:" + prefix);
//            document.write("operate(" + col + "," + row + ")'>");
//        }
//        document.write("<BR>");
//    }
//}
