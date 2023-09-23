create index idx_teacher_id on courses (teacher_id);
create index idx_course_id on classes (course_id);
create index idx_course_id_announcements on announcements (course_id);
create index idx_submission_class_id on submissions (class_id);