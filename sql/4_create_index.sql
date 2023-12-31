create index idx_teacher_id on courses (teacher_id);
create index idx_course_id on classes (course_id);
create index idx_annonecement_id on unread_announcements (announcement_id, is_deleted);
create index idx_user_id on unread_announcements (user_id, is_deleted);
create index idx_id_announcements on announcements (id desc);
create index idx_course_id_announcements on announcements (course_id);
create index idx_submission_class_id on submissions (user_id, class_id);
create index idx_course_id_registrations on registrations (course_id);
create index idx_user_id_registrations on registrations (user_id);