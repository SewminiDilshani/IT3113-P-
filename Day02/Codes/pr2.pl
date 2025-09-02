% Parent relationships
parent(tom,bob).
parent(pam,bob).
parent(tom,liz).
parent(bob,ann).
parent(bob,pat).
parent(pat,jim).

% Female members
female(pam).
female(liz).
female(pat).
female(ann).

% Male members
male(tom).
male(bob).
male(jim).

% 1] Define the relation mother using parent and female
mother(X,Y):-parent(X,Y),female(X).

% 2] Define the relation father using parent and male
father(X,Y):- parent(X,Y), male(X).

% 3] Define the relation sister using parent and female
sister(X,Y):- parent(Z,X), parent(Z,Y), female(X), X \== Y.

% 4] Define the relation brother using parent and male
brother(X,Y):- parent(Z,X), parent(Z,Y), male(X), X \== Y.

% 5] Define the relation grandparent using parent
grandparent(X,Y):- parent(X,Z), parent(Z,Y).

% 6] Define the relation grandfather using parent and male
grandfather(X,Y):- parent(X,Z), parent(Z,Y), male(X).

% 7] Define the relation grandmother using parent and female
grandmother(X,Y):- parent(X,Z), parent(Z,Y), female(X).

% 8] Define the relation grandchild using parent
grandchild(X,Y):- parent(Y,Z), parent(Z,X).

% 9] Define the relation grandson using parent and male
grandson(X,Y):- parent(Y,Z), parent(Z,X), male(X).

% 10] Define the relation granddaughter using parent and female
granddaughter(X,Y):- parent(Y,Z), parent(Z,X), female(X).
% 11] Everybody who has a child is happy
happy(X):- parent(X,_).

% 12] For all X, if X has a child who has a sister then X has 2 children
twochi(X):- parent(X,Y), parent(X,Z), Y \== Z.

% 13] Define the relation aunt(X,Y) in terms of parent and sister
aunt(X,Y):- parent(Z,Y), sister(X,Z).

% 14] Define the relation uncle using the appropriate relations
uncle(X,Y):- parent(Z,Y), brother(X,Z).













