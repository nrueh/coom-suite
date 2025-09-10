#const required_tflops=100.
#const max_gpu = 3.
% #const homogeneous=true. % homogeneous vs heterogeneous clusters
% power consumption

gpu(1..max_gpu).

vendor(nvidia;amd;intel).
model(a;b;c).

tflops((nvidia,a),30). tflops((nvidia,b),50). tflops((nvidia,c),40).
tflops((amd,a),20).    tflops((amd,b),30).    tflops((amd,c),25).
tflops((intel,a),10).  tflops((intel,b),15).  tflops((intel,c),12).

price((nvidia,a),300). price((nvidia,b),480). price((nvidia,c),390).
price((amd,a),220).    price((amd,b),280).    price((amd,c),240).
price((intel,a),120).  price((intel,b),160).  price((intel,c),130).

% software

{ include(G) : gpu(G) }.
:- include(I), not include(I-1), I > 1.

{ value((G,vendor),V) : vendor(V) } = 1 :- include(G).
{ value((G,model),V)  : model(V) } = 1  :- include(G).

% value((G,tflops),F) :- gpu(G), value((G,vendor),V), value((G,model),M), tflops(V,M,F).
% value((G,price),P) :- gpu(G), value((G,vendor),V), value((G,model),M), price(V,M,P).
&sus{ F } =: (G,tflops)  :- include(G), value((G,vendor),V), value((G,model),M), tflops((V,M),F).
&sus{ F } =: (G,price)   :- include(G), value((G,vendor),V), value((G,model),M), price((V,M),F).

#show include/1.
#show value/2.

% &show{ (G,tflops) : gpu(G) }.
% &show{ (G,price)  : gpu(G) }.

&sum{ (G,tflops) : include(G) } = total_tflops.
&sum{ (G,price)  : include(G) } = total_price.

:- &sum{required_tflops} > total_tflops.
