--declare 
--    m_id number;
--begin
--    select count(*) into m_id from merchandise;
--end;
--print m_id;
--
--insert into merchandise 
--    (
--    merch_id,
--    merch_kind_id,
--    year_made,
--    merch_name,
--    performer,
--    music_genre_id,
--    company,
--    unit_price
--    )
--values
--    (
--    &merch_id,
--    &merch_kind_id,
--    to_date(&year_made, 'YYYY'),
--    &merch_name,
--    &performer,
--    &music_genre_id,
--    &company,
--    &unit_price
--    );
--    
--    
select 
    m.merch_id,
    m.year_made,
    m.merch_name,
    m.performer,
    mg.music_genre_name,
    m.company,
    mk.merch_kind_name,
    m.unit_price
from merchandise m
join merch_kind mk on mk.merch_kind_id = m.merch_kind_id
join music_genres mg on mg.music_genre_id = m.music_genre_id
where 
    mk.merch_kind_name = 'CD' or mk.merch_kind_name = 'DVD' and 
having (TO_char(to_date(m.year_made, 'YYYY')) = to_char(&year))
order by m.merch_id;


















