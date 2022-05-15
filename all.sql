select h.*, sumca, sumfb, sumng, electricity, water, annualized_er3, annualized_er14_1, annualized_er14_2, annualized_er14_3, annualized_er14_4, annualized_er14_5, annualized_er14_6, annualized_er14_7, annualized_eo4_1b, annualized_eo4_1d, annualized_ec2a, annualized_ec2b, annualized_ec2c, annualized_ec2d, annualized_fu1_3, annualized_fu1_4, annualized_fu1_5, annualized_fu1_6, annualized_fu1_7, annualized_fu2_1, annualized_ei3b, annualized_ei3c, annualized_ei3d, EI3_7B, EI3_7C, EI3_7D, annualized_em2, EM2_6B, EM2_6C, EM2_6D, sumff, sumfu3, annualized_tr2i, annualized_tr2l, annualized_tr2m, sumhe, HE5, sumtd, sumfo, annualized_td7_1b, annualized_td7_2b, annualized_fo5_1b, annualized_fo5_2b, sumto, sumts2, sumtp2, sumpt2, sumrc, sumps2, sumre, sumts2, sumft2, sumhn2, summm1, sumli3, sumhi3
from households_and_weights h
left join 
(select interview__key, annualized_er3
from household 
where valid_respondent = 1 
and annualized_er3 < 999999
) er3
on h.interview__key = er3.interview__key
left join 
(select interview__key, annualized_er14_1
from household 
where valid_respondent = 1 
and annualized_er14_1 < 999999
) er14_1
on h.interview__key = er14_1.interview__key
left join 
(select interview__key, annualized_er14_2
from household 
where valid_respondent = 1 
and annualized_er14_2 < 999999
) er14_2
on h.interview__key = er14_2.interview__key
left join 
(select interview__key, annualized_er14_3
from household 
where valid_respondent = 1 
and annualized_er14_3 < 999999
) er14_3
on h.interview__key = er14_3.interview__key
left join 
(select interview__key, annualized_er14_4
from household 
where valid_respondent = 1 
and annualized_er14_4 < 999999
) er14_4
on h.interview__key = er14_4.interview__key
left join 
(select interview__key, annualized_er14_5
from household 
where valid_respondent = 1 
and annualized_er14_5 < 999999
) er14_5
on h.interview__key = er14_5.interview__key
left join 
(select interview__key, annualized_er14_6
from household 
where valid_respondent = 1 
and annualized_er14_6 < 999999
) er14_6
on h.interview__key = er14_6.interview__key
left join 
(select interview__key, annualized_er14_7
from household 
where valid_respondent = 1 
and annualized_er14_7 < 999999
) er14_7
on h.interview__key = er14_7.interview__key
left join 
(select annualized_eo4_1b, eo4.interview__key from eo4, household
where eo4.interview__key = household.interview__key
and household.valid_respondent = 1 
and annualized_eo4_1b < 999999
GROUP by interview__key) eo4
on h.interview__key = eo4.interview__key
left join 
(select annualized_eo4_1d, eo4.interview__key from eo4, household
where eo4.interview__key = household.interview__key
and household.valid_respondent = 1 
and annualized_eo4_1d < 999999
GROUP by interview__key) eo42
on h.interview__key = eo42.interview__key
left join 
(select sum(annualized) as sumca, ca.interview__key from ca, household
where ca.interview__key = household.interview__key
and household.valid_respondent = 1 
and annualized < 999999
GROUP by interview__key) ca
on h.interview__key = ca.interview__key
left join 
(select sum(annualized) as sumfb, fb.interview__key from fb, household
where fb.interview__key = household.interview__key
and household.valid_respondent = 1 
and annualized < 999999
GROUP by interview__key) fb
on h.interview__key = fb.interview__key
left join 
(select sum(annualized) as sumng, ng1.interview__key from ng1, household
where ng1.interview__key = household.interview__key
and household.valid_respondent = 1 
and annualized < 999999
GROUP by interview__key) ng
on h.interview__key = ng.interview__key
left join(
select sum(annualized_fu1_1) as electricity, interview__key
from household
where valid_respondent = 1 
and annualized_fu1_1 != 999999
group by interview__key
) fu1 
on h.interview__key = fu1.interview__key
left join(
select sum(annualized_fu1_2) as water, interview__key
from household
where valid_respondent = 1 
and annualized_fu1_2 != 999999
group by interview__key
) fu2
on h.interview__key = fu2.interview__key
left join(
select annualized_fu1_3, interview__key
from household
where valid_respondent = 1 
and annualized_fu1_3 != 999999
group by interview__key
) fu3
on h.interview__key = fu3.interview__key
left join(
select annualized_fu1_4, interview__key
from household
where valid_respondent = 1 
and annualized_fu1_4 != 999999
group by interview__key
) fu4
on h.interview__key = fu4.interview__key
left join(
select annualized_fu1_5, interview__key
from household
where valid_respondent = 1 
and annualized_fu1_5 != 999999
group by interview__key
) fu5
on h.interview__key = fu5.interview__key
left join(
select annualized_fu1_6, interview__key
from household
where valid_respondent = 1 
and annualized_fu1_6 != 999999
group by interview__key
) fu6
on h.interview__key = fu6.interview__key
left join(
select annualized_fu1_7, interview__key
from household
where valid_respondent = 1 
and annualized_fu1_7 != 999999
group by interview__key
) fu7
on h.interview__key = fu7.interview__key
left join(
select annualized_fu2_1, interview__key
from household
where valid_respondent = 1 
and annualized_fu2_1 != 999999
group by interview__key
) fu21
on h.interview__key = fu21.interview__key
left join 
(select interview__key, annualized_ec2a
from household 
where valid_respondent = 1 
and annualized_ec2a < 999999
) ec2a
on h.interview__key = ec2a.interview__key
left join 
(select interview__key, annualized_ec2b
from household 
where valid_respondent = 1 
and annualized_ec2b < 999999
) ec2b
on h.interview__key = ec2b.interview__key
left join 
(select interview__key, annualized_ec2c
from household 
where valid_respondent = 1 
and annualized_ec2c < 999999
) ec2c
on h.interview__key = ec2c.interview__key
left join 
(select interview__key, annualized_ec2d
from household 
where valid_respondent = 1 
and annualized_ec2d < 999999
) ec2d
on h.interview__key = ec2d.interview__key
left join 
(select annualized_ei3b, ei3.interview__key 
from ei3, household
where ei3.interview__key = household.interview__key
and household.valid_respondent = 1 
and annualized_ei3b < 999999
GROUP by interview__key) ei3
on h.interview__key = ei3.interview__key
left join 
(select annualized_ei3c, ei3.interview__key 
from ei3, household
where ei3.interview__key = household.interview__key
and household.valid_respondent = 1 
and annualized_ei3c < 999999
GROUP by interview__key) ei3c
on h.interview__key = ei3c.interview__key
left join 
(select annualized_ei3d, ei3.interview__key 
from ei3, household
where ei3.interview__key = household.interview__key
and household.valid_respondent = 1 
and annualized_ei3d < 999999
GROUP by interview__key) ei3d
on h.interview__key = ei3d.interview__key
left join 
(select interview__key, EI3_7B
from household 
where valid_respondent = 1 
and EI3_7B < 99999
) EI7B
on h.interview__key = EI7B.interview__key
left join 
(select interview__key, EI3_7C
from household 
where valid_respondent = 1 
and EI3_7C < 99999
) EI7C
on h.interview__key = EI7C.interview__key
left join 
(select interview__key, EI3_7D
from household 
where valid_respondent = 1 
and EI3_7D < 99999
) EI7D
on h.interview__key = EI7D.interview__key
left join 
(select sum(annualized) as annualized_em2, em2.interview__key 
from em2, household
where em2.interview__key = household.interview__key
and household.valid_respondent = 1 
and annualized < 999999
GROUP by interview__key) em2
on h.interview__key = em2.interview__key
left join 
(select interview__key, EM2_6B
from household 
where valid_respondent = 1 
and EM2_6B < 99999
) EM2_6B
on h.interview__key = EM2_6B.interview__key
left join 
(select interview__key, EM2_6C
from household 
where valid_respondent = 1 
and EM2_6C < 99999
) EM2_6C
on h.interview__key = EM2_6C.interview__key
left join 
(select interview__key, EM2_6D
from household 
where valid_respondent = 1 
and EM2_6D < 99999
) EM2_6D
on h.interview__key = EM2_6D.interview__key
left join 
(select sum(annualized) as sumfu3, fu3.interview__key 
from fu3, household
where fu3.interview__key = household.interview__key
and household.valid_respondent = 1 
and annualized < 999999
GROUP by interview__key) fu3r
on h.interview__key = fu3r.interview__key
left join 
(select sum(annualized) as sumff, ff.interview__key 
from ff, household
where ff.interview__key = household.interview__key
and household.valid_respondent = 1 
and annualized < 999999
GROUP by interview__key) ff
on h.interview__key = ff.interview__key
left join 
(select annualized_tr2i, tr2.interview__key 
from tr2, household
where tr2.interview__key = household.interview__key
and household.valid_respondent = 1 
and annualized_tr2i < 999999
GROUP by interview__key) tr2
on h.interview__key = tr2.interview__key
left join 
(select annualized_tr2l, tr2.interview__key 
from tr2, household
where tr2.interview__key = household.interview__key
and household.valid_respondent = 1 
and annualized_tr2l < 999999
GROUP by interview__key) tr2l
on h.interview__key = tr2l.interview__key
left join 
(select annualized_tr2m, tr2.interview__key 
from tr2, household
where tr2.interview__key = household.interview__key
and household.valid_respondent = 1 
and annualized_tr2m < 999999
GROUP by interview__key) tr2m
on h.interview__key = tr2m.interview__key
left join 
(select sum(annualized) as sumhe, he3.interview__key 
from he3, household
where he3.interview__key = household.interview__key
and household.valid_respondent = 1 
and annualized < 999999
GROUP by interview__key) he3
on h.interview__key = he3.interview__key
left join 
(select interview__key, HE5
from household 
where valid_respondent = 1 
and HE5 < 99999
) HE5
on h.interview__key = HE5.interview__key
left join 
(select sum(annualized) as sumtd, td.interview__key 
from td, household
where td.interview__key = household.interview__key
and household.valid_respondent = 1 
and annualized < 999999
GROUP by interview__key) td
on h.interview__key = td.interview__key
left join 
(select sum(annualized) as sumfo, fo.interview__key 
from fo, household
where fo.interview__key = household.interview__key
and household.valid_respondent = 1 
and annualized < 999999
GROUP by interview__key) fo
on h.interview__key = fo.interview__key
left join 
(select interview__key, sum(annualized_td7_1b) as annualized_td7_1b
from individual
where valid_respondent = 1 
and annualized_td7_1b < 99999
GROUP by interview__key
) td7b
on h.interview__key = td7b.interview__key
left join 
(select interview__key, sum(annualized_td7_2b) as annualized_td7_2b
from individual
where valid_respondent = 1 
and annualized_td7_2b < 99999
GROUP by interview__key
) td7b2
on h.interview__key = td7b2.interview__key
left join 
(select interview__key, sum(annualized_fo5_2b) as annualized_fo5_2b
from individual
where valid_respondent = 1 
and annualized_fo5_2b < 99999
GROUP by interview__key
) fo51
on h.interview__key = fo51.interview__key
left join 
(select interview__key, sum(annualized_fo5_1b) as annualized_fo5_1b
from individual
where valid_respondent = 1 
and annualized_fo5_1b < 99999
GROUP by interview__key
) fo52
on h.interview__key = fo52.interview__key
left join 
(select sum(annualized) as sumto, `to`.interview__key 
from `to`, household
where `to`.interview__key = household.interview__key
and household.valid_respondent = 1 
and annualized < 999999
GROUP by interview__key) `to`
on h.interview__key = `to`.interview__key
left join 
(select sum(annualized) as sumts2, ts2.interview__key 
from ts2, household
where ts2.interview__key = household.interview__key
and household.valid_respondent = 1 
and annualized < 999999
GROUP by interview__key) ts2
on h.interview__key = ts2.interview__key
left join 
(select sum(annualized) as sumtp2, tp2.interview__key 
from tp2, household
where tp2.interview__key = household.interview__key
and household.valid_respondent = 1 
and annualized < 999999
GROUP by interview__key) tp2
on h.interview__key = tp2.interview__key
left join 
(select sum(annualized) as sumpt2, pt2.interview__key 
from pt2, household
where pt2.interview__key = household.interview__key
and household.valid_respondent = 1 
and annualized < 999999
GROUP by interview__key) pt2
on h.interview__key = pt2.interview__key
left join
(select sum(annualized) as sumrc, rc.interview__key 
from rc, household
where rc.interview__key = household.interview__key
and household.valid_respondent = 1 
and annualized < 999999
GROUP by interview__key) rc
on h.interview__key = rc.interview__key
left join
(select sum(annualized) as sumps2, ps2.interview__key 
from ps2, household
where ps2.interview__key = household.interview__key
and household.valid_respondent = 1 
and annualized < 999999
GROUP by interview__key) ps2
on h.interview__key = ps2.interview__key
left join
(select sum(annualized) as sumre, re.interview__key 
from re, household
where re.interview__key = household.interview__key
and household.valid_respondent = 1 
and annualized < 999999
GROUP by interview__key) re
on h.interview__key = re.interview__key
left join
(select sum(annualized) as sumlt2, lt2.interview__key 
from lt2, household
where lt2.interview__key = household.interview__key
and household.valid_respondent = 1 
and annualized < 999999
GROUP by interview__key) lt2
on h.interview__key = lt2.interview__key
left join
(select sum(annualized) as sumft2, ft2.interview__key 
from ft2, household
where ft2.interview__key = household.interview__key
and household.valid_respondent = 1 
and annualized < 999999
GROUP by interview__key) ft2
on h.interview__key = ft2.interview__key
left join
(select sum(annualized) as sumhn2, hn2.interview__key 
from hn2, household
where hn2.interview__key = household.interview__key
and household.valid_respondent = 1 
and annualized < 999999
GROUP by interview__key) hn2
on h.interview__key = hn2.interview__key
left join
(select sum(annualized) as summm1, mm1.interview__key 
from mm1, household
where mm1.interview__key = household.interview__key
and household.valid_respondent = 1 
and annualized < 999999
GROUP by interview__key) mm1
on h.interview__key = mm1.interview__key
left join
(select sum(annualized) as sumli3, li3.interview__key 
from li3, household
where li3.interview__key = household.interview__key
and household.valid_respondent = 1 
and annualized < 999999
GROUP by interview__key) li3
on h.interview__key = li3.interview__key
left join
(select sum(hi3c) as sumhi3, hi3.interview__key 
from hi3, household
where hi3.interview__key = household.interview__key
and household.valid_respondent = 1 
and hi3c < 999999
GROUP by interview__key) hi3
on h.interview__key = hi3.interview__key





