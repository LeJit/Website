+++
date = "2017-04-01 00:05:15 -0400"
title = "Revisiting Euler's Formula"
tags = ["math"]
highlight = true
math = true
draft = false

[header]
  caption = "Math"
  image = "headers/mathML.jpg"
+++



In AP Calculus, my teacher introduced me to Euler's formula,
and he proved this equality by breaking up the Taylor Series representation of the exponential function into the Taylor Series of cosine and sine. This algebraic proof is simple, and I've included it below for readers who are not familiar with it:

$$e^{ix} = \sum_{n=0} ^{\infty} \dfrac{(ix)^n}{n!} = \dfrac{(ix)^0}{0!} + \dfrac{ix}{1!} + ... + \dfrac{(ix)^n}{n!} + ..$$

We can split this series into two summations, one for the odd  terms and the other for evens.

$$=\sum_{n=0} ^{\infty} \dfrac{(ix)^{2n}}{(2n)!}+\sum ^{\infty} _{m=0} \dfrac{(ix)^{2m+1}}{(2m+1)!}$$ 

Using the fact that $i^2 = -1$, we can re-write $i^{2n} = (i^2)^n = (-1)^n$ and $i^{2n+1} = i^{2n} * i =  i(-1)^n$, so the above two summations become

$$=\sum_{n=0} ^{\infty} \dfrac{(-1)^n(x)^{2n}}{(2n)!}+i\sum ^{\infty} _{m=0} \dfrac{(-1)^m(x)^{2m+1}}{(2m+1)!}$$ 

In our calculus class, we learned that $\cos(x) =  \sum _{n=0} ^{\infty} \dfrac{(-1)^n (x)^{2n}}{(2n)!}$ 
and  $\sin(x) = \sum ^{\infty} _{n=0} \dfrac{(-1)^n (x)^{2n+1}}{(2n+1)!}$, so this means

$$e^{ix} = \sum_{n=0} ^{\infty} \dfrac{(-1)^n (x)^{2n}}{(2n)!} + i\sum ^{\infty} _{n=0} \dfrac{(-1)^n (x)^{2n+1}}{(2n+1)!} = \cos(x) + i\sin(x)$$

Like many other calculus students, I fell in love with this formula, and for many years, I cited this formula as my favorite example of mathematical beauty; that such as concise formula could arise relating the exponential function to simple trigonometric functions.

However, five years later and after many rigorous proof-based math courses, I look back on this proof and realize how abysmal it is. Why does the exponential function, which is strictly positive and monotonically increasing over the real numbers, lose all of these properties when defined over imaginary numbers? What does it mean to raise something to the $i$th power?

In this post, I aim not to provide a more rigorous proof of Euler's formula, but rather I seek to explain how I developed some mathematical intuition behind this famous formula.

Before we can talk about complex numbers, we must develop some intuition about the number **i**. Well, let's think about why the irrational numbers were discovered. Suppose we have a right triangle with both sides being length 1. By the Pythagorean theorem, we know the hypothenuse is of length $x$ such that $x^2 = 2$.  We can extend this question and ask "Is there some number **x** such that  x<sup>2</sup> = 3; How about x<sup>2</sup> = 5?". 

Let's go in the other direction and ask "Can we find an **x** such that $\textbf{x}^2 $ = -1?". To solve this problem, we define the number **i** such that $\textbf{i} ^2 $ = -1. After we have defined **i**, we can define a complex number **z** of the form **z** = a + b**i** for any real numbers a,b.
We commonly refer to $a$ as the $\textit{real}$ component of **z**, and $b\textbf{i}$ as the imaginary component of **z**. This allows us to refer to the complex number **z** as the tuple (a,b). Hopefully, this tuple looks familiar to you because we use the same notation to denote a point in 2D space, $\mathcal{R}^2$, where each element of this set is commonly expressed in the form (x,y). Because of this, we can visualize complex numbers as points in 2D space in which the x-axis denotes the real component $a$ and the y-axis denotes the imaginary component $b$.

To perform multiplication using complex numbers, we just apply FOIL. For two complex numbers $(a + bi)$ and $(c + di)$, the product $(a+bi)(c+di) = ac + adi + cbi + bdi^2 = (ac - bd) + (ad + bc)i$. From this, we see that multiplying a complex number by $i$ yields $i*(a+bi) = -b + ai$.

