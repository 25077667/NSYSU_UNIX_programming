cat ~/O/$* &>~/X || (echo "I do not know what that is." | tee ~/.DORPING)
cat ~/O/$* &>~/X && (cat ~/I/$* &>~/X || (echo "You do not have that." | tee ~/.DROPING))
cat ~/.DROPING &>~/X && exit;
((mv ~/I/`(expr $* "==" emerald) && echo "emerald bracelet"` . 2>~/X) || (mv ~/I/`(expr $* "==" bracelet) && echo "emerald bracelet"` . 2>~/X) || (mv ~/I/`(expr $* "==" card) && echo "card cpu board"` . 2>~/X) || (mv ~/I/`(expr $* "==" cpu) && echo "card cpu board"` . 2>~/X) || (mv ~/I/`(expr $* "==" board) && echo "card cpu board"` . 2>~/X) || mv ~/I/$* . ) || echo "Done."
