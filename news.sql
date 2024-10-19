CREATE TABLE news (
  id int NOT NULL,
  title nvarchar(50)  NOT NULL,
  description nvarchar(MAX) NOT NULL,
  content nvarchar(MAX) NOT NULL
) 
INSERT INTO news (id, title, description, content) VALUES
(1, 'Title 1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed rutrum ex sed lacus suscipit, a gravida turpis efficitur.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed rutrum ex sed lacus suscipit, a gravida turpis efficitur. Phasellus lorem magna, sollicitudin laoreet mollis eget, semper in ligula. Ut condimentum maximus urna, sit amet posuere est malesuada ut. Sed efficitur aliquet eros, ut hendrerit nulla condimentum ac. Nullam mattis ligula eros, eu porta dui malesuada eu. Sed sem ante, dignissim tempor facilisis eu, ultrices at erat. Duis vel nibh vestibulum, lobortis urna eu, interdum eros. Suspendisse ut elementum urna. Quisque vel sollicitudin tortor, non malesuada nunc.'),
(2, 'Title 2', 'In ullamcorper sem enim, at faucibus ante hendrerit vel. In ultrices commodo nibh, tristique imperdiet metus. Maecenas dictum enim ac dignissim scelerisque.', 'In ullamcorper sem enim, at faucibus ante hendrerit vel. In ultrices commodo nibh, tristique imperdiet metus. Maecenas dictum enim ac dignissim scelerisque. Nullam vulputate scelerisque auctor. Curabitur vel fringilla lorem. Proin sed tempus felis. Vestibulum purus tellus, laoreet non neque et, rutrum suscipit lorem. Nunc ut nulla sit amet augue malesuada aliquam eget accumsan justo. Etiam sed varius nisi. Mauris elementum maximus semper. Mauris arcu dolor, hendrerit et urna et, vestibulum feugiat sapien. Sed mattis ornare erat, eu viverra libero gravida quis.'),
(3, 'Title 3', 'Proin massa eros, ornare sit amet est et, lobortis viverra nulla.', 'Proin massa eros, ornare sit amet est et, lobortis viverra nulla. Etiam porttitor turpis ullamcorper ex tristique, ut dapibus sapien bibendum. Duis tincidunt, ex in egestas.');
ALTER TABLE news
  ADD PRIMARY KEY (id);