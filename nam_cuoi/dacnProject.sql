create database doanchuyennganh;
create table users(
id int not null AUTO_INCREMENT primary key,
username varchar(20),
email varchar(50),
password varchar(64)
);

alter table users
  add constraint users_UK unique (username);
-------------------------------------------------------

create table movie(
 id_Movie bigint auto_increment ,
 image varchar(80) not null,
 category_Movie varchar(50) not null ,
 name_Movie varchar(255) not null,
 time_Movie varchar(80) not null,
 content text not null,
 primary key (id_Movie)
 );
create table roles(
id int not null auto_increment,
name varchar(50) not null,
primary key(id)
);
alter table roles
  add constraint roles_UK unique (name);
create table users_roles(
user_id int not null,
role_id int not null
);

alter table users_roles
  add constraint users_roles_UK unique (user_id, role_id);

alter table users_roles
  add constraint users_roles_FK1 foreign key (user_id)
  references users (id);

alter table users_roles
  add constraint users_roles_FK2 foreign key (role_id)
  references roles (id);
---------------
insert into users(id,username,email,password) values (1,'user01','admin01@gmail.com','$2a$10$lGbMAhbgdiqrvElO7PsoNusJk76FQ7gJL6V7AxC6aSA7SvH69S9g2');
insert into users(id,username,email,password) values (2,'user02','admin02@gmail.com','$2a$10$lGbMAhbgdiqrvElO7PsoNusJk76FQ7gJL6V7AxC6aSA7SvH69S9g2');
insert into users(id,username,email,password) values (3,'user03','admin03@gmail.com','$2a$10$V21skryon4AJENe7EF5WTekYd6u31tU7dxd0NI3tZFIQGQ25HU/4m');
insert into users_roles(user_id,role_id) values(1,2);
insert into users_roles(user_id,role_id) values(2,3);
insert into users_roles(user_id,role_id) values(3,1);

