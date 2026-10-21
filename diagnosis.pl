% ---------- Facts: observed symptoms ----------
symptom(fever).
symptom(cough).
symptom(body_pain).
symptom(headache).
symptom(nausea).
symptom(stomach_pain).

% ---------- Rules: domain knowledge ----------
% A rule succeeds only when ALL of its symptom conditions are facts.
diagnosis(flu) :-
    symptom(fever),
    symptom(cough),
    symptom(body_pain).

diagnosis(cold) :-
    symptom(cough),
    symptom(runny_nose).

diagnosis(dengue) :-
    symptom(fever),
    symptom(headache),
    symptom(skin_rash).

diagnosis(migraine) :-
    symptom(headache),
    symptom(nausea),
    symptom(light_sensitivity).

diagnosis(food_poisoning) :-
    symptom(nausea),
    symptom(stomach_pain),
    symptom(vomiting).