As an aside for the more mathematically interested reader, this connection to $R^2$ follows from a more mathematically rigorous motivation for the complex numbers. The real numbers $\mathcal{R}$ form an algebraic field, so one would naturally try to extend this field structure to $\mathcal{R}^2$. As stated above, elements of $\mathcal{R}^2$ are expressed by the tuple (x,y) for $x,y \in \mathcal{R}$. While addition extends as expected to $\mathcal{R}^2$, meaning $(x_1, y_1) + (x_2, y_2) = (x_1 + x_2, y_1 + y_2)$, we run into a problem when trying to extend multiplication as expected. If we tried to define multiplication in $\mathcal{R}^2$ as $(x_1, y_1)$$(x_2, y_2)$ = $(x_1 x_2, y_1 y_2)$, we run into the problem where many ordered pairs do not exhibit unique multiplicative inverses. For example, what ordered pair $(x,y)$ would I multiply with $(2,3)$ such that $(2,3)*(x,y) = (1,0)$? Is it different from the ordered pair I would I multiply with $(2,4)$ to get $(1,0)$? Because both these ordered pairs have a multiplicative inverse of $(\dfrac{1}{2}, 0)$, the multiplicative inverse is not unique. While the requirement that the multiplicative inverse is unique is not a field axiom, [it is trivial to prove that this must be true in any field](https://proofwiki.org/wiki/Multiplicative_Inverse_is_Unique).

We can now begin to reason about the behavior of $e^{ix}$ by visualizing a particle moving along a path in $\mathcal{R}^2$. For convinience, I will refer to the function as $e^{it}$ to denote the motion of the particle as a function of time. Now, we have the location of the particle $x(t) = e^{it}$ for $t \in \mathcal{R}$, and $x(t) = (a,b) \in \mathcal{C}$. Now, we will derivative of this function $v(t) = \dfrac{dx}{dt} = ie^{it}$. Because $x(t) = e^{it}$, $v(t)$ can be expressed as $v(t) = i*x(t)$. 

Now our particle can begin its journey. At time $t = 0$, the particle's location is $x(0) = e^{i*0} = e^{0} = 1$. In our coordinate systems, this point is represented as (1, 0). At time $t = 0$, the particle's velocity is $v(t) = i*x(0) = i*1 = i$. In our coordinate system, the velocity vector points in the (0,1) direction. 

Using Newtonian approximation, we can estimate the particle's location after some time $\epsilon$ has passed. Recall from your calculus course, Newtonian approximates $f(y)$ as $f(y)$ = $f(x)$ + $f'(x)$$(y-x)$ for some known $f(x)$ and $f'(x)$. Similarly, we can approximate $x(\epsilon)$ = $x(0)$ + $v(0)(\epsilon - 0)$ = $1 + \epsilon i$, so the particle is at point (1, $\epsilon$). Now the derivative at this time can be calculated as $v(\epsilon) = i*(1 + \epsilon i) = - \epsilon + 1i$.

We can repeat this process for timesteps of size $\epsilon$ to trace out the path of the particle. I have included Python code below to trace out the path of the particle.

```python
import cmath

epsilon = Math.PI/1000
x = 1 + 0j #Starting position at t = 0
positions = [x] #Array containing initial position
for i in xrange(2000): 
    x = x + x*epsilon*1j 
    positions.append(x)
derivatives = map(lambda x:  x*1j, positions)
```
Now we can plot the path of the particle along with the derivative at each position. Below I have plotted the particle's position and corresponding derivative vector for every 100 timesteps. 

![Derivative Plot](/img/Euler.png)

We see the particle's path traces out the circular shape we expect, but we also notice another interesting feature. At each step, the particle's derivative vector is perpendicular to the location. Because the derivative is just the location multiplied by $i$, multiplying by $i$ must have the property of inducing a ninty-degrees rotation. Let's explore whether this is true.

From earlier, we represented complex numbers using the ordered pair (a,b). If you recall from your trigonometry course, we can convert points from rectangular coordinates (x,y) to polar coordinates (r, $\theta$) using the transformation $x = r \cos(\theta)$ and $y = r \sin(\theta)$. This means we can represent complex numbers (a,b) as (r, $\theta$) where $a = \cos(\theta)$ and $ b = r \sin(\theta)$, so therefore $a + bi = r\cos(\theta) + r\sin(\theta) i$. If we multiply $(r\cos(\theta) + r\sin(\theta) i)$ by $i$, we get $$i*(r\cos(\theta) + r\sin(\theta) i) = -r \sin(\theta) + r \cos(\theta) i$$.

Two nice properties of $\sin$ and $\cos$ are:

$$
\sin(\theta + \frac{\pi}{2}) = \cos(\theta)
$$
$$
\cos(\theta + \frac{\pi}{2}) = -\sin(\theta)
$$

Now we see that if we rotate the point $(r \cos(\theta), r \sin(\theta))$ by ninty degrees, we get $(-r\sin(\theta), r\cos(\theta))$. This is the same thing we got when we multiplied the point by $i$. Therefore, our intuition is correct that multiplying by $i$ induces a ninty degrees rotation. Furthermore, we can derive the insight that $$e^{it} = a + bi = r\cos(\theta) + r\sin(\theta) i \Rightarrow e^{it} = r\cos(\theta) + r\sin(\theta) i $$. Therefore, the interesting result about Euler's formula is not that $e^{it}$ can be expressed in terms of $\sin$ and $\cos$, but rather the function maintains a constant radius of 1.

As I stated earlier, the goal of this post is not to provide a rigorous proof of Euler's formula but rather provide some insight as to why this formula is true. I decided on this topic for my first post because it was something that I have been thinking about for a while, and by reflecting on how my thoughts on this formula changed, I gained insight as to how I evolved as a mathematician. I have included below the code that I used to plot the complex numbers and their corresponding vectors for anyone who wishes to play around with complex numbers.

```python
def plotComplexPointsAndVectors(locations, derivatives):
      X,Y = zip(*map(lambda x: (x.real, x.imag), locations))
      U,V = zip(*map(lambda x: (x.real, x.imag), derivatives))
      plt.plot(X,Y, "ro-", label="python")
      limit = np.max(np.ceil(np.absolute(points)))
      plt.xlim((-limit, limit))
      plt.ylim((-limit, limit))
      plt.xlabel("Real")
      plt.ylabel("Imaginary")
      plt.quiver(X,Y,U,V, linewidths = 2)
      plt.show()
```