/*Because I was absent from class on this day I did not work in a group,
so I chose one of the three queries to modify by myself*/

/*1. Find find warfarin to find individuals on warfarin for the first time*/
SELECT person_id,min(drug_exposure_start_date),max_levels_of_separation, c.*
FROM drug_exposure,concept_ancestor ca, concept c
WHERE ca.ancestor_concept_id = 1310149 /* Warfarin */
	AND ca.descendant_concept_id = c.concept_id
GROUP BY person_id;
ORDER BY max_levels_of_separation;
