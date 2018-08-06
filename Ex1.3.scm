;;SICP Exercise 1.3
;;
;;Copyright 2018, SpaceBudokan
;;This program is free software: you can redistribute it and/or modify
;;it under the terms of the GNU General Public License as published by
;;the Free Software Foundation, either version 3 of the License, or
;;(at your option) any later version.
;;This program is distributed in the hope that it will be useful,
;;but WITHOUT ANY WARRANTY; without even the implied warranty of
;;MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;;GNU General Public License for more details.
;;
;;You should have received a copy of the GNU General Public License
;;along with this program.  If not, see <http://www.gnu.org/licenses/>.

(define (square-and-sum x y)
  (+
   (* x x)
   (* y y)))
(define (ex1.3 a b c)
  (cond
   ((and (>= a c) (>= b c)) (square-and-sum a b))
   ((and (>= a b) (>= c b)) (square-and-sum a c))
   ((and (>= b a) (>= c a)) (square-and-sum b c))))