insert into roles(id,name) values (1,'ROLE_ADMIN');
insert into roles(id,name) values (2,'ROLE_EDITOR');
insert into roles(id,name) values (3,'ROLE_CUSTOMER');
---------------
insert into movie(id_Movie,image,category_Movie,name_Movie,time_Movie,content) values (1,'alienoid.jpg',' Phim hành động','ALIENOID: CUỘC CHIẾN XUYÊN KHÔNG','143 phút','Năm 2022, hai người ngoài hành tinh là Guard (Kim Woo-bin) 
và Thunder sinh sống tại Trái Đất đang tìm kiếm những tù nhân vượt ngục, vốn bị họ giam giữ trong cơ thể con người. Cảnh sát Moon (So Ji-sub) vô tình trở thành đối tượng bị truy đuổi mà không rõ 
lý do. Cùng lúc đó, ở triều đại Goryeo hơn 630 năm về trước, pháp sư xui xẻo Muruk (Ryu Jun-yeol) và “cô gái bắn sấm sét” Ean (Kim Tae-ri) đang cố gắng tranh giành một thanh gươm thần huyền thoại.
 Cuộc chiến khốc liệt ấy còn có sự tham gia của hai phù thủy hắc ám là Madam Black (Yum Jung-ah) và Mr. Blue (Jo Woo-Jin), cùng kẻ đeo mặt nạ bí ẩn Jajang (Kim Eui-sung). Một cánh cổng thời gian 
 xuất hiện và mở ra sự kết nối giữa hai thời đại, tạo nên tình huống hỗn loạn chưa từng thấy.');
insert into movie(id_Movie,image,category_Movie,name_Movie,time_Movie,content) values (2,'kmst.jpg','Phim tâm lý','LIÊN MINH SIÊU THÚ DC','106 phút','Trong Liên Minh Siêu Thú DC, Siêu Cún Krypto và Superman là cặp 
bài trùng không thể tách rời, cùng sở hữu những siêu năng lực tương tự và cùng nhau chiến đấu chống lại tội phạm tại thành phố Metropolis. Khi Superman và những thành viên của Liên Minh Công Lý bị 
bắt cóc, Krypto phải thuyết phục cậu chàng Ace luộm thuộm, nàng Heo PB, Rùa Merton và Sóc Chip khai phá những sức mạnh tiềm ẩn và cùng nhau giải cứu các siêu anh hùng. “Liên Minh Siêu Thú DC” có sự 
góp giọng của bộ đôi ngôi sao nổi tiếng bậc nhất Hollywood Dwayne Johnson (lồng tiếng cho Siêu cún Krypto) và Kevin Hart (Superman). Đặc biệt, tài tử Keanu Reeves sẽ đảm nhận những câu thoại chất 
lừ đến từ Batman.');
insert into movie(id_Movie,image,category_Movie,name_Movie,time_Movie,content) values (3,'dtdd.jpg','Phim hành động','SÁT THỦ ĐỐI ĐẦU','126 phút','Ladybug (Brad Pitt) - một sát thủ lành nghề vừa trở lại sau khoảng thời 
gian nghỉ hưu. Anh nhận nhiệm vụ từ một phụ nữ bí ẩn là thu hồi chiếc vali trên chuyến tàu cao tốc ở Nhật Bảnmovie. Những tưởng đây sẽ là phi vụ dễ ăn thì một loạt biến cố ập đến. Ladybug phải đối mặt với vô số thế 
lực khác nhau trên chiếc tàu hỏa cùng nhắm vào chiếc vali kia. Đối thủ của anh lần lượt là Lemon (Brian Tyree Henry), Kimura (Andrew Koji), Hornet (Zazie Beetz), Prince (Joey King) và Tangerine (Aaron Taylor-Johnson).
 Mỗi người đều có những âm mưu và cách thức hoạt động riêng dẫn đến một cục diện vô cùng rối ren.');
insert into movie(id_Movie,image,category_Movie,name_Movie,time_Movie,content) values (4,'duc.jpg','Phim tâm lý','ĐIỀU ƯỚC CUỐI CỦA TÙ NHÂN 2037','111 phút','Ở tuổi 19, thay vì đến trường như bao bạn bè đồng trang lứa, 
Yoon-yeong phải nỗ lực hết mình để đi làm thêm kiếm tiền. Khao khát một cuộc sống tốt đẹp hơn cho mình và người mẹ khiếm thính, Yoon-yeong đặt mục tiêu thi đỗ kỳ thi công chức lên trên hết. Bất ngờ và trớ trêu thay,
 một sự cố khủng khiếp xảy ra, biến Yoon-yeong từ nạn nhân đáng thương trở thành kẻ giết người. Trong thời điểm tuyệt vọng và bất lực nhất, Yoon-yeong đã gặp những người chị em trong phòng giam số 12. Đằng sau mỗi 
 người là một câu chuyện khác nhau, nhưng họ đã trao nhau tình yêu thương và niềm hy vọng để cùng hướng về một tương lai tươi sáng ngoài song sắt nhà tù.');
insert into movie(id_Movie,image,category_Movie,name_Movie,time_Movie,content) values (5,'nh.jpg','Phim kinh dị','NHẬP HỒN','94 phút','Bộ phim dựa trên sự kiện có thật về lời nguyền gia phả tại Mardin, một thành phố thuộc Thổ Nhĩ Kỳ.');
insert into movie(id_Movie,image,category_Movie,name_Movie,time_Movie,content) values (6,'cmhd.jpg','c4','CHUYỆN MA GIẢNG ĐƯỜNG – HỌC KỲ 2','126 phút','Đến từ đạo diễn của Girl From Nowhere (tựa Việt: Cô Gái Đến Từ Hư Vô), Haunted 
Universities Second Semester (tựa Việt: Chuyện Ma Giảng Đường – Học Kỳ 2) là bộ phim dựa trên mạch truyện kinh dị lấy bối cảnh trong khuôn viên trường đại học, đề cập đến những rắc rối và nỗi bức xúc mà thanh thiếu niên 
cũng như thế hệ trẻ đang trải qua trong quá trình chuyển đổi. Lấy ý tưởng về “những bóng ma trong trường đại học”, bộ phim được xây dựng kịch bản từ 3 trong số những câu chuyện ma rùng rợn nhất có thật tại các trường đại 
học bị ma ám với cách kể chuyện mới lạ nhưng vẫn duy trì được tất cả các yếu tố kinh dị khiến Haunted Universities Second Semester (tựa Việt: Chuyện Ma Giảng Đường – Học Kỳ 2) trở nên rùng rợn theo cách riêng, vượt ra khỏi 
khuôn khổ của một câu chuyện ma quen thuộc với cách lột tả nội dung chân thực nhất liên quan sâu sắc đến xã hội ngày nay.');
insert into movie(id_Movie,image,category_Movie,name_Movie,time_Movie,content) values (7,'conan.jpg','Phim hoạt hình','THÁM TỬ LỪNG DANH CONAN: NÀNG DÂU HALLOWEEN','111 phút','Tại Shibuya náo nhiệt mùa Halloween, Thiếu úy Sato Miwako khoác lên 
mình chiếc váy cưới tinh khôi trong tiệc cưới như cổ tích, và người đàn ông bên cạnh cô không ai khác ngoài Trung sĩ Takagi Wataru. Trong giây phút trọng đại, một nhóm người xấu ập vào tấn công, Trung sĩ Takagi liều mình 
bảo vệ Sato. Anh tai qua nạn khỏi, nhưng Sato chết lặng khi nhìn thấy bóng ma Thần Chết trong giây phút sinh tử của Takagi. Điều này khiến cô nhớ lại cái chết của đồng nghiệp, cũng là người cô từng yêu trước đây, Thanh 
tra Matsuda Jinpei. Cùng lúc này, hung thủ của vụ đánh bom liên tiếp mà Matsuda điều tra năm xưa đã vượt ngục thành công. Khi Conan tìm đến Furuya Rei (hay Amuro Toru), người bạn cùng khóa với Matsuda, cậu được nghe 
câu chuyện liên quan đến vụ đánh bom với kẻ thủ ác mang bí danh "Plamya". Hôn lễ nguy hiểm nhất thế giới, buổi dạ hành đẫm máu tại Shibuya vào đêm Halloween sắp sửa bắt đầu.');
insert into movie(id_Movie,image,category_Movie,name_Movie,time_Movie,content) values (8,'minion.jpg','Phim hoạt hình','MINIONS: SỰ TRỖI DẬY CỦA GRU','88 phút','Rất lâu trước khi trở thành một phản diện chuyên nghiệp, Gru chỉ 
là một cậu bé 12 tuổi sống ở vùng ngoại ô vào những năm 1970, với ước mơ một ngày sẽ làm “bá chủ” thế giới. Và 3 “quả chuối” vàng biết đi từ trên trời rơi xuống đã là những đồng đội đầu tiên của Gru, bên cạnh ủng hộ 
cậu bé, cùng nhau thiết kế những vũ khí đầu tiên, thực hiện những phi vụ đầu tiên.');
insert into movie(id_Movie,image,category_Movie,name_Movie,time_Movie,content) values (9,'thor.jpg','PHim hành động','THOR: TÌNH YÊU VÀ SẤM SÉT','118 phút','Vốn từng là một chiến binh hùng mạnh của Asgard, trải qua vô số trận 
chiến lớn nhỏ nhưng sau sự kiện trong Avengers: Endgame (2019) cùng vô số mất mát, Thần Sấm không còn muốn theo đuổi con đường siêu anh hùng. Từ đây, anh lên đường tìm ra ý nghĩa của cuộc sống và nhìn nhận lại bản thân mình.');
insert into movie(id_Movie,image,category_Movie,name_Movie,time_Movie,content) values (10,'hckc.jpg','Phim hành động','HẠ CÁNH KHẨN CẤP','141 phút','Hạ Cánh Khẩn Cấp quy tụ dàn diễn viên đình đám bậc nhất xứ Hàn, bao gồm Song Kang-ho, Lee Byung-hun, 
Jeon Do-yeon, Kim Nam-Gil và Yim Si-wan, Park Hae-Joon. Bộ phim xoay quanh chuyến bay mang số hiệu KI501 của hãng hàng không Sky Korea, khởi hành từ sân bay quốc tế Incheon tới Honolulu, Hawaii. Không lâu sau khi máy bay cất 
cánh, một hành khách bắt đầu có những biểu hiện lạ và tử vong trước sự bàng hoàng của mọi người. Một virus lạ với tốc độ lây lan chóng mặt đã xâm nhập lên máy bay, tất cả chìm trong hỗn loạn và sợ hãi. Trong tình huống ngàn 
cân treo sợi tóc, một tuyên bố đề nghị hạ cánh khẩn cấp được đưa ra. Trên độ cao 8,534 mét, số phận của hơn 150 con người bao gồm cả các hành khách và phi hành đoàn sẽ ra sao?');
insert into movie(id_Movie,image,category_Movie,name_Movie,time_Movie,content) values (11,'mpvm.jpg','Phim hoạt hình','MÔN PHÁI VÕ MÈO: HUYỀN THOẠI MỘT CHÚ CHÓ','90 phút','Hank là chú chó đáng yêu có ước mơ trở thành một samurai vĩ đại. Trên con đường 
đi tìm định mệnh, Hank vô tình lạc vào một thị trấn đầy mèo. Và mèo thì không hề thích chó. Cũng vì mong muốn giành được tình cảm của cư dân thị trấn, Hank vô tình mắc vào âm mưu thôn tính thị trấn của tay mèo phản diện Ika Chu. 
Ika Chu đã lừa Hank giúp hắn đuổi các cư dân mèo khỏi thị trấn. Cùng với những người bạn mới quen, Hank phải tìm cách ngăn chặn âm mưu của Ika Chu và chuộc lại sai lầm của mình.');
insert into movie(id_Movie,image,category_Movie,name_Movie,time_Movie,content) values (12,'best.jpg','Phim hành động','Quái thú','113 phút','Một người cha và hai cô con gái tuổi teen của mình bị săn đuổi bởi một con sư tử khổng lồ đang rình rập tấn công họ.');
insert into movie(id_Movie,image,category_Movie,name_Movie,time_Movie,content) values (13,'jw.jpg','Phim hành động','John Wick: Chapter 4','120 phút','John Wick là một phát triển bất ngờ từ bộ phim lẻ về sát thủ báo thù với ngôi sao Keanu Reeves. 
Chapter 4 là lúc cuộc chiến nổ ra khi Jardani Jovovich đã bị dồn đến đường cùng trong phần 3: Chuẩn Bị Chiến Tranh, Hội Tối Thượng vừa có quyền vừa có tiền là thế lực bất khả chiến bại, làm cách nào để đánh bại bọn chúng? Là những mong 
đợi và tò mò của khán giả. ');
insert into movie(id_Movie,image,category_Movie,name_Movie,time_Movie,content) values (14,'bm.jpg','Phim hành động','The Batman (2022)','175 phút','"The Batman" là dự án mở màn 2022 của hãng DC được nhào nặn dưới bàn tay tài hoa của đạo diễn Matt Reeves. 
Bộ phim mới nhất của DC đã mang Batman trở về với thể loại trinh thám cốt lõi của nhân vật Người Dơi trong truyện tranh (còn được gọi là "Batman — The world Greatest Detective") và đây cũng là lần đầu tiên chúng ta được chứng kiến siêu thám tử 
Batman đi phá án trên màn ảnh rộng. ');
insert into movie(id_Movie,image,category_Movie,name_Movie,time_Movie,content) values (15,'gk.jpg','Phim tâm lý','Godzilla đại chiến Kong','113 phút','"Godzilla vs. Kong" là phần thứ tư trong loạt phim chiếu rạp MonsterVerse của Warner Bros. và Legendary. 
Bộ phim do Adam Wingard đạo diễn, có sự góp mặt của nhiều gương mặt sáng giá như Alexander Skarsgard, Millie Bobby Brown, Rebecca Hall, Brian Tyree Henry, Shun Oguri, Eiza Gonzalez và Julian Dennison');
insert into movie(id_Movie,image,category_Movie,name_Movie,time_Movie,content) values (16,'cptt.jpg','Phim kinh dị','Căn Phòng Tử Thần 2: Cái Chết Trở Lại','88 phút','Căn phòng tử thần: Cái Chết Trở Lại đưa những người từng thắng cuộc vào các căn phòng 
bị khóa kín. Hoặc họ phải tìm cách thoát ra, hoặc họ phải bỏ mạng trong đó. Ở lần trở lại này, quy mô và độ khó của căn phòng được nâng lên gấp bội, khiến các người chơi phải vận dụng cả trí óc, sức lực, tinh thần đồng đội và nhất là phải dẹp bỏ 
cảm giác hả hê để có thể sống đến giây phút cuối cùng');

