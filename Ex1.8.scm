;;;;SICP Exercise 1.8
;;;;
;;;;Copyright 2018, SpaceBudokan
;;;;This program is free software: you can redistribute it and/or modify
;;;;it under the terms of the GNU General Public License as published by
;;;;the Free Software Foundation, either version 3 of the License, or
;;;;(at your option) any later version.
;;;;This program is distributed in the hope that it will be useful,
;;;;but WITHOUT ANY WARRANTY; without even the implied warranty of
;;;;MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;;;;GNU General Public License for more details.
;;;;
;;;;You should have received a copy of the GNU General Public License
;;;;along with this program.  If not, see <http://www.gnu.org/licenses/>.
#lang sicp

(define (cbrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (cbrt-iter (improve guess x) x)))

(define (improve guess x)
  (average guess (/
		  (+
		   (/ x (* guess guess))
		   (* 2 guess))
		  3)))

(define (average x y)
  (/ (+ x y) 2))

(define (cbrt x)
  (cbrt-iter 1.0 x))

(define (good-enough? guess x)
  (<
   (*
    (/
     (abs (- guess (improve guess x)))
     guess)
    100)
   0.01))
