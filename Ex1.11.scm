;;;;SICP Exercise 1.11
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

(define (f-recur n)
  (if (< n 3)
      n
      (+
       (f-recur(- n 1))
       (* 2 (f-recur (- n 2)))
       (* 3 (f-recur (- n 3))))))


;;; this iterative version was a pain. I had to look it up. I had to read about five explanations before I figured out how it worked.
(define (f-iter n)
  (if (< n 3)
      n
      (f-tail 2 1 0 n)))

(define (f-tail a b c cnt)
  (if (< cnt 3)
      a
      (f-tail (+ a (* 2 b) (* 3 c))
	      a
	      b
	      (- cnt 1))))
      
