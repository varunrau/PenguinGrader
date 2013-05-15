PenguinGrader
=============

Some classes at Berkeley use a grading system called Pandagrader. It is a really nice system for graders to grade exams so students can see exactly how well they did.

Unfortunatley, some of my EE TAs had some trouble getting started with it, so I decided to create a more efficient and time-effective solution for my final project in EE40 (Intro to Microelectronics). I call it PenguinGrader.

Effectively, it measures your EEG when you are looking at a picture of a student. From this reading, it determines their most likely grade. A single TA can grade every student in a matter of minutes!

There was one optimization that I made. I knew that the only person using this would be my EE professor (something about not sticking electrodes on students or whatever). I already had a pertty accurate probability distribution of grades. So the optimization was just to give everyone Fs.

All in all, it turned out pretty well.
