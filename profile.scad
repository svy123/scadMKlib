/*
 * Profile library.
 * 
 * by Michal Kobylecki, 2017
 * Licenced under GPLv3 or later
 *
 */
include <basic.scad>
 
module profile_I(a,g,l,mat=aluminum) {
/*
* a - profile x dimension 
* g - profile thickness
* l - profile lenght
* mat - profile material
*/
    color(mat)
    linear_extrude( height = l ) {
        polygon(
            points = [
                [0,0],
                [a,0],
                [a,g],
                [0,g]
            ],
            paths = [
                [0,1,2,3],
            ]
        );
    }
}
module profile_L(a,b,g,l,mat=aluminum) {
/*
* a - profile x dimension 
* b - profile y dimension
* g - profile thickness
* l - profile lenght
* mat - profile material
*/
    color(mat)
    linear_extrude( height = l ) {
        polygon(
            points = [
                [0,0],
                [a,0],
                [a,g],
                [g,g],
                [g,b],
                [0,b]
            ],
            paths = [
                [0,1,2,3,4,5],
            ]
        );
    }
}
module profile_C(a,b,g,l,mat=aluminum) {
/*
* a - profile x dimension 
* b - profile y dimension
* g - profile thickness
* l - profile lenght
* mat - profile material
*/
    color(mat)
    linear_extrude( height = l ) {
        polygon(
            points = [
                [0,0],
                [a,0],
                [a,g],
                [g,g],
                [g,b-g],
                [a,b-g],
                [a,b],
                [0,b]
            ],
            paths = [
                [0,1,2,3,4,5,6,7],
            ]
        );
    }
}
module profile_H(a,b,g,l,mat=aluminum) {
/*
* a - profile x dimension 
* b - profile y dimension
* g - profile thickness
* l - profile lenght
* mat - profile material
*/
    color(mat)
    linear_extrude( height = l ) {
        polygon(
            points = [
                [0,0],
                [a,0],
                [a,g],
                [(a/2)+(g/2),g],
                [(a/2)+(g/2),b-g],
                [a,b-g],
                [a,b],
                [0,b],
                [0,b-g],
                [(a/2)-(g/2),b-g],
                [(a/2)-(g/2),g],
                [0,g]
            ],
            paths = [
                [0,1,2,3,4,5,6,7,8,9,10,11],
            ]
        );
    }
}
module profile_T(a,b,g,l,mat=aluminum) {
/*
* a - profile x dimension 
* b - profile y dimension
* g - profile thickness
* l - profile lenght
* mat - profile material
*/
    color(mat)
    linear_extrude( height = l ) {
        polygon(
            points = [
                [0,0],
                [a,0],
                [a,g],
                [(a/2)+(g/2),g],
                [(a/2)+(g/2),b],
                [(a/2)-(g/2),b],
                [(a/2)-(g/2),g],
                [0,g]
            ],
            paths = [
                [0,1,2,3,4,5,6,7],
            ]
        );
    }
}
module profile_O(a,b,g,l,mat=aluminum) {
/*
* a - profile x dimension 
* b - profile y dimension
* g - profile thickness
* l - profile lenght
* mat - profile material
*/
    color(mat)
    linear_extrude( height = l ) {
        polygon(
            points = [
                [0,0],
                [a,0],
                [a,b],
                [0,b],
                [g,g],
                [a-g,g],
                [a-g,b-g],
                [g,b-g]
            ],
            paths = [
                [0,1,2,3],[4,5,6,7],
            ]
        );
    }
}
module pipe(r,g,l,mat=aluminum) {
/*
* r - pipe external radius 
* g - pipr thickness
* l - pipe lenght
* mat - pipe material
*/
    color(mat)
    linear_extrude( height = l ) {
        difference() {
            circle(r);
            circle(r-g);
        }
    }
}
module pipe(r,g,l,mat=aluminum) {
/*
* r - pipe external radius 
* g - pipr thickness
* l - pipe lenght
* mat - pipe material
*/
    color(mat)
    linear_extrude( height = l ) {
        difference() {
            circle(r);
            circle(r-g);
        }
    }
}
module rod(r,l,mat=aluminum) {
/*
* r - rod radius 
* l - rod lenght
* mat - rod material
*/
    color(mat)
    linear_extrude( height = l ) {
        circle(r);
    }
}