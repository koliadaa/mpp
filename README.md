Опис сутностей
Користувачі (Users): Зберігає дані про користувачів форуму, такі як ідентифікатор, ім'я, електронна пошта, пароль.
Теми (Topics): Представляє теми, які обговорюються на форумі. Містить ідентифікатор, заголовок, дату створення теми.
Пости (Posts): Зберігає вміст постів користувачів у рамках певної теми. Включає ідентифікатор, текстовий вміст, дату створення посту.
Коментарі (Comments): Містить коментарі, які користувачі залишають під постами.
Рейтинги (Ratings): Використовується для збереження даних про рейтинги та оцінки постів або коментарів.
Теги (Tags): Містить список тегів або міток, які можуть бути призначені темам або постам для категоризації.

Структура бази даних

Users:
- user_id (Primary Key)
- username
- email
- password

Topics:
- topic_id (Primary Key)
- title
- created_at

Posts:
- post_id (Primary Key)
- content
- created_at
- user_id (Foreign Key)
- topic_id (Foreign Key)

Comments:
- comment_id (Primary Key)
- content
- created_at
- user_id (Foreign Key)
- post_id (Foreign Key)

Ratings:
- rating_id (Primary Key)
- rating_value
- user_id (Foreign Key)
- post_id (Foreign Key)

Tags:
- tag_id (Primary Key)
- tag_name
