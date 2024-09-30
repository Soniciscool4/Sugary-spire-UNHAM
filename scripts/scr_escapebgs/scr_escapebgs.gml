function scr_escapebgs() //scr_escapebgs
{
    if (global.panic && global.lvldesign == 0)
    {
        layer_change_background(bg_waferback1, bgwafer_escape2)
        layer_change_background(bg_waferback2, bgwafer_escape1)
        layer_change_background(bg_waferclouds, bgwafer_escape3)
        layer_change_background(bg_wafersun, bgwafer_escape4)
        layer_change_background(bg_wafersky, bgwafer_escape5)
        layer_change_background(bg_entryway2_sky, bg_entrywaynightsky)
        layer_change_background(bg_entryway2_clouds, bg_entrywayescapeclouds)
        layer_change_background(bg_entryway2_buildings, bg_escapebuildingsentryway)
        layer_change_background(bg_entryway2_buildings2, bg_escapebuildingsentryway2)
        layer_change_background(bg_entryway2_sun, bg_entrywayescapemoon)
        layer_change_background(bg_entryway2_skyNEW, bg_entrywaynightsky)
        layer_change_background(bg_entryway2_cloudsNEW, bg_entrywayescapeclouds)
        layer_change_background(bg_entryway2_buildingsNEW, bg_escapebuildingsentryway)
        layer_change_background(bg_entryway2_buildings2NEW, bg_escapebuildingsentryway2)
        layer_change_background(bg_entryway2_sunNEW, spr_null)
        layer_change_background(bg_entryway2_clouds2NEW, spr_null)
        layer_change_background(entryway_endroombg1, entryway_endroomescape1)
        layer_change_background(entryway_endroombg2, entryway_endroomescape2)
        layer_change_background(entryway_endroombg3, entryway_endroomescape3)
        layer_change_background(entryway_endroombg4, entryway_endroomescape4)
        layer_change_background(entryway_endroombg5, entryway_endroomescape5)
        layer_change_background(back, sky_esc_back)
        layer_change_background(steamybg1, sky_esc_back2)
        layer_change_background(clock, sky_esc_screaming_front_cakes)
        layer_change_background(ship, sky_esc_screaming_ships)
        layer_change_background(steamybg5, sky_esc_screaming_smiling_cakes)
        layer_change_background(steamybg4, steamybg4_escape)
        layer_change_background(steamybg3, steamybg3_escape)
        layer_change_background(bgsky2main2, sky_esc_screaming_cakes)
        layer_change_background(cl1, sky_esc_screaming_clouds)
        layer_change_background(cl2, sky_esc_screaming_clouds)
        layer_change_background(nextsky, bg_steamyparkescape)
        layer_change_background(bg_clock1, bg_clock1_escape)
        layer_change_background(bg_clockparallax1, bg_clockparallaxescape)
        layer_change_background(spr_clockparallax2, spr_clockparallax2_escape)
        layer_change_background(bg_clockend_1, bg_clockend_1escape)
        layer_change_background(bg_clockend_2, bg_clockend_2escape)
        layer_change_background(bg_clockend_3, bg_clockend_3escape)
        layer_change_background(spr_parkparrallaxtogethernewest, spr_parkparrallaxtogetherpanic)
        layer_change_background(spr_molassesbgpara1, spr_molassesbgpara1_escape)
        layer_change_background(spr_molassesbgpara2, spr_molassesbgpara2_escape)
        layer_change_background(spr_molassesbgpara3, spr_molassesbgpara3_escape)
        layer_change_background(spr_molassesbgpara5, spr_molassesbgpara5_escape)
        layer_change_background(bg_temple2_1, bg_temple2_1Escape)
        layer_change_background(bg_temple2_2, bg_temple2_2Escape)
        layer_change_background(bg_temple2_3, bg_temple2_3Escape)
        layer_change_background(bg_temple2_4, bg_temple2_4Escape)
        layer_change_background(bg_templebgnew1, bg_templebgnew1Escape)
        layer_change_background(bg_templebgnew2, bg_templebgnew2Escape)
        layer_change_background(bg_templebgnew3, bg_templebgnew3Escape)
        layer_change_background(bg_mines1, bg_mines1_escape)
        layer_change_background(bg_mines1para1, bg_mines1para1_escape)
        layer_change_background(bg_mines1para2, bg_mines1para2_escape)
        layer_change_background(bg_mines2, bg_mines2_escape)
        layer_change_background(bg_mines2_hills, bg_mines2_hills_escape)
        layer_change_background(bg_mines3, bg_mines3_escape)
    }
    else if (global.panic && global.lvldesign == 1)
    {
        layer_change_background(bg_waferback1NEW, bgwafer_escape2NEW)
        layer_change_background(bg_waferback2NEW, bgwafer_escape1NEW)
        layer_change_background(bg_wafercloudsNEW, bg_wafer_escape3NEW)
        layer_change_background(bg_wafersunNEW, bgwafer_escape4NEW)
        layer_change_background(bg_waferskyNEW, bgwafer_escape5NEW)
        layer_change_background(bg_entryway2_sky, bg_entrywaynightsky)
        layer_change_background(bg_entryway2_clouds, bg_entrywayescapeclouds)
        layer_change_background(bg_entryway2_buildings, bg_escapebuildingsentryway)
        layer_change_background(bg_entryway2_buildings2, bg_escapebuildingsentryway2)
        layer_change_background(bg_entryway2_sun, bg_entrywayescapemoon)
        layer_change_background(entryway_endroombg1, entryway_endroomescape1)
        layer_change_background(entryway_endroombg2, entryway_endroomescape2)
        layer_change_background(entryway_endroombg3, entryway_endroomescape3)
        layer_change_background(entryway_endroombg4, entryway_endroomescape4)
        layer_change_background(entryway_endroombg5, entryway_endroomescape5)
        layer_change_background(bg_entryway2_skyNEW, bg_entrywaynightsky)
        layer_change_background(bg_entryway2_cloudsNEW, bg_entrywayescapeclouds)
        layer_change_background(bg_entryway2_clouds2NEW, spr_null)
        layer_change_background(bg_entryway2_buildingsNEW, bg_escapebuildingsentryway)
        layer_change_background(bg_entryway2_buildings2NEW, bg_escapebuildingsentryway2)
        layer_change_background(bg_entryway2_sunNEW, spr_null)
        layer_change_background(backNEW, sky_esc_backNEW)
        layer_change_background(steamybg1, sky_esc_back2)
        layer_change_background(bg_sky2main2NEW, sky_esc_screaming_front_cakes)
        layer_change_background(ship, sky_esc_screaming_ships)
        layer_change_background(steamybg5, sky_esc_screaming_front_cakes)
        layer_change_background(steamybg3, sky_esc_screaming_clouds)
        layer_change_background(bgsky2main2, sky_esc_screaming_front_cakes)
        layer_change_background(steamybg4, bg_steamynew3_escape)
        layer_change_background(cl2NEW, sky_esc_screaming_clouds)
        layer_change_background(nextsky, bg_steamyparkescapeNEW)
        layer_change_background(spr_parkparrallaxtogethernewest, spr_parkparrallaxtogetherpanic)
        layer_change_background(bg_clock1NEW, bg_clock1_escapeNEW)
        layer_change_background(bg_clockparallax1NEW, bg_clockparallaxescapeNEW)
        layer_change_background(spr_clockparallax2NEW, spr_clockparallax2_escapeNEW)
        layer_change_background(bg_clockend_1, bg_clockend_1escapeNEW)
        layer_change_background(bg_clockend_2, bg_clockend_2escapeNEW)
        layer_change_background(bg_clockend_3, bg_clockend_3escapeNEW)
        layer_change_background(spr_molassesbgpara1, bg_molasses_2escape)
        layer_change_background(spr_molassesbgpara2, spr_molassesbgpara2_escape)
        layer_change_background(spr_molassesbgpara3, spr_molassesbgpara3_escape)
        layer_change_background(bg_molasses_4, bg_molasses_4escape)
        layer_change_background(bg_molasses_2, bg_molasses_2escape)
        layer_change_background(bg_molasses_1, bg_molasses_1escape)
        layer_change_background(spr_molassesbgpara5NEW, spr_molassesbgpara5escapeNEW)
        layer_change_background(spr_molassesFG, spr_molassesFG_escape)
        layer_change_background(bg_temple2_1, bg_temple2_1Escape)
        layer_change_background(bg_temple2_2, bg_temple2_2Escape)
        layer_change_background(bg_temple2_3, bg_temple2_3Escape)
        layer_change_background(bg_temple2_4, bg_temple2_4Escape)
        layer_change_background(bg_templebgnew1, bg_templebgnew1Escape)
        layer_change_background(bg_templebgnew2, bg_templebgnew2Escape)
        layer_change_background(bg_templebgnew3, bg_templebgnew3Escape)
        layer_change_background(bg_mines1NEW, bg_mines1_escapeNEW)
        layer_change_background(bg_mines1para1NEW, bg_mines1para1_escape)
        layer_change_background(bg_mines1para2NEW, bg_mines1para2_escapeNEW)
        layer_change_background(bg_mines2NEW, bg_mines2_escapeNEW)
        layer_change_background(bg_mines2_hillsNEW, bg_mines2_hills_escapeNEW)
        layer_change_background(bg_mines3NEW, bg_mines3_escapeNEW)
    }
}

