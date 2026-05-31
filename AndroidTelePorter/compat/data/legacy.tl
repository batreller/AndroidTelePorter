// All historical versions of user / userFull / userEmpty
// and their recursive dependencies, with id-suffixed names.
// generated: 2026-05-30T19:02:02.733949+00:00
// total constructors: 540

// ##################################################
// #                 DEPENDENCIES                   #
// ##################################################

// ===== baseThemeArctic =====
// first seen 2023-07-20 03:20:07 UTC (layer 160)
baseThemeArctic_5b11125a#5b11125a = BaseTheme;

// ===== baseThemeClassic =====
// first seen 2023-07-20 03:20:07 UTC (layer 160)
baseThemeClassic_c3a12462#c3a12462 = BaseTheme;

// ===== baseThemeDay =====
// first seen 2023-07-20 03:20:07 UTC (layer 160)
baseThemeDay_fbd81688#fbd81688 = BaseTheme;

// ===== baseThemeNight =====
// first seen 2023-07-20 03:20:07 UTC (layer 160)
baseThemeNight_b7b31ea8#b7b31ea8 = BaseTheme;

// ===== baseThemeTinted =====
// first seen 2023-07-20 03:20:07 UTC (layer 160)
baseThemeTinted_6d5f77ee#6d5f77ee = BaseTheme;

// ===== birthday =====
// first seen 2024-04-01 18:44:20 UTC (layer 177)
birthday_6c8e1e06#6c8e1e06 flags:# day:int month:int year:flags.0?int = Birthday;

// ===== botAppSettings =====
// first seen 2024-11-17 11:08:15 UTC (layer 193)
botAppSettings_c99b1950#c99b1950 flags:# placeholder_path:flags.0?bytes background_color:flags.1?int background_dark_color:flags.2?int header_color:flags.3?int header_dark_color:flags.4?int = BotAppSettings;

// ===== botCommand =====
// first seen 2015-06-10 12:48:26 UTC (layer 31)
botCommand_b79d22ab#b79d22ab command:string params:string description:string = BotCommand;
// first seen 2015-06-22 08:51:39 UTC (layer 31)
botCommand_c27ac8c7#c27ac8c7 command:string description:string = BotCommand;

// ===== botInfo =====
// first seen 2015-06-10 12:48:26 UTC (layer 31)
botInfo_9cf585d#9cf585d user_id:int version:int share_text:string description:string commands:Vector<botCommand_b79d22ab> = BotInfo;
// first seen 2016-03-04 15:34:46 UTC (layer 49)
botInfo_98e81d3a#98e81d3a user_id:int description:string commands:Vector<botCommand_c27ac8c7> = BotInfo;
// first seen 2021-09-07 20:41:07 UTC (layer 133)
botInfo_1b74b335#1b74b335 user_id:long description:string commands:Vector<botCommand_c27ac8c7> = BotInfo;
// first seen 2022-04-06 12:29:06 UTC (layer 140)
botInfo_e4169b5d#e4169b5d user_id:long description:string commands:Vector<botCommand_c27ac8c7> menu_button:botMenuButton_c7b57ce6 = BotInfo;
// first seen 2024-07-31 15:03:53 UTC (layer 185)
botInfo_8f300b57#8f300b57 flags:# has_preview_medias:flags.6?true user_id:flags.0?long description:flags.1?string description_photo:flags.4?photo_fb197a65 description_document:flags.5?document_8fd4c4d8 commands:flags.2?Vector<botCommand_c27ac8c7> menu_button:flags.3?botMenuButton_c7b57ce6 = BotInfo;
// first seen 2024-08-14 16:17:51 UTC (layer 186)
botInfo_82437e74#82437e74 flags:# has_preview_medias:flags.6?true user_id:flags.0?long description:flags.1?string description_photo:flags.4?photo_fb197a65 description_document:flags.5?document_8fd4c4d8 commands:flags.2?Vector<botCommand_c27ac8c7> menu_button:flags.3?botMenuButton_c7b57ce6 privacy_policy_url:flags.7?string = BotInfo;
// first seen 2024-11-17 11:08:15 UTC (layer 193)
botInfo_36607333#36607333 flags:# has_preview_medias:flags.6?true user_id:flags.0?long description:flags.1?string description_photo:flags.4?photo_fb197a65 description_document:flags.5?document_8fd4c4d8 commands:flags.2?Vector<botCommand_c27ac8c7> menu_button:flags.3?botMenuButton_c7b57ce6 privacy_policy_url:flags.7?string app_settings:flags.8?botAppSettings_c99b1950 = BotInfo;
// first seen 2024-12-25 07:09:35 UTC (layer 196)
botInfo_4d8a0299#4d8a0299 flags:# has_preview_medias:flags.6?true user_id:flags.0?long description:flags.1?string description_photo:flags.4?photo_fb197a65 description_document:flags.5?document_8fd4c4d8 commands:flags.2?Vector<botCommand_c27ac8c7> menu_button:flags.3?botMenuButton_c7b57ce6 privacy_policy_url:flags.7?string app_settings:flags.8?botAppSettings_c99b1950 verifier_settings:flags.9?botVerifierSettings_b0cd6617 = BotInfo;

// ===== botInfoEmpty =====
// first seen 2015-06-10 12:48:26 UTC (layer 31)
botInfoEmpty_bb2e37ce#bb2e37ce = BotInfo;

// ===== botMenuButton =====
// first seen 2022-04-06 12:29:06 UTC (layer 140)
botMenuButton_c7b57ce6#c7b57ce6 text:string url:string = BotMenuButton;

// ===== botMenuButtonCommands =====
// first seen 2022-04-06 12:29:06 UTC (layer 140)
botMenuButtonCommands_4258c205#4258c205 = BotMenuButton;

// ===== botMenuButtonDefault =====
// first seen 2022-04-06 12:29:06 UTC (layer 140)
botMenuButtonDefault_7533a588#7533a588 = BotMenuButton;

// ===== botVerification =====
// first seen 2024-12-25 07:09:35 UTC (layer 196)
botVerification_4a1c6d3c#4a1c6d3c flags:# bot_id:long icon:long company:string description:flags.0?string = BotVerification;
// first seen 2024-12-31 09:12:15 UTC (layer 196)
botVerification_f93cd45c#f93cd45c bot_id:long icon:long description:string = BotVerification;

// ===== botVerifierSettings =====
// first seen 2024-12-25 07:09:35 UTC (layer 196)
botVerifierSettings_b0cd6617#b0cd6617 flags:# can_modify_custom_description:flags.1?true icon:long company:string custom_description:flags.0?string = BotVerifierSettings;

// ===== businessAwayMessage =====
// first seen 2024-03-08 06:53:58 UTC (layer 176)
businessAwayMessage_9acd7a15#9acd7a15 flags:# existing_chats:flags.0?true new_chats:flags.1?true contacts:flags.2?true non_contacts:flags.3?true exclude_selected:flags.5?true shortcut_id:int schedule:BusinessAwayMessageSchedule users:flags.4?Vector<long> = BusinessAwayMessage;
// first seen 2024-03-08 06:53:59 UTC (layer 176)
businessAwayMessage_ef156a5c#ef156a5c flags:# offline_only:flags.0?true shortcut_id:int schedule:BusinessAwayMessageSchedule recipients:businessRecipients_21108ff7 = BusinessAwayMessage;

// ===== businessAwayMessageScheduleAlways =====
// first seen 2024-03-08 06:53:58 UTC (layer 176)
businessAwayMessageScheduleAlways_c9b9e2b9#c9b9e2b9 = BusinessAwayMessageSchedule;

// ===== businessAwayMessageScheduleCustom =====
// first seen 2024-03-08 06:53:58 UTC (layer 176)
businessAwayMessageScheduleCustom_cc4d9ecc#cc4d9ecc start_date:int end_date:int = BusinessAwayMessageSchedule;

// ===== businessAwayMessageScheduleOutsideWorkHours =====
// first seen 2024-03-08 06:53:58 UTC (layer 176)
businessAwayMessageScheduleOutsideWorkHours_c3f2f501#c3f2f501 = BusinessAwayMessageSchedule;

// ===== businessGreetingMessage =====
// first seen 2024-03-08 06:53:58 UTC (layer 176)
businessGreetingMessage_a098d54c#a098d54c flags:# existing_chats:flags.0?true new_chats:flags.1?true contacts:flags.2?true non_contacts:flags.3?true exclude_selected:flags.5?true shortcut_id:int users:flags.4?Vector<long> no_activity_days:int = BusinessGreetingMessage;
// first seen 2024-03-08 06:53:59 UTC (layer 176)
businessGreetingMessage_e519abab#e519abab shortcut_id:int recipients:businessRecipients_21108ff7 no_activity_days:int = BusinessGreetingMessage;

// ===== businessIntro =====
// first seen 2024-04-01 18:44:20 UTC (layer 177)
businessIntro_5a0a066d#5a0a066d flags:# title:string description:string sticker:flags.0?document_8fd4c4d8 = BusinessIntro;

// ===== businessLocation =====
// first seen 2024-03-08 06:53:58 UTC (layer 176)
businessLocation_ac5c1af7#ac5c1af7 flags:# geo_point:flags.0?geoPoint_b2a2f663 address:string = BusinessLocation;

// ===== businessRecipients =====
// first seen 2024-03-08 06:53:59 UTC (layer 176)
businessRecipients_21108ff7#21108ff7 flags:# existing_chats:flags.0?true new_chats:flags.1?true contacts:flags.2?true non_contacts:flags.3?true exclude_selected:flags.5?true users:flags.4?Vector<long> = BusinessRecipients;

// ===== businessWeeklyOpen =====
// first seen 2024-03-08 06:53:58 UTC (layer 176)
businessWeeklyOpen_120b1ab9#120b1ab9 start_minute:int end_minute:int = BusinessWeeklyOpen;

// ===== businessWorkHours =====
// first seen 2024-03-08 06:53:58 UTC (layer 176)
businessWorkHours_8c92b098#8c92b098 flags:# open_now:flags.0?true timezone_id:string weekly_open:Vector<businessWeeklyOpen_120b1ab9> = BusinessWorkHours;

// ===== channel =====
// first seen 2023-07-20 03:20:07 UTC (layer 160)
channel_83259464#83259464 flags:# creator:flags.0?true left:flags.2?true broadcast:flags.5?true verified:flags.7?true megagroup:flags.8?true restricted:flags.9?true signatures:flags.11?true min:flags.12?true scam:flags.19?true has_link:flags.20?true has_geo:flags.21?true slowmode_enabled:flags.22?true call_active:flags.23?true call_not_empty:flags.24?true fake:flags.25?true gigagroup:flags.26?true noforwards:flags.27?true join_to_send:flags.28?true join_request:flags.29?true forum:flags.30?true flags2:# id:long access_hash:flags.13?long title:string username:flags.6?string photo:chatPhoto_1c6e1c11 date:int restriction_reason:flags.9?Vector<restrictionReason_d072acb4> admin_rights:flags.14?chatAdminRights_5fb224d5 banned_rights:flags.15?chatBannedRights_9f120418 default_banned_rights:flags.18?chatBannedRights_9f120418 participants_count:flags.17?int usernames:flags2.0?Vector<username_b4073647> = Chat;
// first seen 2023-09-22 05:43:31 UTC (layer 164)
channel_94f592db#94f592db flags:# creator:flags.0?true left:flags.2?true broadcast:flags.5?true verified:flags.7?true megagroup:flags.8?true restricted:flags.9?true signatures:flags.11?true min:flags.12?true scam:flags.19?true has_link:flags.20?true has_geo:flags.21?true slowmode_enabled:flags.22?true call_active:flags.23?true call_not_empty:flags.24?true fake:flags.25?true gigagroup:flags.26?true noforwards:flags.27?true join_to_send:flags.28?true join_request:flags.29?true forum:flags.30?true flags2:# stories_hidden:flags2.1?true stories_hidden_min:flags2.2?true stories_unavailable:flags2.3?true id:long access_hash:flags.13?long title:string username:flags.6?string photo:chatPhoto_1c6e1c11 date:int restriction_reason:flags.9?Vector<restrictionReason_d072acb4> admin_rights:flags.14?chatAdminRights_5fb224d5 banned_rights:flags.15?chatBannedRights_9f120418 default_banned_rights:flags.18?chatBannedRights_9f120418 participants_count:flags.17?int usernames:flags2.0?Vector<username_b4073647> stories_max_id:flags2.4?int = Chat;
// first seen 2023-10-26 10:08:41 UTC (layer 166)
channel_1981ea7e#1981ea7e flags:# creator:flags.0?true left:flags.2?true broadcast:flags.5?true verified:flags.7?true megagroup:flags.8?true restricted:flags.9?true signatures:flags.11?true min:flags.12?true scam:flags.19?true has_link:flags.20?true has_geo:flags.21?true slowmode_enabled:flags.22?true call_active:flags.23?true call_not_empty:flags.24?true fake:flags.25?true gigagroup:flags.26?true noforwards:flags.27?true join_to_send:flags.28?true join_request:flags.29?true forum:flags.30?true flags2:# stories_hidden:flags2.1?true stories_hidden_min:flags2.2?true stories_unavailable:flags2.3?true id:long access_hash:flags.13?long title:string username:flags.6?string photo:chatPhoto_1c6e1c11 date:int restriction_reason:flags.9?Vector<restrictionReason_d072acb4> admin_rights:flags.14?chatAdminRights_5fb224d5 banned_rights:flags.15?chatBannedRights_9f120418 default_banned_rights:flags.18?chatBannedRights_9f120418 participants_count:flags.17?int usernames:flags2.0?Vector<username_b4073647> stories_max_id:flags2.4?int color:flags2.6?int background_emoji_id:flags2.5?long = Chat;
// first seen 2023-11-28 17:55:24 UTC (layer 167)
channel_8e87ccd8#8e87ccd8 flags:# creator:flags.0?true left:flags.2?true broadcast:flags.5?true verified:flags.7?true megagroup:flags.8?true restricted:flags.9?true signatures:flags.11?true min:flags.12?true scam:flags.19?true has_link:flags.20?true has_geo:flags.21?true slowmode_enabled:flags.22?true call_active:flags.23?true call_not_empty:flags.24?true fake:flags.25?true gigagroup:flags.26?true noforwards:flags.27?true join_to_send:flags.28?true join_request:flags.29?true forum:flags.30?true flags2:# stories_hidden:flags2.1?true stories_hidden_min:flags2.2?true stories_unavailable:flags2.3?true id:long access_hash:flags.13?long title:string username:flags.6?string photo:chatPhoto_1c6e1c11 date:int restriction_reason:flags.9?Vector<restrictionReason_d072acb4> admin_rights:flags.14?chatAdminRights_5fb224d5 banned_rights:flags.15?chatBannedRights_9f120418 default_banned_rights:flags.18?chatBannedRights_9f120418 participants_count:flags.17?int usernames:flags2.0?Vector<username_b4073647> stories_max_id:flags2.4?int color:flags2.7?peerColor_ba278146 = Chat;
// first seen 2023-12-16 20:25:02 UTC (layer 168)
channel_aadfc8f#aadfc8f flags:# creator:flags.0?true left:flags.2?true broadcast:flags.5?true verified:flags.7?true megagroup:flags.8?true restricted:flags.9?true signatures:flags.11?true min:flags.12?true scam:flags.19?true has_link:flags.20?true has_geo:flags.21?true slowmode_enabled:flags.22?true call_active:flags.23?true call_not_empty:flags.24?true fake:flags.25?true gigagroup:flags.26?true noforwards:flags.27?true join_to_send:flags.28?true join_request:flags.29?true forum:flags.30?true flags2:# stories_hidden:flags2.1?true stories_hidden_min:flags2.2?true stories_unavailable:flags2.3?true id:long access_hash:flags.13?long title:string username:flags.6?string photo:chatPhoto_1c6e1c11 date:int restriction_reason:flags.9?Vector<restrictionReason_d072acb4> admin_rights:flags.14?chatAdminRights_5fb224d5 banned_rights:flags.15?chatBannedRights_9f120418 default_banned_rights:flags.18?chatBannedRights_9f120418 participants_count:flags.17?int usernames:flags2.0?Vector<username_b4073647> stories_max_id:flags2.4?int color:flags2.7?peerColor_b54b5acf profile_color:flags2.8?peerColor_b54b5acf emoji_status:flags2.9?emojiStatus_929b619d level:flags2.10?int = Chat;
// first seen 2024-08-14 16:17:48 UTC (layer 186)
channel_fe4478bd#fe4478bd flags:# creator:flags.0?true left:flags.2?true broadcast:flags.5?true verified:flags.7?true megagroup:flags.8?true restricted:flags.9?true signatures:flags.11?true min:flags.12?true scam:flags.19?true has_link:flags.20?true has_geo:flags.21?true slowmode_enabled:flags.22?true call_active:flags.23?true call_not_empty:flags.24?true fake:flags.25?true gigagroup:flags.26?true noforwards:flags.27?true join_to_send:flags.28?true join_request:flags.29?true forum:flags.30?true flags2:# stories_hidden:flags2.1?true stories_hidden_min:flags2.2?true stories_unavailable:flags2.3?true signature_profiles:flags2.12?true id:long access_hash:flags.13?long title:string username:flags.6?string photo:chatPhoto_1c6e1c11 date:int restriction_reason:flags.9?Vector<restrictionReason_d072acb4> admin_rights:flags.14?chatAdminRights_5fb224d5 banned_rights:flags.15?chatBannedRights_9f120418 default_banned_rights:flags.18?chatBannedRights_9f120418 participants_count:flags.17?int usernames:flags2.0?Vector<username_b4073647> stories_max_id:flags2.4?int color:flags2.7?peerColor_b54b5acf profile_color:flags2.8?peerColor_b54b5acf emoji_status:flags2.9?emojiStatus_929b619d level:flags2.10?int subscription_until_date:flags2.11?int = Chat;
// first seen 2024-12-25 07:09:35 UTC (layer 196)
channel_46aeac06#46aeac06 flags:# creator:flags.0?true left:flags.2?true broadcast:flags.5?true verified:flags.7?true megagroup:flags.8?true restricted:flags.9?true signatures:flags.11?true min:flags.12?true scam:flags.19?true has_link:flags.20?true has_geo:flags.21?true slowmode_enabled:flags.22?true call_active:flags.23?true call_not_empty:flags.24?true fake:flags.25?true gigagroup:flags.26?true noforwards:flags.27?true join_to_send:flags.28?true join_request:flags.29?true forum:flags.30?true flags2:# stories_hidden:flags2.1?true stories_hidden_min:flags2.2?true stories_unavailable:flags2.3?true signature_profiles:flags2.12?true id:long access_hash:flags.13?long title:string username:flags.6?string photo:chatPhoto_1c6e1c11 date:int restriction_reason:flags.9?Vector<restrictionReason_d072acb4> admin_rights:flags.14?chatAdminRights_5fb224d5 banned_rights:flags.15?chatBannedRights_9f120418 default_banned_rights:flags.18?chatBannedRights_9f120418 participants_count:flags.17?int usernames:flags2.0?Vector<username_b4073647> stories_max_id:flags2.4?int color:flags2.7?peerColor_b54b5acf profile_color:flags2.8?peerColor_b54b5acf emoji_status:flags2.9?emojiStatus_929b619d level:flags2.10?int subscription_until_date:flags2.11?int bot_verification:flags2.13?botVerification_4a1c6d3c = Chat;
// first seen 2024-12-31 09:12:15 UTC (layer 196)
channel_e00998b7#e00998b7 flags:# creator:flags.0?true left:flags.2?true broadcast:flags.5?true verified:flags.7?true megagroup:flags.8?true restricted:flags.9?true signatures:flags.11?true min:flags.12?true scam:flags.19?true has_link:flags.20?true has_geo:flags.21?true slowmode_enabled:flags.22?true call_active:flags.23?true call_not_empty:flags.24?true fake:flags.25?true gigagroup:flags.26?true noforwards:flags.27?true join_to_send:flags.28?true join_request:flags.29?true forum:flags.30?true flags2:# stories_hidden:flags2.1?true stories_hidden_min:flags2.2?true stories_unavailable:flags2.3?true signature_profiles:flags2.12?true id:long access_hash:flags.13?long title:string username:flags.6?string photo:chatPhoto_1c6e1c11 date:int restriction_reason:flags.9?Vector<restrictionReason_d072acb4> admin_rights:flags.14?chatAdminRights_5fb224d5 banned_rights:flags.15?chatBannedRights_9f120418 default_banned_rights:flags.18?chatBannedRights_9f120418 participants_count:flags.17?int usernames:flags2.0?Vector<username_b4073647> stories_max_id:flags2.4?int color:flags2.7?peerColor_b54b5acf profile_color:flags2.8?peerColor_b54b5acf emoji_status:flags2.9?emojiStatus_929b619d level:flags2.10?int subscription_until_date:flags2.11?int bot_verification_icon:flags2.13?long = Chat;
// first seen 2025-06-04 06:00:14 UTC (layer 204)
channel_7482147e#7482147e flags:# creator:flags.0?true left:flags.2?true broadcast:flags.5?true verified:flags.7?true megagroup:flags.8?true restricted:flags.9?true signatures:flags.11?true min:flags.12?true scam:flags.19?true has_link:flags.20?true has_geo:flags.21?true slowmode_enabled:flags.22?true call_active:flags.23?true call_not_empty:flags.24?true fake:flags.25?true gigagroup:flags.26?true noforwards:flags.27?true join_to_send:flags.28?true join_request:flags.29?true forum:flags.30?true flags2:# stories_hidden:flags2.1?true stories_hidden_min:flags2.2?true stories_unavailable:flags2.3?true signature_profiles:flags2.12?true autotranslation:flags2.15?true broadcast_messages_allowed:flags2.16?true monoforum:flags2.17?true id:long access_hash:flags.13?long title:string username:flags.6?string photo:chatPhoto_1c6e1c11 date:int restriction_reason:flags.9?Vector<restrictionReason_d072acb4> admin_rights:flags.14?chatAdminRights_5fb224d5 banned_rights:flags.15?chatBannedRights_9f120418 default_banned_rights:flags.18?chatBannedRights_9f120418 participants_count:flags.17?int usernames:flags2.0?Vector<username_b4073647> stories_max_id:flags2.4?int color:flags2.7?peerColor_b54b5acf profile_color:flags2.8?peerColor_b54b5acf emoji_status:flags2.9?emojiStatus_e7ff068a level:flags2.10?int subscription_until_date:flags2.11?int bot_verification_icon:flags2.13?long send_paid_messages_stars:flags2.14?long = Chat;
// first seen 2025-06-04 06:00:19 UTC (layer 204)
channel_fe685355#fe685355 flags:# creator:flags.0?true left:flags.2?true broadcast:flags.5?true verified:flags.7?true megagroup:flags.8?true restricted:flags.9?true signatures:flags.11?true min:flags.12?true scam:flags.19?true has_link:flags.20?true has_geo:flags.21?true slowmode_enabled:flags.22?true call_active:flags.23?true call_not_empty:flags.24?true fake:flags.25?true gigagroup:flags.26?true noforwards:flags.27?true join_to_send:flags.28?true join_request:flags.29?true forum:flags.30?true flags2:# stories_hidden:flags2.1?true stories_hidden_min:flags2.2?true stories_unavailable:flags2.3?true signature_profiles:flags2.12?true autotranslation:flags2.15?true broadcast_messages_allowed:flags2.16?true monoforum:flags2.17?true forum_tabs:flags2.19?true id:long access_hash:flags.13?long title:string username:flags.6?string photo:chatPhoto_1c6e1c11 date:int restriction_reason:flags.9?Vector<restrictionReason_d072acb4> admin_rights:flags.14?chatAdminRights_5fb224d5 banned_rights:flags.15?chatBannedRights_9f120418 default_banned_rights:flags.18?chatBannedRights_9f120418 participants_count:flags.17?int usernames:flags2.0?Vector<username_b4073647> stories_max_id:flags2.4?int color:flags2.7?peerColor_b54b5acf profile_color:flags2.8?peerColor_b54b5acf emoji_status:flags2.9?emojiStatus_e7ff068a level:flags2.10?int subscription_until_date:flags2.11?int bot_verification_icon:flags2.13?long send_paid_messages_stars:flags2.14?long linked_monoforum_id:flags2.18?long = Chat;
// first seen 2026-02-28 15:07:08 UTC (layer 223)
channel_1c32b11c#1c32b11c flags:# creator:flags.0?true left:flags.2?true broadcast:flags.5?true verified:flags.7?true megagroup:flags.8?true restricted:flags.9?true signatures:flags.11?true min:flags.12?true scam:flags.19?true has_link:flags.20?true has_geo:flags.21?true slowmode_enabled:flags.22?true call_active:flags.23?true call_not_empty:flags.24?true fake:flags.25?true gigagroup:flags.26?true noforwards:flags.27?true join_to_send:flags.28?true join_request:flags.29?true forum:flags.30?true flags2:# stories_hidden:flags2.1?true stories_hidden_min:flags2.2?true stories_unavailable:flags2.3?true signature_profiles:flags2.12?true autotranslation:flags2.15?true broadcast_messages_allowed:flags2.16?true monoforum:flags2.17?true forum_tabs:flags2.19?true custom_ranks_enabled:flags2.20?true id:long access_hash:flags.13?long title:string username:flags.6?string photo:chatPhoto_1c6e1c11 date:int restriction_reason:flags.9?Vector<restrictionReason_d072acb4> admin_rights:flags.14?chatAdminRights_5fb224d5 banned_rights:flags.15?chatBannedRights_9f120418 default_banned_rights:flags.18?chatBannedRights_9f120418 participants_count:flags.17?int usernames:flags2.0?Vector<username_b4073647> stories_max_id:flags2.4?recentStory_711d692d color:flags2.7?peerColor_b54b5acf profile_color:flags2.8?peerColor_b54b5acf emoji_status:flags2.9?emojiStatus_e7ff068a level:flags2.10?int subscription_until_date:flags2.11?int bot_verification_icon:flags2.13?long send_paid_messages_stars:flags2.14?long linked_monoforum_id:flags2.18?long = Chat;

// ===== channelForbidden =====
// first seen 2026-02-01 19:33:57 UTC (layer 223)
channelForbidden_17d493d5#17d493d5 flags:# broadcast:flags.5?true megagroup:flags.8?true monoforum:flags.10?true id:long access_hash:long title:string until_date:flags.16?int = Chat;

// ===== chat =====
// first seen 2026-02-28 15:07:08 UTC (layer 223)
chat_41cbf256#41cbf256 flags:# creator:flags.0?true left:flags.2?true deactivated:flags.5?true custom_ranks_enabled:flags.19?true call_active:flags.23?true call_not_empty:flags.24?true noforwards:flags.25?true id:long title:string photo:chatPhoto_1c6e1c11 participants_count:int date:int version:int migrated_to:flags.6?inputChannel_f35aec28 admin_rights:flags.14?chatAdminRights_5fb224d5 default_banned_rights:flags.18?chatBannedRights_9f120418 = Chat;

// ===== chatAdminRights =====
// first seen 2026-02-28 15:07:08 UTC (layer 223)
chatAdminRights_5fb224d5#5fb224d5 flags:# change_info:flags.0?true post_messages:flags.1?true edit_messages:flags.2?true delete_messages:flags.3?true ban_users:flags.4?true invite_users:flags.5?true pin_messages:flags.7?true add_admins:flags.9?true anonymous:flags.10?true manage_call:flags.11?true other:flags.12?true manage_topics:flags.13?true post_stories:flags.14?true edit_stories:flags.15?true delete_stories:flags.16?true manage_direct_messages:flags.17?true manage_ranks:flags.18?true = ChatAdminRights;

// ===== chatBannedRights =====
// first seen 2026-05-05 06:45:44 UTC (layer 225)
chatBannedRights_9f120418#9f120418 flags:# view_messages:flags.0?true send_messages:flags.1?true send_media:flags.2?true send_stickers:flags.3?true send_gifs:flags.4?true send_games:flags.5?true send_inline:flags.6?true embed_links:flags.7?true send_polls:flags.8?true change_info:flags.10?true invite_users:flags.15?true pin_messages:flags.17?true manage_topics:flags.18?true send_photos:flags.19?true send_videos:flags.20?true send_roundvideos:flags.21?true send_audios:flags.22?true send_voices:flags.23?true send_docs:flags.24?true send_plain:flags.25?true edit_rank:flags.26?true send_reactions:flags.27?true until_date:int = ChatBannedRights;

// ===== chatEmpty =====
// first seen 2023-07-20 03:20:07 UTC (layer 160)
chatEmpty_29562865#29562865 id:long = Chat;

// ===== chatForbidden =====
// first seen 2023-07-20 03:20:07 UTC (layer 160)
chatForbidden_6592a1a7#6592a1a7 id:long title:string = Chat;

// ===== chatPhoto =====
// first seen 2023-07-20 03:20:07 UTC (layer 160)
chatPhoto_1c6e1c11#1c6e1c11 flags:# has_video:flags.0?true photo_id:long stripped_thumb:flags.1?bytes dc_id:int = ChatPhoto;

// ===== chatPhotoEmpty =====
// first seen 2023-07-20 03:20:07 UTC (layer 160)
chatPhotoEmpty_37c1011c#37c1011c = ChatPhoto;

// ===== chatTheme =====
// first seen 2025-08-31 16:53:12 UTC (layer 214)
chatTheme_c3dffc04#c3dffc04 emoticon:string = ChatTheme;

// ===== chatThemeUniqueGift =====
// first seen 2025-08-31 16:53:12 UTC (layer 214)
chatThemeUniqueGift_3458f9c8#3458f9c8 gift:starGift_80ac53c3 theme_settings:Vector<themeSettings_fa58b6d4> = ChatTheme;

// ===== dataJSON =====
// first seen 2026-03-25 06:08:49 UTC (layer 224)
dataJSON_7d748d04#7d748d04 data:string = DataJSON;

// ===== disallowedGiftsSettings =====
// first seen 2025-11-15 07:59:17 UTC (layer 217)
disallowedGiftsSettings_71f276c4#71f276c4 flags:# disallow_unlimited_stargifts:flags.0?true disallow_limited_stargifts:flags.1?true disallow_unique_stargifts:flags.2?true disallow_premium_gifts:flags.3?true disallow_stargifts_from_channels:flags.4?true = DisallowedGiftsSettings;

// ===== disallowedStarGiftsSettings =====
// first seen 2025-03-26 03:11:20 UTC (layer 201)
disallowedStarGiftsSettings_6291c96a#6291c96a flags:# disallow_unlimited_stargifts:flags.0?true disallow_limited_stargifts:flags.1?true disallow_unique_stargifts:flags.2?true = DisallowedStarGiftsSettings;

// ===== document =====
// first seen 2022-05-19 13:27:01 UTC (layer 142)
document_1e87342b#1e87342b flags:# id:long access_hash:long file_reference:bytes date:int mime_type:string size:int thumbs:flags.0?Vector<photoSize_75c78e60> video_thumbs:flags.1?Vector<videoSize_de33b094> dc_id:int attributes:Vector<DocumentAttribute> = Document;
// first seen 2022-05-19 13:27:02 UTC (layer 143)
document_8fd4c4d8#8fd4c4d8 flags:# id:long access_hash:long file_reference:bytes date:int mime_type:string size:long thumbs:flags.0?Vector<photoSize_75c78e60> video_thumbs:flags.1?Vector<videoSize_de33b094> dc_id:int attributes:Vector<DocumentAttribute> = Document;

// ===== documentAttributeAnimated =====
// first seen 2022-05-19 13:27:01 UTC (layer 142)
documentAttributeAnimated_11b58939#11b58939 = DocumentAttribute;

// ===== documentAttributeAudio =====
// first seen 2022-05-19 13:27:01 UTC (layer 142)
documentAttributeAudio_9852f9c6#9852f9c6 flags:# voice:flags.10?true duration:int title:flags.0?string performer:flags.1?string waveform:flags.2?bytes = DocumentAttribute;

// ===== documentAttributeCustomEmoji =====
// first seen 2022-12-26 10:24:05 UTC (layer 151)
documentAttributeCustomEmoji_fd149899#fd149899 flags:# free:flags.0?true text_color:flags.1?true alt:string stickerset:InputStickerSet = DocumentAttribute;

// ===== documentAttributeFilename =====
// first seen 2022-05-19 13:27:01 UTC (layer 142)
documentAttributeFilename_15590068#15590068 file_name:string = DocumentAttribute;

// ===== documentAttributeHasStickers =====
// first seen 2022-05-19 13:27:01 UTC (layer 142)
documentAttributeHasStickers_9801d2f7#9801d2f7 = DocumentAttribute;

// ===== documentAttributeImageSize =====
// first seen 2022-05-19 13:27:01 UTC (layer 142)
documentAttributeImageSize_6c37c15c#6c37c15c w:int h:int = DocumentAttribute;

// ===== documentAttributeSticker =====
// first seen 2022-05-19 13:27:01 UTC (layer 142)
documentAttributeSticker_6319d612#6319d612 flags:# mask:flags.1?true alt:string stickerset:InputStickerSet mask_coords:flags.0?maskCoords_aed6dbb2 = DocumentAttribute;

// ===== documentAttributeVideo =====
// first seen 2022-05-19 13:27:01 UTC (layer 142)
documentAttributeVideo_ef02ce6#ef02ce6 flags:# round_message:flags.0?true supports_streaming:flags.1?true duration:int w:int h:int = DocumentAttribute;
// first seen 2023-07-20 03:20:07 UTC (layer 160)
documentAttributeVideo_e9407793#e9407793 flags:# round_message:flags.0?true supports_streaming:flags.1?true duration:int w:int h:int preload_prefix_size:flags.2?int = DocumentAttribute;
// first seen 2023-07-20 03:20:13 UTC (layer 160)
documentAttributeVideo_d38ff1c2#d38ff1c2 flags:# round_message:flags.0?true supports_streaming:flags.1?true nosound:flags.3?true duration:double w:int h:int preload_prefix_size:flags.2?int = DocumentAttribute;
// first seen 2024-07-31 15:03:53 UTC (layer 185)
documentAttributeVideo_17399fad#17399fad flags:# round_message:flags.0?true supports_streaming:flags.1?true nosound:flags.3?true duration:double w:int h:int preload_prefix_size:flags.2?int video_start_ts:flags.4?double = DocumentAttribute;
// first seen 2024-09-19 08:47:54 UTC (layer 188)
documentAttributeVideo_43c57c48#43c57c48 flags:# round_message:flags.0?true supports_streaming:flags.1?true nosound:flags.3?true duration:double w:int h:int preload_prefix_size:flags.2?int video_start_ts:flags.4?double video_codec:flags.5?string = DocumentAttribute;

// ===== documentEmpty =====
// first seen 2022-05-19 13:27:01 UTC (layer 142)
documentEmpty_36f8c871#36f8c871 id:long = Document;

// ===== emojiStatus =====
// first seen 2022-09-02 17:14:28 UTC (layer 145)
emojiStatus_929b619d#929b619d document_id:long = EmojiStatus;
// first seen 2025-01-22 18:13:26 UTC (layer 198)
emojiStatus_e7ff068a#e7ff068a flags:# document_id:long until:flags.0?int = EmojiStatus;

// ===== emojiStatusCollectible =====
// first seen 2025-01-22 18:13:26 UTC (layer 198)
emojiStatusCollectible_7184603b#7184603b flags:# collectible_id:long document_id:long title:string slug:string pattern_document_id:long center_color:int edge_color:int pattern_color:int text_color:int until:flags.0?int = EmojiStatus;

// ===== emojiStatusEmpty =====
// first seen 2022-09-02 17:14:28 UTC (layer 145)
emojiStatusEmpty_2de11aae#2de11aae = EmojiStatus;

// ===== emojiStatusUntil =====
// first seen 2022-09-02 17:14:33 UTC (layer 145)
emojiStatusUntil_fa30a8c7#fa30a8c7 document_id:long until:int = EmojiStatus;

// ===== fileLocation =====
// first seen 2014-05-30 08:53:19 UTC (layer 15)
fileLocation_53d69076#53d69076 dc_id:int volume_id:long local_id:int secret:long = FileLocation;
// first seen 2018-08-20 14:26:27 UTC (layer 85)
fileLocation_91d11eb#91d11eb dc_id:int volume_id:long local_id:int secret:long file_reference:bytes = FileLocation;

// ===== fileLocationToBeDeprecated =====
// first seen 2019-03-29 10:24:06 UTC (layer 98)
fileLocationToBeDeprecated_bc7fc6cd#bc7fc6cd volume_id:long local_id:int = FileLocation;

// ===== fileLocationUnavailable =====
// first seen 2014-05-30 08:53:19 UTC (layer 15)
fileLocationUnavailable_7c596b46#7c596b46 volume_id:long local_id:int secret:long = FileLocation;

// ===== game =====
// first seen 2023-07-20 03:20:07 UTC (layer 160)
game_bdf9653b#bdf9653b flags:# id:long access_hash:long short_name:string title:string description:string photo:photo_fb197a65 document:flags.0?document_8fd4c4d8 = Game;

// ===== geoPoint =====
// first seen 2014-05-30 08:53:19 UTC (layer 15)
geoPoint_2049d70c#2049d70c long:double lat:double = GeoPoint;
// first seen 2023-07-20 03:20:07 UTC (layer 160)
geoPoint_b2a2f663#b2a2f663 flags:# long:double lat:double access_hash:long accuracy_radius:flags.0?int = GeoPoint;

// ===== geoPointAddress =====
// first seen 2024-06-30 17:16:07 UTC (layer 182)
geoPointAddress_de4c5d93#de4c5d93 flags:# country_iso2:string state:flags.0?string city:flags.1?string street:flags.2?string = GeoPointAddress;

// ===== geoPointEmpty =====
// first seen 2014-05-30 08:53:19 UTC (layer 15)
geoPointEmpty_1117dd5f#1117dd5f = GeoPoint;

// ===== inputChannel =====
// first seen 2023-07-20 03:20:07 UTC (layer 160)
inputChannel_f35aec28#f35aec28 channel_id:long access_hash:long = InputChannel;

// ===== inputChannelEmpty =====
// first seen 2023-07-20 03:20:07 UTC (layer 160)
inputChannelEmpty_ee8c1e86#ee8c1e86 = InputChannel;

// ===== inputChannelFromMessage =====
// first seen 2023-07-20 03:20:07 UTC (layer 160)
inputChannelFromMessage_5b934f9d#5b934f9d peer:InputPeer msg_id:int channel_id:long = InputChannel;

// ===== inputDocument =====
// first seen 2026-03-25 06:08:49 UTC (layer 224)
inputDocument_1abfb575#1abfb575 id:long access_hash:long file_reference:bytes = InputDocument;

// ===== inputDocumentEmpty =====
// first seen 2026-03-25 06:08:49 UTC (layer 224)
inputDocumentEmpty_72f0eaae#72f0eaae = InputDocument;

// ===== inputEmojiStatusCollectible =====
// first seen 2025-01-22 18:13:26 UTC (layer 198)
inputEmojiStatusCollectible_7141dbf#7141dbf flags:# collectible_id:long until:flags.0?int = EmojiStatus;

// ===== inputFile =====
// first seen 2026-03-25 06:08:49 UTC (layer 224)
inputFile_f52ff27f#f52ff27f id:long parts:int name:string md5_checksum:string = InputFile;

// ===== inputFileBig =====
// first seen 2026-03-25 06:08:49 UTC (layer 224)
inputFileBig_fa4f0bb5#fa4f0bb5 id:long parts:int name:string = InputFile;

// ===== inputFileStoryDocument =====
// first seen 2026-03-25 06:08:49 UTC (layer 224)
inputFileStoryDocument_62dc8b48#62dc8b48 id:inputDocument_1abfb575 = InputFile;

// ===== inputGameID =====
// first seen 2026-03-25 06:08:49 UTC (layer 224)
inputGameID_32c3e77#32c3e77 id:long access_hash:long = InputGame;

// ===== inputGameShortName =====
// first seen 2026-03-25 06:08:49 UTC (layer 224)
inputGameShortName_c331e80a#c331e80a bot_id:inputUser_f21158c6 short_name:string = InputGame;

// ===== inputGeoPoint =====
// first seen 2026-03-25 06:08:49 UTC (layer 224)
inputGeoPoint_48222faf#48222faf flags:# lat:double long:double accuracy_radius:flags.0?int = InputGeoPoint;

// ===== inputGeoPointEmpty =====
// first seen 2026-03-25 06:08:49 UTC (layer 224)
inputGeoPointEmpty_e4c123d6#e4c123d6 = InputGeoPoint;

// ===== inputGroupCall =====
// first seen 2025-11-15 07:59:17 UTC (layer 217)
inputGroupCall_d8aa840f#d8aa840f id:long access_hash:long = InputGroupCall;

// ===== inputGroupCallInviteMessage =====
// first seen 2025-11-15 07:59:17 UTC (layer 217)
inputGroupCallInviteMessage_8c10603f#8c10603f msg_id:int = InputGroupCall;

// ===== inputGroupCallSlug =====
// first seen 2025-11-15 07:59:17 UTC (layer 217)
inputGroupCallSlug_fe06823f#fe06823f slug:string = InputGroupCall;

// ===== inputMediaAreaChannelPost =====
// first seen 2023-12-16 20:25:02 UTC (layer 168)
inputMediaAreaChannelPost_2271f2bf#2271f2bf coordinates:mediaAreaCoordinates_3d1ea4e channel:inputChannel_f35aec28 msg_id:int = MediaArea;

// ===== inputMediaAreaVenue =====
// first seen 2023-08-14 20:30:37 UTC (layer 161)
inputMediaAreaVenue_b282217f#b282217f coordinates:mediaAreaCoordinates_3d1ea4e query_id:long result_id:string = MediaArea;

// ===== inputMediaContact =====
// first seen 2026-03-25 06:08:49 UTC (layer 224)
inputMediaContact_f8ab7dfb#f8ab7dfb phone_number:string first_name:string last_name:string vcard:string = InputMedia;

// ===== inputMediaDice =====
// first seen 2026-03-25 06:08:49 UTC (layer 224)
inputMediaDice_e66fbf7b#e66fbf7b emoticon:string = InputMedia;

// ===== inputMediaDocument =====
// first seen 2026-03-25 06:08:49 UTC (layer 224)
inputMediaDocument_a8763ab5#a8763ab5 flags:# spoiler:flags.2?true id:inputDocument_1abfb575 video_cover:flags.3?inputPhoto_3bb3b94a video_timestamp:flags.4?int ttl_seconds:flags.0?int query:flags.1?string = InputMedia;

// ===== inputMediaDocumentExternal =====
// first seen 2026-03-25 06:08:49 UTC (layer 224)
inputMediaDocumentExternal_779600f9#779600f9 flags:# spoiler:flags.1?true url:string ttl_seconds:flags.0?int video_cover:flags.2?inputPhoto_3bb3b94a video_timestamp:flags.3?int = InputMedia;

// ===== inputMediaEmpty =====
// first seen 2026-03-25 06:08:49 UTC (layer 224)
inputMediaEmpty_9664f57f#9664f57f = InputMedia;

// ===== inputMediaGame =====
// first seen 2026-03-25 06:08:49 UTC (layer 224)
inputMediaGame_d33f43f3#d33f43f3 id:InputGame = InputMedia;

// ===== inputMediaGeoLive =====
// first seen 2026-03-25 06:08:49 UTC (layer 224)
inputMediaGeoLive_971fa843#971fa843 flags:# stopped:flags.0?true geo_point:inputGeoPoint_48222faf heading:flags.2?int period:flags.1?int proximity_notification_radius:flags.3?int = InputMedia;

// ===== inputMediaGeoPoint =====
// first seen 2026-03-25 06:08:49 UTC (layer 224)
inputMediaGeoPoint_f9c44144#f9c44144 geo_point:inputGeoPoint_48222faf = InputMedia;

// ===== inputMediaInvoice =====
// first seen 2026-03-25 06:08:49 UTC (layer 224)
inputMediaInvoice_405fef0d#405fef0d flags:# title:string description:string photo:flags.0?inputWebDocument_9bed434d invoice:invoice_49ee584 payload:bytes provider:flags.3?string provider_data:dataJSON_7d748d04 start_param:flags.1?string extended_media:flags.2?InputMedia = InputMedia;

// ===== inputMediaPaidMedia =====
// first seen 2026-03-25 06:08:49 UTC (layer 224)
inputMediaPaidMedia_c4103386#c4103386 flags:# stars_amount:long extended_media:Vector<InputMedia> payload:flags.0?string = InputMedia;

// ===== inputMediaPhoto =====
// first seen 2026-03-25 06:08:49 UTC (layer 224)
inputMediaPhoto_e3af4434#e3af4434 flags:# spoiler:flags.1?true live_photo:flags.2?true id:inputPhoto_3bb3b94a ttl_seconds:flags.0?int video:flags.2?inputDocument_1abfb575 = InputMedia;

// ===== inputMediaPhotoExternal =====
// first seen 2026-03-25 06:08:49 UTC (layer 224)
inputMediaPhotoExternal_e5bbfe1a#e5bbfe1a flags:# spoiler:flags.1?true url:string ttl_seconds:flags.0?int = InputMedia;

// ===== inputMediaPoll =====
// first seen 2026-03-25 06:08:49 UTC (layer 224)
inputMediaPoll_b6bbf92a#b6bbf92a flags:# poll:poll_b8425be9 correct_answers:flags.0?Vector<bytes> attached_media:flags.3?InputMedia solution:flags.1?string solution_entities:flags.1?Vector<MessageEntity> solution_media:flags.2?InputMedia = InputMedia;
// first seen 2026-03-25 06:08:50 UTC (layer 224)
inputMediaPoll_883a4108#883a4108 flags:# poll:poll_b8425be9 correct_answers:flags.0?Vector<int> attached_media:flags.3?InputMedia solution:flags.1?string solution_entities:flags.1?Vector<MessageEntity> solution_media:flags.2?InputMedia = InputMedia;

// ===== inputMediaStakeDice =====
// first seen 2026-03-25 06:08:49 UTC (layer 224)
inputMediaStakeDice_f3a9244a#f3a9244a game_hash:string ton_amount:long client_seed:bytes = InputMedia;

// ===== inputMediaStory =====
// first seen 2026-03-25 06:08:49 UTC (layer 224)
inputMediaStory_89fdd778#89fdd778 peer:InputPeer id:int = InputMedia;

// ===== inputMediaTodo =====
// first seen 2026-03-25 06:08:49 UTC (layer 224)
inputMediaTodo_9fc55fde#9fc55fde todo:todoList_49b92a26 = InputMedia;

// ===== inputMediaUploadedDocument =====
// first seen 2026-03-25 06:08:49 UTC (layer 224)
inputMediaUploadedDocument_37c9330#37c9330 flags:# nosound_video:flags.3?true force_file:flags.4?true spoiler:flags.5?true file:inputFile_f52ff27f thumb:flags.2?inputFile_f52ff27f mime_type:string attributes:Vector<DocumentAttribute> stickers:flags.0?Vector<inputDocument_1abfb575> video_cover:flags.6?inputPhoto_3bb3b94a video_timestamp:flags.7?int ttl_seconds:flags.1?int = InputMedia;

// ===== inputMediaUploadedPhoto =====
// first seen 2026-03-25 06:08:49 UTC (layer 224)
inputMediaUploadedPhoto_7d8375da#7d8375da flags:# spoiler:flags.2?true live_photo:flags.3?true file:inputFile_f52ff27f stickers:flags.0?Vector<inputDocument_1abfb575> ttl_seconds:flags.1?int video:flags.3?inputDocument_1abfb575 = InputMedia;

// ===== inputMediaVenue =====
// first seen 2026-03-25 06:08:49 UTC (layer 224)
inputMediaVenue_c13d1c11#c13d1c11 geo_point:inputGeoPoint_48222faf title:string address:string provider:string venue_id:string venue_type:string = InputMedia;

// ===== inputMediaWebPage =====
// first seen 2026-03-25 06:08:49 UTC (layer 224)
inputMediaWebPage_c21b8849#c21b8849 flags:# force_large_media:flags.0?true force_small_media:flags.1?true optional:flags.2?true url:string = InputMedia;

// ===== inputMessageEntityMentionName =====
// first seen 2023-07-20 03:20:07 UTC (layer 160)
inputMessageEntityMentionName_208e68c9#208e68c9 offset:int length:int user_id:inputUser_f21158c6 = MessageEntity;

// ===== inputPeerChannel =====
// first seen 2023-07-20 03:20:07 UTC (layer 160)
inputPeerChannel_27bcbbfc#27bcbbfc channel_id:long access_hash:long = InputPeer;

// ===== inputPeerChannelFromMessage =====
// first seen 2023-07-20 03:20:07 UTC (layer 160)
inputPeerChannelFromMessage_bd2a0840#bd2a0840 peer:InputPeer msg_id:int channel_id:long = InputPeer;

// ===== inputPeerChat =====
// first seen 2023-07-20 03:20:07 UTC (layer 160)
inputPeerChat_35a95cb9#35a95cb9 chat_id:long = InputPeer;

// ===== inputPeerColorCollectible =====
// first seen 2025-10-10 05:26:59 UTC (layer 216)
inputPeerColorCollectible_b8ea86a9#b8ea86a9 collectible_id:long = PeerColor;

// ===== inputPeerEmpty =====
// first seen 2023-07-20 03:20:07 UTC (layer 160)
inputPeerEmpty_7f3b18ea#7f3b18ea = InputPeer;

// ===== inputPeerSelf =====
// first seen 2023-07-20 03:20:07 UTC (layer 160)
inputPeerSelf_7da07ec9#7da07ec9 = InputPeer;

// ===== inputPeerUser =====
// first seen 2023-07-20 03:20:07 UTC (layer 160)
inputPeerUser_dde8a54c#dde8a54c user_id:long access_hash:long = InputPeer;

// ===== inputPeerUserFromMessage =====
// first seen 2023-07-20 03:20:07 UTC (layer 160)
inputPeerUserFromMessage_a87b0a1c#a87b0a1c peer:InputPeer msg_id:int user_id:long = InputPeer;

// ===== inputPhoto =====
// first seen 2026-03-25 06:08:49 UTC (layer 224)
inputPhoto_3bb3b94a#3bb3b94a id:long access_hash:long file_reference:bytes = InputPhoto;

// ===== inputPhotoEmpty =====
// first seen 2026-03-25 06:08:49 UTC (layer 224)
inputPhotoEmpty_1cd7bf0d#1cd7bf0d = InputPhoto;

// ===== inputPollAnswer =====
// first seen 2026-03-25 06:08:49 UTC (layer 224)
inputPollAnswer_f1de1a00#f1de1a00 flags:# text:textWithEntities_751f3146 option:bytes media:flags.0?InputMedia = PollAnswer;
// first seen 2026-03-25 06:08:50 UTC (layer 224)
inputPollAnswer_199fed96#199fed96 flags:# text:textWithEntities_751f3146 media:flags.0?InputMedia = PollAnswer;

// ===== inputStickerSetAnimatedEmoji =====
// first seen 2022-05-19 13:27:01 UTC (layer 142)
inputStickerSetAnimatedEmoji_28703c8#28703c8 = InputStickerSet;

// ===== inputStickerSetAnimatedEmojiAnimations =====
// first seen 2022-05-19 13:27:01 UTC (layer 142)
inputStickerSetAnimatedEmojiAnimations_cde3739#cde3739 = InputStickerSet;

// ===== inputStickerSetDice =====
// first seen 2022-05-19 13:27:01 UTC (layer 142)
inputStickerSetDice_e67f520e#e67f520e emoticon:string = InputStickerSet;

// ===== inputStickerSetEmojiChannelDefaultStatuses =====
// first seen 2023-12-22 11:35:02 UTC (layer 169)
inputStickerSetEmojiChannelDefaultStatuses_49748553#49748553 = InputStickerSet;

// ===== inputStickerSetEmojiDefaultStatuses =====
// first seen 2022-09-02 17:14:34 UTC (layer 145)
inputStickerSetEmojiDefaultStatuses_29d0f5ee#29d0f5ee = InputStickerSet;

// ===== inputStickerSetEmojiDefaultTopicIcons =====
// first seen 2022-11-01 15:25:38 UTC (layer 148)
inputStickerSetEmojiDefaultTopicIcons_44c1f8e9#44c1f8e9 = InputStickerSet;

// ===== inputStickerSetEmojiGenericAnimations =====
// first seen 2022-09-02 17:14:32 UTC (layer 145)
inputStickerSetEmojiGenericAnimations_4c4d4ce#4c4d4ce = InputStickerSet;

// ===== inputStickerSetEmpty =====
// first seen 2022-05-19 13:27:01 UTC (layer 142)
inputStickerSetEmpty_ffb62b95#ffb62b95 = InputStickerSet;

// ===== inputStickerSetID =====
// first seen 2022-05-19 13:27:01 UTC (layer 142)
inputStickerSetID_9de7a269#9de7a269 id:long access_hash:long = InputStickerSet;

// ===== inputStickerSetPremiumGifts =====
// first seen 2022-07-26 17:12:10 UTC (layer 144)
inputStickerSetPremiumGifts_c88b3b02#c88b3b02 = InputStickerSet;

// ===== inputStickerSetShortName =====
// first seen 2022-05-19 13:27:01 UTC (layer 142)
inputStickerSetShortName_861cc8a0#861cc8a0 short_name:string = InputStickerSet;

// ===== inputStickerSetTonGifts =====
// first seen 2025-06-29 17:42:52 UTC (layer 206)
inputStickerSetTonGifts_1cf671a0#1cf671a0 = InputStickerSet;

// ===== inputUser =====
// first seen 2023-07-20 03:20:07 UTC (layer 160)
inputUser_f21158c6#f21158c6 user_id:long access_hash:long = InputUser;

// ===== inputUserEmpty =====
// first seen 2023-07-20 03:20:07 UTC (layer 160)
inputUserEmpty_b98886cf#b98886cf = InputUser;

// ===== inputUserFromMessage =====
// first seen 2023-07-20 03:20:07 UTC (layer 160)
inputUserFromMessage_1da448e2#1da448e2 peer:InputPeer msg_id:int user_id:long = InputUser;

// ===== inputUserSelf =====
// first seen 2023-07-20 03:20:07 UTC (layer 160)
inputUserSelf_f7c1b13f#f7c1b13f = InputUser;

// ===== inputWebDocument =====
// first seen 2026-03-25 06:08:49 UTC (layer 224)
inputWebDocument_9bed434d#9bed434d url:string size:int mime_type:string attributes:Vector<DocumentAttribute> = InputWebDocument;

// ===== invoice =====
// first seen 2026-03-25 06:08:49 UTC (layer 224)
invoice_49ee584#49ee584 flags:# test:flags.0?true name_requested:flags.1?true phone_requested:flags.2?true email_requested:flags.3?true shipping_address_requested:flags.4?true flexible:flags.5?true phone_to_provider:flags.6?true email_to_provider:flags.7?true recurring:flags.9?true currency:string prices:Vector<labeledPrice_cb296bf8> max_tip_amount:flags.8?long suggested_tip_amounts:flags.8?Vector<long> terms_url:flags.10?string subscription_period:flags.11?int = Invoice;

// ===== labeledPrice =====
// first seen 2026-03-25 06:08:49 UTC (layer 224)
labeledPrice_cb296bf8#cb296bf8 label:string amount:long = LabeledPrice;

// ===== maskCoords =====
// first seen 2022-05-19 13:27:01 UTC (layer 142)
maskCoords_aed6dbb2#aed6dbb2 n:int x:double y:double zoom:double = MaskCoords;

// ===== mediaAreaChannelPost =====
// first seen 2023-12-16 20:25:02 UTC (layer 168)
mediaAreaChannelPost_770416af#770416af coordinates:mediaAreaCoordinates_3d1ea4e channel_id:long msg_id:int = MediaArea;

// ===== mediaAreaCoordinates =====
// first seen 2023-08-14 20:30:37 UTC (layer 161)
mediaAreaCoordinates_3d1ea4e#3d1ea4e x:double y:double w:double h:double rotation:double = MediaAreaCoordinates;
// first seen 2024-06-30 17:16:07 UTC (layer 182)
mediaAreaCoordinates_cfc9e002#cfc9e002 flags:# x:double y:double w:double h:double rotation:double radius:flags.0?double = MediaAreaCoordinates;

// ===== mediaAreaGeoPoint =====
// first seen 2023-08-14 20:30:37 UTC (layer 161)
mediaAreaGeoPoint_df8b3b22#df8b3b22 coordinates:mediaAreaCoordinates_3d1ea4e geo:geoPoint_b2a2f663 = MediaArea;
// first seen 2024-06-30 17:16:07 UTC (layer 182)
mediaAreaGeoPoint_cad5452d#cad5452d flags:# coordinates:mediaAreaCoordinates_cfc9e002 geo:geoPoint_b2a2f663 address:flags.0?geoPointAddress_de4c5d93 = MediaArea;

// ===== mediaAreaStarGift =====
// first seen 2025-01-22 18:13:25 UTC (layer 197)
mediaAreaStarGift_5787686d#5787686d coordinates:mediaAreaCoordinates_cfc9e002 slug:string = MediaArea;

// ===== mediaAreaSuggestedReaction =====
// first seen 2023-09-22 05:43:31 UTC (layer 164)
mediaAreaSuggestedReaction_14455871#14455871 flags:# dark:flags.0?true flipped:flags.1?true coordinates:mediaAreaCoordinates_3d1ea4e reaction:Reaction = MediaArea;

// ===== mediaAreaUrl =====
// first seen 2024-06-30 17:16:07 UTC (layer 182)
mediaAreaUrl_37381085#37381085 coordinates:mediaAreaCoordinates_cfc9e002 url:string = MediaArea;

// ===== mediaAreaVenue =====
// first seen 2023-08-14 20:30:37 UTC (layer 161)
mediaAreaVenue_be82db9c#be82db9c coordinates:mediaAreaCoordinates_3d1ea4e geo:geoPoint_b2a2f663 title:string address:string provider:string venue_id:string venue_type:string = MediaArea;

// ===== mediaAreaWeather =====
// first seen 2024-07-31 15:03:53 UTC (layer 185)
mediaAreaWeather_49a6549c#49a6549c coordinates:mediaAreaCoordinates_cfc9e002 emoji:string temperature_c:double color:int = MediaArea;

// ===== messageEntityBankCard =====
// first seen 2023-07-20 03:20:07 UTC (layer 160)
messageEntityBankCard_761e6af4#761e6af4 offset:int length:int = MessageEntity;

// ===== messageEntityBlockquote =====
// first seen 2023-07-20 03:20:07 UTC (layer 160)
messageEntityBlockquote_20df5d0#20df5d0 offset:int length:int = MessageEntity;
// first seen 2024-05-30 17:35:07 UTC (layer 181)
messageEntityBlockquote_f1ccaaac#f1ccaaac flags:# collapsed:flags.0?true offset:int length:int = MessageEntity;

// ===== messageEntityBold =====
// first seen 2023-07-20 03:20:07 UTC (layer 160)
messageEntityBold_bd610bc9#bd610bc9 offset:int length:int = MessageEntity;

// ===== messageEntityBotCommand =====
// first seen 2023-07-20 03:20:07 UTC (layer 160)
messageEntityBotCommand_6cef8ac7#6cef8ac7 offset:int length:int = MessageEntity;

// ===== messageEntityCashtag =====
// first seen 2023-07-20 03:20:07 UTC (layer 160)
messageEntityCashtag_4c4e743f#4c4e743f offset:int length:int = MessageEntity;

// ===== messageEntityCode =====
// first seen 2023-07-20 03:20:07 UTC (layer 160)
messageEntityCode_28a20571#28a20571 offset:int length:int = MessageEntity;

// ===== messageEntityCustomEmoji =====
// first seen 2023-07-20 03:20:07 UTC (layer 160)
messageEntityCustomEmoji_c8cf05f8#c8cf05f8 offset:int length:int document_id:long = MessageEntity;

// ===== messageEntityDiffDelete =====
// first seen 2026-03-25 06:08:50 UTC (layer 224)
messageEntityDiffDelete_652c1c5#652c1c5 offset:int length:int = MessageEntity;

// ===== messageEntityDiffInsert =====
// first seen 2026-03-25 06:08:50 UTC (layer 224)
messageEntityDiffInsert_71777116#71777116 offset:int length:int = MessageEntity;

// ===== messageEntityDiffReplace =====
// first seen 2026-03-25 06:08:50 UTC (layer 224)
messageEntityDiffReplace_c6c1e5a7#c6c1e5a7 offset:int length:int old_text:string = MessageEntity;

// ===== messageEntityEmail =====
// first seen 2023-07-20 03:20:07 UTC (layer 160)
messageEntityEmail_64e475c2#64e475c2 offset:int length:int = MessageEntity;

// ===== messageEntityFormattedDate =====
// first seen 2026-02-28 15:07:09 UTC (layer 223)
messageEntityFormattedDate_904ac7c7#904ac7c7 flags:# relative:flags.0?true short_time:flags.1?true long_time:flags.2?true short_date:flags.3?true long_date:flags.4?true day_of_week:flags.5?true offset:int length:int date:int = MessageEntity;

// ===== messageEntityHashtag =====
// first seen 2023-07-20 03:20:07 UTC (layer 160)
messageEntityHashtag_6f635b0d#6f635b0d offset:int length:int = MessageEntity;

// ===== messageEntityItalic =====
// first seen 2023-07-20 03:20:07 UTC (layer 160)
messageEntityItalic_826f8b60#826f8b60 offset:int length:int = MessageEntity;

// ===== messageEntityMention =====
// first seen 2023-07-20 03:20:07 UTC (layer 160)
messageEntityMention_fa04579d#fa04579d offset:int length:int = MessageEntity;

// ===== messageEntityMentionName =====
// first seen 2023-07-20 03:20:07 UTC (layer 160)
messageEntityMentionName_dc7b1140#dc7b1140 offset:int length:int user_id:long = MessageEntity;

// ===== messageEntityPhone =====
// first seen 2023-07-20 03:20:07 UTC (layer 160)
messageEntityPhone_9b69e34b#9b69e34b offset:int length:int = MessageEntity;

// ===== messageEntityPre =====
// first seen 2023-07-20 03:20:07 UTC (layer 160)
messageEntityPre_73924be0#73924be0 offset:int length:int language:string = MessageEntity;

// ===== messageEntitySpoiler =====
// first seen 2023-07-20 03:20:07 UTC (layer 160)
messageEntitySpoiler_32ca960f#32ca960f offset:int length:int = MessageEntity;

// ===== messageEntityStrike =====
// first seen 2023-07-20 03:20:07 UTC (layer 160)
messageEntityStrike_bf0693d4#bf0693d4 offset:int length:int = MessageEntity;

// ===== messageEntityTextUrl =====
// first seen 2023-07-20 03:20:07 UTC (layer 160)
messageEntityTextUrl_76a6d327#76a6d327 offset:int length:int url:string = MessageEntity;

// ===== messageEntityUnderline =====
// first seen 2023-07-20 03:20:07 UTC (layer 160)
messageEntityUnderline_9c4e7e8b#9c4e7e8b offset:int length:int = MessageEntity;

// ===== messageEntityUnknown =====
// first seen 2023-07-20 03:20:07 UTC (layer 160)
messageEntityUnknown_bb92ba95#bb92ba95 offset:int length:int = MessageEntity;

// ===== messageEntityUrl =====
// first seen 2023-07-20 03:20:07 UTC (layer 160)
messageEntityUrl_6ed02538#6ed02538 offset:int length:int = MessageEntity;

// ===== messageExtendedMedia =====
// first seen 2023-07-20 03:20:07 UTC (layer 160)
messageExtendedMedia_ee479c64#ee479c64 media:MessageMedia = MessageExtendedMedia;

// ===== messageExtendedMediaPreview =====
// first seen 2023-07-20 03:20:07 UTC (layer 160)
messageExtendedMediaPreview_ad628cc8#ad628cc8 flags:# w:flags.0?int h:flags.0?int thumb:flags.1?photoSize_75c78e60 video_duration:flags.2?int = MessageExtendedMedia;

// ===== messageMediaContact =====
// first seen 2023-07-20 03:20:07 UTC (layer 160)
messageMediaContact_70322949#70322949 phone_number:string first_name:string last_name:string vcard:string user_id:long = MessageMedia;

// ===== messageMediaDice =====
// first seen 2023-07-20 03:20:07 UTC (layer 160)
messageMediaDice_3f7ee58b#3f7ee58b value:int emoticon:string = MessageMedia;
// first seen 2025-12-29 07:21:22 UTC (layer 221)
messageMediaDice_8cbec07#8cbec07 flags:# value:int emoticon:string game_outcome:flags.0?messages.EmojiGameOutcome = MessageMedia;

// ===== messageMediaDocument =====
// first seen 2023-12-31 15:42:23 UTC (layer 170)
messageMediaDocument_4cf4d72d#4cf4d72d flags:# nopremium:flags.3?true spoiler:flags.4?true video:flags.6?true round:flags.7?true voice:flags.8?true document:flags.0?document_8fd4c4d8 alt_document:flags.5?document_8fd4c4d8 ttl_seconds:flags.2?int = MessageMedia;
// first seen 2024-09-19 08:47:54 UTC (layer 188)
messageMediaDocument_dd570bd5#dd570bd5 flags:# nopremium:flags.3?true spoiler:flags.4?true video:flags.6?true round:flags.7?true voice:flags.8?true document:flags.0?document_8fd4c4d8 alt_documents:flags.5?Vector<document_8fd4c4d8> ttl_seconds:flags.2?int = MessageMedia;
// first seen 2025-01-22 18:13:26 UTC (layer 198)
messageMediaDocument_dbbdf614#dbbdf614 flags:# nopremium:flags.3?true spoiler:flags.4?true video:flags.6?true round:flags.7?true voice:flags.8?true document:flags.0?document_8fd4c4d8 alt_documents:flags.5?Vector<document_8fd4c4d8> video_cover:flags.9?photo_fb197a65 ttl_seconds:flags.2?int = MessageMedia;
// first seen 2026-02-28 15:07:08 UTC (layer 223)
messageMediaDocument_52d8ccd9#52d8ccd9 flags:# nopremium:flags.3?true spoiler:flags.4?true video:flags.6?true round:flags.7?true voice:flags.8?true live_photo:flags.11?true document:flags.0?document_8fd4c4d8 alt_documents:flags.5?Vector<document_8fd4c4d8> video_cover:flags.9?photo_fb197a65 video_timestamp:flags.10?int ttl_seconds:flags.2?int = MessageMedia;

// ===== messageMediaEmpty =====
// first seen 2023-07-20 03:20:07 UTC (layer 160)
messageMediaEmpty_3ded6320#3ded6320 = MessageMedia;

// ===== messageMediaGame =====
// first seen 2023-07-20 03:20:07 UTC (layer 160)
messageMediaGame_fdb19008#fdb19008 game:game_bdf9653b = MessageMedia;

// ===== messageMediaGeo =====
// first seen 2023-07-20 03:20:07 UTC (layer 160)
messageMediaGeo_56e0d474#56e0d474 geo:geoPoint_b2a2f663 = MessageMedia;

// ===== messageMediaGeoLive =====
// first seen 2023-07-20 03:20:07 UTC (layer 160)
messageMediaGeoLive_b940c666#b940c666 flags:# geo:geoPoint_b2a2f663 heading:flags.0?int period:int proximity_notification_radius:flags.1?int = MessageMedia;

// ===== messageMediaGiveaway =====
// first seen 2023-10-26 10:08:40 UTC (layer 166)
messageMediaGiveaway_58260664#58260664 flags:# only_new_subscribers:flags.0?true channels:Vector<long> countries_iso2:flags.1?Vector<string> quantity:int months:int until_date:int = MessageMedia;
// first seen 2023-12-16 20:25:02 UTC (layer 168)
messageMediaGiveaway_daad85b0#daad85b0 flags:# only_new_subscribers:flags.0?true winners_are_visible:flags.2?true channels:Vector<long> countries_iso2:flags.1?Vector<string> prize_description:flags.3?string quantity:int months:int until_date:int = MessageMedia;
// first seen 2024-09-06 17:36:03 UTC (layer 187)
messageMediaGiveaway_aa073beb#aa073beb flags:# only_new_subscribers:flags.0?true winners_are_visible:flags.2?true channels:Vector<long> countries_iso2:flags.1?Vector<string> prize_description:flags.3?string quantity:int months:flags.4?int stars:flags.5?long until_date:int = MessageMedia;

// ===== messageMediaGiveawayResults =====
// first seen 2023-12-16 20:25:02 UTC (layer 168)
messageMediaGiveawayResults_c6991068#c6991068 flags:# only_new_subscribers:flags.0?true refunded:flags.2?true channel_id:long additional_peers_count:flags.3?int launch_msg_id:int winners_count:int unclaimed_count:int winners:Vector<long> months:int prize_description:flags.1?string until_date:int = MessageMedia;
// first seen 2024-09-06 17:36:03 UTC (layer 187)
messageMediaGiveawayResults_ceaa3ea1#ceaa3ea1 flags:# only_new_subscribers:flags.0?true refunded:flags.2?true channel_id:long additional_peers_count:flags.3?int launch_msg_id:int winners_count:int unclaimed_count:int winners:Vector<long> months:flags.4?int stars:flags.5?long prize_description:flags.1?string until_date:int = MessageMedia;

// ===== messageMediaInvoice =====
// first seen 2023-07-20 03:20:07 UTC (layer 160)
messageMediaInvoice_f6a548d3#f6a548d3 flags:# shipping_address_requested:flags.1?true test:flags.3?true title:string description:string photo:flags.0?webDocument_1c570ed1 receipt_msg_id:flags.2?int currency:string total_amount:long start_param:string extended_media:flags.4?messageExtendedMedia_ee479c64 = MessageMedia;

// ===== messageMediaPaidMedia =====
// first seen 2024-06-30 17:16:08 UTC (layer 183)
messageMediaPaidMedia_a8852491#a8852491 stars_amount:long extended_media:Vector<messageExtendedMedia_ee479c64> = MessageMedia;

// ===== messageMediaPhoto =====
// first seen 2023-07-20 03:20:07 UTC (layer 160)
messageMediaPhoto_695150d7#695150d7 flags:# spoiler:flags.3?true photo:flags.0?photo_fb197a65 ttl_seconds:flags.2?int = MessageMedia;
// first seen 2026-03-25 06:08:49 UTC (layer 224)
messageMediaPhoto_e216eb63#e216eb63 flags:# spoiler:flags.3?true live_photo:flags.4?true photo:flags.0?photo_fb197a65 ttl_seconds:flags.2?int video:flags.4?document_8fd4c4d8 = MessageMedia;

// ===== messageMediaPoll =====
// first seen 2023-07-20 03:20:07 UTC (layer 160)
messageMediaPoll_4bd6e798#4bd6e798 poll:poll_86e18161 results:pollResults_7adf2420 = MessageMedia;
// first seen 2026-03-25 06:08:49 UTC (layer 224)
messageMediaPoll_773f4e66#773f4e66 flags:# poll:poll_b8425be9 results:pollResults_ba7bb15e attached_media:flags.0?MessageMedia = MessageMedia;

// ===== messageMediaStory =====
// first seen 2023-07-20 03:20:10 UTC (layer 160)
messageMediaStory_c79aee11#c79aee11 user_id:long id:int = MessageMedia;
// first seen 2023-07-20 03:20:12 UTC (layer 160)
messageMediaStory_cbb20d88#cbb20d88 flags:# via_mention:flags.1?true user_id:long id:int story:flags.0?storyItem_562aa637 = MessageMedia;
// first seen 2023-09-22 05:43:31 UTC (layer 164)
messageMediaStory_68cb6283#68cb6283 flags:# via_mention:flags.1?true peer:Peer id:int story:flags.0?storyItem_44c457ce = MessageMedia;

// ===== messageMediaToDo =====
// first seen 2025-06-27 17:29:33 UTC (layer 206)
messageMediaToDo_8a53b014#8a53b014 flags:# todo:todoList_49b92a26 completions:flags.0?Vector<todoCompletion_4cc120b7> = MessageMedia;

// ===== messageMediaUnsupported =====
// first seen 2023-07-20 03:20:07 UTC (layer 160)
messageMediaUnsupported_9f84f49e#9f84f49e = MessageMedia;

// ===== messageMediaVenue =====
// first seen 2023-07-20 03:20:07 UTC (layer 160)
messageMediaVenue_2ec0533f#2ec0533f geo:geoPoint_b2a2f663 title:string address:string provider:string venue_id:string venue_type:string = MessageMedia;

// ===== messageMediaVideoStream =====
// first seen 2025-11-15 07:59:17 UTC (layer 217)
messageMediaVideoStream_3f237b91#3f237b91 call:inputGroupCall_d8aa840f = MessageMedia;
// first seen 2025-11-15 07:59:18 UTC (layer 217)
messageMediaVideoStream_ca5cab89#ca5cab89 flags:# rtmp_stream:flags.0?true call:inputGroupCall_d8aa840f = MessageMedia;

// ===== messageMediaWebPage =====
// first seen 2023-07-20 03:20:07 UTC (layer 160)
messageMediaWebPage_a32dd600#a32dd600 webpage:webPage_e89c45b2 = MessageMedia;
// first seen 2023-10-26 10:08:41 UTC (layer 166)
messageMediaWebPage_ddf10c3b#ddf10c3b flags:# force_large_media:flags.0?true force_small_media:flags.1?true manual:flags.3?true safe:flags.4?true webpage:webPage_e89c45b2 = MessageMedia;

// ===== notificationSoundDefault =====
// first seen 2022-03-30 08:23:06 UTC (layer 140)
notificationSoundDefault_97e8bebe#97e8bebe = NotificationSound;

// ===== notificationSoundLocal =====
// first seen 2022-03-30 08:23:06 UTC (layer 140)
notificationSoundLocal_830b9ae4#830b9ae4 title:string data:string = NotificationSound;

// ===== notificationSoundNone =====
// first seen 2022-03-30 08:23:06 UTC (layer 140)
notificationSoundNone_6f0c34df#6f0c34df = NotificationSound;

// ===== notificationSoundRingtone =====
// first seen 2022-03-30 08:23:06 UTC (layer 140)
notificationSoundRingtone_ff6c8049#ff6c8049 id:long = NotificationSound;

// ===== page =====
// first seen 2023-07-20 03:20:07 UTC (layer 160)
page_98657f0d#98657f0d flags:# part:flags.0?true rtl:flags.1?true v2:flags.2?true url:string blocks:Vector<PageBlock> photos:Vector<photo_fb197a65> documents:Vector<document_8fd4c4d8> views:flags.3?int = Page;

// ===== pageBlockAnchor =====
// first seen 2023-07-20 03:20:07 UTC (layer 160)
pageBlockAnchor_ce0d37b0#ce0d37b0 name:string = PageBlock;

// ===== pageBlockAudio =====
// first seen 2023-07-20 03:20:07 UTC (layer 160)
pageBlockAudio_804361ea#804361ea audio_id:long caption:pageCaption_6f747657 = PageBlock;

// ===== pageBlockAuthorDate =====
// first seen 2023-07-20 03:20:07 UTC (layer 160)
pageBlockAuthorDate_baafe5e0#baafe5e0 author:RichText published_date:int = PageBlock;

// ===== pageBlockBlockquote =====
// first seen 2023-07-20 03:20:07 UTC (layer 160)
pageBlockBlockquote_263d7c26#263d7c26 text:RichText caption:RichText = PageBlock;

// ===== pageBlockChannel =====
// first seen 2023-07-20 03:20:07 UTC (layer 160)
pageBlockChannel_ef1751b5#ef1751b5 channel:chat_41cbf256 = PageBlock;

// ===== pageBlockCollage =====
// first seen 2023-07-20 03:20:07 UTC (layer 160)
pageBlockCollage_65a0fa4d#65a0fa4d items:Vector<PageBlock> caption:pageCaption_6f747657 = PageBlock;

// ===== pageBlockCover =====
// first seen 2023-07-20 03:20:07 UTC (layer 160)
pageBlockCover_39f23300#39f23300 cover:PageBlock = PageBlock;

// ===== pageBlockDetails =====
// first seen 2023-07-20 03:20:07 UTC (layer 160)
pageBlockDetails_76768bed#76768bed flags:# open:flags.0?true blocks:Vector<PageBlock> title:RichText = PageBlock;

// ===== pageBlockDivider =====
// first seen 2023-07-20 03:20:07 UTC (layer 160)
pageBlockDivider_db20b188#db20b188 = PageBlock;

// ===== pageBlockEmbed =====
// first seen 2023-07-20 03:20:07 UTC (layer 160)
pageBlockEmbed_a8718dc5#a8718dc5 flags:# full_width:flags.0?true allow_scrolling:flags.3?true url:flags.1?string html:flags.2?string poster_photo_id:flags.4?long w:flags.5?int h:flags.5?int caption:pageCaption_6f747657 = PageBlock;

// ===== pageBlockEmbedPost =====
// first seen 2023-07-20 03:20:07 UTC (layer 160)
pageBlockEmbedPost_f259a80b#f259a80b url:string webpage_id:long author_photo_id:long author:string date:int blocks:Vector<PageBlock> caption:pageCaption_6f747657 = PageBlock;

// ===== pageBlockFooter =====
// first seen 2023-07-20 03:20:07 UTC (layer 160)
pageBlockFooter_48870999#48870999 text:RichText = PageBlock;

// ===== pageBlockHeader =====
// first seen 2023-07-20 03:20:07 UTC (layer 160)
pageBlockHeader_bfd064ec#bfd064ec text:RichText = PageBlock;

// ===== pageBlockKicker =====
// first seen 2023-07-20 03:20:07 UTC (layer 160)
pageBlockKicker_1e148390#1e148390 text:RichText = PageBlock;

// ===== pageBlockList =====
// first seen 2023-07-20 03:20:07 UTC (layer 160)
pageBlockList_e4e88011#e4e88011 items:Vector<PageListItem> = PageBlock;

// ===== pageBlockMap =====
// first seen 2023-07-20 03:20:07 UTC (layer 160)
pageBlockMap_a44f3ef6#a44f3ef6 geo:geoPoint_b2a2f663 zoom:int w:int h:int caption:pageCaption_6f747657 = PageBlock;

// ===== pageBlockOrderedList =====
// first seen 2023-07-20 03:20:07 UTC (layer 160)
pageBlockOrderedList_9a8ae1e1#9a8ae1e1 items:Vector<PageListOrderedItem> = PageBlock;

// ===== pageBlockParagraph =====
// first seen 2023-07-20 03:20:07 UTC (layer 160)
pageBlockParagraph_467a0766#467a0766 text:RichText = PageBlock;

// ===== pageBlockPhoto =====
// first seen 2023-07-20 03:20:07 UTC (layer 160)
pageBlockPhoto_1759c560#1759c560 flags:# photo_id:long caption:pageCaption_6f747657 url:flags.0?string webpage_id:flags.0?long = PageBlock;

// ===== pageBlockPreformatted =====
// first seen 2023-07-20 03:20:07 UTC (layer 160)
pageBlockPreformatted_c070d93e#c070d93e text:RichText language:string = PageBlock;

// ===== pageBlockPullquote =====
// first seen 2023-07-20 03:20:07 UTC (layer 160)
pageBlockPullquote_4f4456d3#4f4456d3 text:RichText caption:RichText = PageBlock;

// ===== pageBlockRelatedArticles =====
// first seen 2023-07-20 03:20:07 UTC (layer 160)
pageBlockRelatedArticles_16115a96#16115a96 title:RichText articles:Vector<pageRelatedArticle_b390dc08> = PageBlock;

// ===== pageBlockSlideshow =====
// first seen 2023-07-20 03:20:07 UTC (layer 160)
pageBlockSlideshow_31f9590#31f9590 items:Vector<PageBlock> caption:pageCaption_6f747657 = PageBlock;

// ===== pageBlockSubheader =====
// first seen 2023-07-20 03:20:07 UTC (layer 160)
pageBlockSubheader_f12bb6e1#f12bb6e1 text:RichText = PageBlock;

// ===== pageBlockSubtitle =====
// first seen 2023-07-20 03:20:07 UTC (layer 160)
pageBlockSubtitle_8ffa9a1f#8ffa9a1f text:RichText = PageBlock;

// ===== pageBlockTable =====
// first seen 2023-07-20 03:20:07 UTC (layer 160)
pageBlockTable_bf4dea82#bf4dea82 flags:# bordered:flags.0?true striped:flags.1?true title:RichText rows:Vector<pageTableRow_e0c0c5e5> = PageBlock;

// ===== pageBlockTitle =====
// first seen 2023-07-20 03:20:07 UTC (layer 160)
pageBlockTitle_70abc3fd#70abc3fd text:RichText = PageBlock;

// ===== pageBlockUnsupported =====
// first seen 2023-07-20 03:20:07 UTC (layer 160)
pageBlockUnsupported_13567e8a#13567e8a = PageBlock;

// ===== pageBlockVideo =====
// first seen 2023-07-20 03:20:07 UTC (layer 160)
pageBlockVideo_7c8fe7b6#7c8fe7b6 flags:# autoplay:flags.0?true loop:flags.1?true video_id:long caption:pageCaption_6f747657 = PageBlock;

// ===== pageCaption =====
// first seen 2023-07-20 03:20:07 UTC (layer 160)
pageCaption_6f747657#6f747657 text:RichText credit:RichText = PageCaption;

// ===== pageListItemBlocks =====
// first seen 2023-07-20 03:20:07 UTC (layer 160)
pageListItemBlocks_25e073fc#25e073fc blocks:Vector<PageBlock> = PageListItem;

// ===== pageListItemText =====
// first seen 2023-07-20 03:20:07 UTC (layer 160)
pageListItemText_b92fb6cd#b92fb6cd text:RichText = PageListItem;

// ===== pageListOrderedItemBlocks =====
// first seen 2023-07-20 03:20:07 UTC (layer 160)
pageListOrderedItemBlocks_98dd8936#98dd8936 num:string blocks:Vector<PageBlock> = PageListOrderedItem;

// ===== pageListOrderedItemText =====
// first seen 2023-07-20 03:20:07 UTC (layer 160)
pageListOrderedItemText_5e068047#5e068047 num:string text:RichText = PageListOrderedItem;

// ===== pageRelatedArticle =====
// first seen 2023-07-20 03:20:07 UTC (layer 160)
pageRelatedArticle_b390dc08#b390dc08 flags:# url:string webpage_id:long title:flags.0?string description:flags.1?string photo_id:flags.2?long author:flags.3?string published_date:flags.4?int = PageRelatedArticle;

// ===== pageTableCell =====
// first seen 2023-07-20 03:20:07 UTC (layer 160)
pageTableCell_34566b6a#34566b6a flags:# header:flags.0?true align_center:flags.3?true align_right:flags.4?true valign_middle:flags.5?true valign_bottom:flags.6?true text:flags.7?RichText colspan:flags.1?int rowspan:flags.2?int = PageTableCell;

// ===== pageTableRow =====
// first seen 2023-07-20 03:20:07 UTC (layer 160)
pageTableRow_e0c0c5e5#e0c0c5e5 cells:Vector<pageTableCell_34566b6a> = PageTableRow;

// ===== peerChannel =====
// first seen 2023-07-20 03:20:07 UTC (layer 160)
peerChannel_a2a5371e#a2a5371e channel_id:long = Peer;

// ===== peerChat =====
// first seen 2023-07-20 03:20:07 UTC (layer 160)
peerChat_36c6019a#36c6019a chat_id:long = Peer;

// ===== peerColor =====
// first seen 2023-11-28 17:55:24 UTC (layer 167)
peerColor_ba278146#ba278146 color:int background_emoji_id:long = PeerColor;
// first seen 2023-11-28 17:55:25 UTC (layer 167)
peerColor_b54b5acf#b54b5acf flags:# color:flags.0?int background_emoji_id:flags.1?long = PeerColor;

// ===== peerColorCollectible =====
// first seen 2025-10-10 05:26:59 UTC (layer 216)
peerColorCollectible_b9c0639a#b9c0639a flags:# collectible_id:long gift_emoji_id:long background_emoji_id:long accent_color:int colors:Vector<int> dark_accent_color:flags.0?int dark_colors:flags.1?Vector<int> = PeerColor;

// ===== peerHistoryTTL =====
// first seen 2021-02-22 19:42:40 UTC (layer 124)
peerHistoryTTL_3e11cee9#3e11cee9 ttl_period:int = PeerHistoryTTL;

// ===== peerHistoryTTLPM =====
// first seen 2021-02-22 19:42:40 UTC (layer 124)
peerHistoryTTLPM_cf622d96#cf622d96 flags:# my_oneside:flags.0?true my_ttl_period:flags.1?int peer_ttl_period:flags.2?int = PeerHistoryTTL;

// ===== peerNotifySettings =====
// first seen 2014-05-30 08:53:19 UTC (layer 15)
peerNotifySettings_8d5e11ee#8d5e11ee mute_until:int sound:string show_previews:Bool events_mask:int = PeerNotifySettings;
// first seen 2016-02-22 11:15:24 UTC (layer 48)
peerNotifySettings_9acda4c0#9acda4c0 flags:# show_previews:flags.0?true silent:flags.1?true mute_until:int sound:string = PeerNotifySettings;
// first seen 2018-05-30 15:44:46 UTC (layer 79)
peerNotifySettings_af509d20#af509d20 flags:# show_previews:flags.0?Bool silent:flags.1?Bool mute_until:flags.2?int sound:flags.3?string = PeerNotifySettings;
// first seen 2022-03-30 08:23:06 UTC (layer 140)
peerNotifySettings_a83b0426#a83b0426 flags:# show_previews:flags.0?Bool silent:flags.1?Bool mute_until:flags.2?int ios_sound:flags.3?NotificationSound android_sound:flags.4?NotificationSound other_sound:flags.5?NotificationSound = PeerNotifySettings;
// first seen 2023-07-20 03:20:11 UTC (layer 160)
peerNotifySettings_6cdc6e52#6cdc6e52 flags:# show_previews:flags.0?Bool silent:flags.1?Bool mute_until:flags.2?int ios_sound:flags.3?NotificationSound android_sound:flags.4?NotificationSound other_sound:flags.5?NotificationSound stories_muted:flags.6?Bool = PeerNotifySettings;
// first seen 2023-07-20 03:20:13 UTC (layer 160)
peerNotifySettings_99622c0c#99622c0c flags:# show_previews:flags.0?Bool silent:flags.1?Bool mute_until:flags.2?int ios_sound:flags.3?NotificationSound android_sound:flags.4?NotificationSound other_sound:flags.5?NotificationSound stories_muted:flags.6?Bool stories_hide_sender:flags.7?Bool stories_ios_sound:flags.8?NotificationSound stories_android_sound:flags.9?NotificationSound stories_other_sound:flags.10?NotificationSound = PeerNotifySettings;

// ===== peerNotifySettingsEmpty =====
// first seen 2014-05-30 08:53:19 UTC (layer 15)
peerNotifySettingsEmpty_70a68512#70a68512 = PeerNotifySettings;

// ===== peerSettings =====
// first seen 2019-06-21 09:06:44 UTC (layer 102)
peerSettings_818426cd#818426cd flags:# report_spam:flags.0?true add_contact:flags.1?true block_contact:flags.2?true share_contact:flags.3?true need_contacts_exception:flags.4?true report_geo:flags.5?true = PeerSettings;
// first seen 2021-01-25 13:42:02 UTC (layer 123)
peerSettings_733f2961#733f2961 flags:# report_spam:flags.0?true add_contact:flags.1?true block_contact:flags.2?true share_contact:flags.3?true need_contacts_exception:flags.4?true report_geo:flags.5?true autoarchived:flags.7?true invite_members:flags.8?true geo_distance:flags.6?int = PeerSettings;
// first seen 2021-11-26 14:00:20 UTC (layer 135)
peerSettings_a518110d#a518110d flags:# report_spam:flags.0?true add_contact:flags.1?true block_contact:flags.2?true share_contact:flags.3?true need_contacts_exception:flags.4?true report_geo:flags.5?true autoarchived:flags.7?true invite_members:flags.8?true request_chat_broadcast:flags.10?true geo_distance:flags.6?int request_chat_title:flags.9?string request_chat_date:flags.9?int = PeerSettings;
// first seen 2024-04-01 18:44:20 UTC (layer 177)
peerSettings_acd66c5e#acd66c5e flags:# report_spam:flags.0?true add_contact:flags.1?true block_contact:flags.2?true share_contact:flags.3?true need_contacts_exception:flags.4?true report_geo:flags.5?true autoarchived:flags.7?true invite_members:flags.8?true request_chat_broadcast:flags.10?true business_bot_paused:flags.11?true business_bot_can_reply:flags.12?true geo_distance:flags.6?int request_chat_title:flags.9?string request_chat_date:flags.9?int business_bot_id:flags.13?long business_bot_manage_url:flags.13?string = PeerSettings;
// first seen 2025-03-07 15:03:36 UTC (layer 200)
peerSettings_a8639d72#a8639d72 flags:# report_spam:flags.0?true add_contact:flags.1?true block_contact:flags.2?true share_contact:flags.3?true need_contacts_exception:flags.4?true report_geo:flags.5?true autoarchived:flags.7?true invite_members:flags.8?true request_chat_broadcast:flags.10?true business_bot_paused:flags.11?true business_bot_can_reply:flags.12?true geo_distance:flags.6?int request_chat_title:flags.9?string request_chat_date:flags.9?int business_bot_id:flags.13?long business_bot_manage_url:flags.13?string charge_paid_message_stars:flags.14?long = PeerSettings;
// first seen 2025-03-07 15:03:37 UTC (layer 200)
peerSettings_d8c39ec#d8c39ec flags:# report_spam:flags.0?true add_contact:flags.1?true block_contact:flags.2?true share_contact:flags.3?true need_contacts_exception:flags.4?true report_geo:flags.5?true autoarchived:flags.7?true invite_members:flags.8?true request_chat_broadcast:flags.10?true business_bot_paused:flags.11?true business_bot_can_reply:flags.12?true geo_distance:flags.6?int request_chat_title:flags.9?string request_chat_date:flags.9?int business_bot_id:flags.13?long business_bot_manage_url:flags.13?string charge_paid_message_stars:flags.14?long registration_month:flags.15?string phone_country:flags.16?string location_country:flags.17?string = PeerSettings;
// first seen 2025-03-07 15:03:38 UTC (layer 200)
peerSettings_f47741f7#f47741f7 flags:# report_spam:flags.0?true add_contact:flags.1?true block_contact:flags.2?true share_contact:flags.3?true need_contacts_exception:flags.4?true report_geo:flags.5?true autoarchived:flags.7?true invite_members:flags.8?true request_chat_broadcast:flags.10?true business_bot_paused:flags.11?true business_bot_can_reply:flags.12?true geo_distance:flags.6?int request_chat_title:flags.9?string request_chat_date:flags.9?int business_bot_id:flags.13?long business_bot_manage_url:flags.13?string charge_paid_message_stars:flags.14?long registration_month:flags.15?string phone_country:flags.16?string name_change_date:flags.17?int photo_change_date:flags.18?int = PeerSettings;

// ===== peerStories =====
// first seen 2023-09-22 05:43:31 UTC (layer 164)
peerStories_9a35e999#9a35e999 flags:# peer:Peer max_read_id:flags.0?int stories:Vector<storyItem_44c457ce> = PeerStories;

// ===== peerUser =====
// first seen 2023-07-20 03:20:07 UTC (layer 160)
peerUser_59511722#59511722 user_id:long = Peer;

// ===== photo =====
// first seen 2014-05-30 08:53:19 UTC (layer 15)
photo_22b56751#22b56751 id:long access_hash:long user_id:int date:int caption:string geo:geoPoint_2049d70c sizes:Vector<photoSize_77bfb61b> = Photo;
// first seen 2015-04-30 13:53:36 UTC (layer 28)
photo_c3838076#c3838076 id:long access_hash:long user_id:int date:int geo:geoPoint_2049d70c sizes:Vector<photoSize_77bfb61b> = Photo;
// first seen 2015-08-12 18:01:32 UTC (layer 33)
photo_cded42fe#cded42fe id:long access_hash:long date:int sizes:Vector<photoSize_77bfb61b> = Photo;
// first seen 2016-09-15 09:44:02 UTC (layer 56)
photo_9288dd29#9288dd29 flags:# has_stickers:flags.0?true id:long access_hash:long date:int sizes:Vector<photoSize_77bfb61b> = Photo;
// first seen 2018-08-20 14:26:27 UTC (layer 85)
photo_9c477dd8#9c477dd8 flags:# has_stickers:flags.0?true id:long access_hash:long file_reference:bytes date:int sizes:Vector<photoSize_77bfb61b> = Photo;
// first seen 2019-03-29 10:24:06 UTC (layer 98)
photo_d07504a5#d07504a5 flags:# has_stickers:flags.0?true id:long access_hash:long file_reference:bytes date:int sizes:Vector<photoSize_77bfb61b> dc_id:int = Photo;
// first seen 2020-07-25 07:24:11 UTC (layer 116)
photo_fb197a65#fb197a65 flags:# has_stickers:flags.0?true id:long access_hash:long file_reference:bytes date:int sizes:Vector<photoSize_77bfb61b> video_sizes:flags.1?Vector<videoSize_e831c556> dc_id:int = Photo;

// ===== photoCachedSize =====
// first seen 2014-05-30 08:53:19 UTC (layer 15)
photoCachedSize_e9a734fa#e9a734fa type:string location:fileLocation_53d69076 w:int h:int bytes:bytes = PhotoSize;
// first seen 2021-04-06 14:41:15 UTC (layer 128)
photoCachedSize_21e1ad6#21e1ad6 type:string w:int h:int bytes:bytes = PhotoSize;

// ===== photoEmpty =====
// first seen 2014-05-30 08:53:19 UTC (layer 15)
photoEmpty_2331b22d#2331b22d id:long = Photo;

// ===== photoPathSize =====
// first seen 2020-12-01 06:45:21 UTC (layer 122)
photoPathSize_d8214d41#d8214d41 type:string bytes:bytes = PhotoSize;

// ===== photoSize =====
// first seen 2014-05-30 08:53:19 UTC (layer 15)
photoSize_77bfb61b#77bfb61b type:string location:fileLocation_53d69076 w:int h:int size:int = PhotoSize;
// first seen 2021-04-06 14:41:15 UTC (layer 128)
photoSize_75c78e60#75c78e60 type:string w:int h:int size:int = PhotoSize;

// ===== photoSizeEmpty =====
// first seen 2014-05-30 08:53:19 UTC (layer 15)
photoSizeEmpty_e17e23c#e17e23c type:string = PhotoSize;

// ===== photoSizeProgressive =====
// first seen 2020-09-29 16:03:18 UTC (layer 119)
photoSizeProgressive_5aa86a51#5aa86a51 type:string location:FileLocation w:int h:int sizes:Vector<int> = PhotoSize;
// first seen 2021-04-06 14:41:15 UTC (layer 128)
photoSizeProgressive_fa3efb95#fa3efb95 type:string w:int h:int sizes:Vector<int> = PhotoSize;

// ===== photoStrippedSize =====
// first seen 2019-01-17 08:21:28 UTC (layer 93)
photoStrippedSize_e0b0bc2e#e0b0bc2e type:string bytes:bytes = PhotoSize;

// ===== poll =====
// first seen 2023-07-20 03:20:07 UTC (layer 160)
poll_86e18161#86e18161 id:long flags:# closed:flags.0?true public_voters:flags.1?true multiple_choice:flags.2?true quiz:flags.3?true question:string answers:Vector<pollAnswer_6ca9c2e9> close_period:flags.4?int close_date:flags.5?int = Poll;
// first seen 2024-04-26 16:12:29 UTC (layer 179)
poll_58747131#58747131 id:long flags:# closed:flags.0?true public_voters:flags.1?true multiple_choice:flags.2?true quiz:flags.3?true question:textWithEntities_751f3146 answers:Vector<pollAnswer_ff16e2ca> close_period:flags.4?int close_date:flags.5?int = Poll;
// first seen 2026-03-25 06:08:50 UTC (layer 224)
poll_b8425be9#b8425be9 id:long flags:# closed:flags.0?true public_voters:flags.1?true multiple_choice:flags.2?true quiz:flags.3?true open_answers:flags.6?true revoting_disabled:flags.7?true shuffle_answers:flags.8?true hide_results_until_close:flags.9?true creator:flags.10?true question:textWithEntities_751f3146 answers:Vector<pollAnswer_4b7d786a> close_period:flags.4?int close_date:flags.5?int hash:long = Poll;
// first seen 2026-05-05 06:45:43 UTC (layer 225)
poll_966e2dbf#966e2dbf id:long flags:# closed:flags.0?true public_voters:flags.1?true multiple_choice:flags.2?true quiz:flags.3?true open_answers:flags.6?true revoting_disabled:flags.7?true shuffle_answers:flags.8?true hide_results_until_close:flags.9?true creator:flags.10?true subscribers_only:flags.11?true question:textWithEntities_751f3146 answers:Vector<pollAnswer_4b7d786a> close_period:flags.4?int close_date:flags.5?int countries_iso2:flags.12?Vector<string> hash:long = Poll;

// ===== pollAnswer =====
// first seen 2023-07-20 03:20:07 UTC (layer 160)
pollAnswer_6ca9c2e9#6ca9c2e9 text:string option:bytes = PollAnswer;
// first seen 2024-04-26 16:12:29 UTC (layer 179)
pollAnswer_ff16e2ca#ff16e2ca text:textWithEntities_751f3146 option:bytes = PollAnswer;
// first seen 2026-03-25 06:08:49 UTC (layer 224)
pollAnswer_d18be2ef#d18be2ef flags:# text:textWithEntities_751f3146 option:bytes media:flags.0?MessageMedia = PollAnswer;
// first seen 2026-03-25 06:08:50 UTC (layer 224)
pollAnswer_4b7d786a#4b7d786a flags:# text:textWithEntities_751f3146 option:bytes media:flags.0?MessageMedia added_by:flags.1?Peer date:flags.1?int = PollAnswer;

// ===== pollAnswerVoters =====
// first seen 2023-07-20 03:20:07 UTC (layer 160)
pollAnswerVoters_3b6ddad2#3b6ddad2 flags:# chosen:flags.0?true correct:flags.1?true option:bytes voters:int = PollAnswerVoters;
// first seen 2026-03-25 06:08:49 UTC (layer 224)
pollAnswerVoters_3645230a#3645230a flags:# chosen:flags.0?true correct:flags.1?true option:bytes voters:flags.2?int recent_voters:flags.2?Vector<Peer> = PollAnswerVoters;

// ===== pollResults =====
// first seen 2023-07-20 03:20:07 UTC (layer 160)
pollResults_7adf2420#7adf2420 flags:# min:flags.0?true results:flags.1?Vector<pollAnswerVoters_3b6ddad2> total_voters:flags.2?int recent_voters:flags.3?Vector<Peer> solution:flags.4?string solution_entities:flags.4?Vector<MessageEntity> = PollResults;
// first seen 2026-05-05 06:45:43 UTC (layer 225)
pollResults_ba7bb15e#ba7bb15e flags:# min:flags.0?true has_unread_votes:flags.6?true can_view_stats:flags.7?true results:flags.1?Vector<pollAnswerVoters_3645230a> total_voters:flags.2?int recent_voters:flags.3?Vector<Peer> solution:flags.4?string solution_entities:flags.4?Vector<MessageEntity> solution_media:flags.5?MessageMedia = PollResults;

// ===== premiumGiftOption =====
// first seen 2022-07-26 17:12:09 UTC (layer 144)
premiumGiftOption_74c34319#74c34319 flags:# months:int currency:string amount:long bot_url:string store_product:flags.0?string = PremiumGiftOption;

// ===== privacyValueAllowAll =====
// first seen 2023-07-20 03:20:07 UTC (layer 160)
privacyValueAllowAll_65427b82#65427b82 = PrivacyRule;

// ===== privacyValueAllowBots =====
// first seen 2024-11-17 11:08:17 UTC (layer 193)
privacyValueAllowBots_21461b5d#21461b5d = PrivacyRule;

// ===== privacyValueAllowChatParticipants =====
// first seen 2023-07-20 03:20:07 UTC (layer 160)
privacyValueAllowChatParticipants_6b134e8e#6b134e8e chats:Vector<long> = PrivacyRule;

// ===== privacyValueAllowCloseFriends =====
// first seen 2023-07-20 03:20:07 UTC (layer 160)
privacyValueAllowCloseFriends_f7e8d89b#f7e8d89b = PrivacyRule;

// ===== privacyValueAllowContacts =====
// first seen 2023-07-20 03:20:07 UTC (layer 160)
privacyValueAllowContacts_fffe1bac#fffe1bac = PrivacyRule;

// ===== privacyValueAllowPremium =====
// first seen 2024-04-01 18:44:21 UTC (layer 177)
privacyValueAllowPremium_ece9814b#ece9814b = PrivacyRule;

// ===== privacyValueAllowUsers =====
// first seen 2023-07-20 03:20:07 UTC (layer 160)
privacyValueAllowUsers_b8905fb2#b8905fb2 users:Vector<long> = PrivacyRule;

// ===== privacyValueDisallowAll =====
// first seen 2023-07-20 03:20:07 UTC (layer 160)
privacyValueDisallowAll_8b73e763#8b73e763 = PrivacyRule;

// ===== privacyValueDisallowBots =====
// first seen 2024-11-17 11:08:17 UTC (layer 193)
privacyValueDisallowBots_f6a5f82f#f6a5f82f = PrivacyRule;

// ===== privacyValueDisallowChatParticipants =====
// first seen 2023-07-20 03:20:07 UTC (layer 160)
privacyValueDisallowChatParticipants_41c87565#41c87565 chats:Vector<long> = PrivacyRule;

// ===== privacyValueDisallowContacts =====
// first seen 2023-07-20 03:20:07 UTC (layer 160)
privacyValueDisallowContacts_f888fa1a#f888fa1a = PrivacyRule;

// ===== privacyValueDisallowUsers =====
// first seen 2023-07-20 03:20:07 UTC (layer 160)
privacyValueDisallowUsers_e4621141#e4621141 users:Vector<long> = PrivacyRule;

// ===== profileTabFiles =====
// first seen 2025-08-31 16:53:11 UTC (layer 213)
profileTabFiles_ab339c00#ab339c00 = ProfileTab;

// ===== profileTabGifs =====
// first seen 2025-08-31 16:53:11 UTC (layer 213)
profileTabGifs_a2c0f695#a2c0f695 = ProfileTab;

// ===== profileTabGifts =====
// first seen 2025-08-31 16:53:11 UTC (layer 213)
profileTabGifts_4d4bd46a#4d4bd46a = ProfileTab;

// ===== profileTabLinks =====
// first seen 2025-08-31 16:53:11 UTC (layer 213)
profileTabLinks_d3656499#d3656499 = ProfileTab;

// ===== profileTabMedia =====
// first seen 2025-08-31 16:53:11 UTC (layer 213)
profileTabMedia_72c64955#72c64955 = ProfileTab;

// ===== profileTabMusic =====
// first seen 2025-08-31 16:53:11 UTC (layer 213)
profileTabMusic_9f27d26e#9f27d26e = ProfileTab;

// ===== profileTabPosts =====
// first seen 2025-08-31 16:53:11 UTC (layer 213)
profileTabPosts_b98cd696#b98cd696 = ProfileTab;

// ===== profileTabVoice =====
// first seen 2025-08-31 16:53:11 UTC (layer 213)
profileTabVoice_e477092e#e477092e = ProfileTab;

// ===== reactionCount =====
// first seen 2023-09-22 05:43:31 UTC (layer 164)
reactionCount_a3d1cb80#a3d1cb80 flags:# chosen_order:flags.0?int reaction:Reaction count:int = ReactionCount;

// ===== reactionCustomEmoji =====
// first seen 2023-08-14 20:30:38 UTC (layer 161)
reactionCustomEmoji_8935fc73#8935fc73 document_id:long = Reaction;

// ===== reactionEmoji =====
// first seen 2023-08-14 20:30:38 UTC (layer 161)
reactionEmoji_1b2286b8#1b2286b8 emoticon:string = Reaction;

// ===== reactionEmpty =====
// first seen 2023-08-14 20:30:38 UTC (layer 161)
reactionEmpty_79f5d419#79f5d419 = Reaction;

// ===== reactionPaid =====
// first seen 2024-08-14 16:17:48 UTC (layer 186)
reactionPaid_523da4eb#523da4eb = Reaction;

// ===== recentStory =====
// first seen 2025-11-15 08:00:00 UTC (layer 218)
recentStory_711d692d#711d692d flags:# live:flags.0?true max_id:flags.1?int = RecentStory;

// ===== restrictionReason =====
// first seen 2019-08-27 16:10:37 UTC (layer 105)
restrictionReason_d072acb4#d072acb4 platform:string reason:string text:string = RestrictionReason;

// ===== starGift =====
// first seen 2025-01-22 18:13:25 UTC (layer 197)
starGift_2cc73c8#2cc73c8 flags:# limited:flags.0?true sold_out:flags.1?true birthday:flags.2?true id:long sticker:document_8fd4c4d8 stars:long availability_remains:flags.0?int availability_total:flags.0?int convert_stars:long first_sale_date:flags.1?int last_sale_date:flags.1?int upgrade_stars:flags.3?long = StarGift;
// first seen 2025-05-05 07:43:49 UTC (layer 203)
starGift_c62aca28#c62aca28 flags:# limited:flags.0?true sold_out:flags.1?true birthday:flags.2?true id:long sticker:document_8fd4c4d8 stars:long availability_remains:flags.0?int availability_total:flags.0?int availability_resale:flags.4?long convert_stars:long first_sale_date:flags.1?int last_sale_date:flags.1?int upgrade_stars:flags.3?long resell_min_stars:flags.4?long title:flags.5?string = StarGift;
// first seen 2025-07-04 17:31:20 UTC (layer 207)
starGift_7f853c12#7f853c12 flags:# limited:flags.0?true sold_out:flags.1?true birthday:flags.2?true id:long sticker:document_8fd4c4d8 stars:long availability_remains:flags.0?int availability_total:flags.0?int availability_resale:flags.4?long convert_stars:long first_sale_date:flags.1?int last_sale_date:flags.1?int upgrade_stars:flags.3?long resell_min_stars:flags.4?long title:flags.5?string released_by:flags.6?Peer = StarGift;
// first seen 2025-07-23 07:40:37 UTC (layer 210)
starGift_bcff5b#bcff5b flags:# limited:flags.0?true sold_out:flags.1?true birthday:flags.2?true require_premium:flags.7?true limited_per_user:flags.8?true id:long sticker:document_8fd4c4d8 stars:long availability_remains:flags.0?int availability_total:flags.0?int availability_resale:flags.4?long convert_stars:long first_sale_date:flags.1?int last_sale_date:flags.1?int upgrade_stars:flags.3?long resell_min_stars:flags.4?long title:flags.5?string released_by:flags.6?Peer per_user_total:flags.8?int per_user_remains:flags.8?int = StarGift;
// first seen 2025-10-10 05:26:59 UTC (layer 216)
starGift_80ac53c3#80ac53c3 flags:# limited:flags.0?true sold_out:flags.1?true birthday:flags.2?true require_premium:flags.7?true limited_per_user:flags.8?true peer_color_available:flags.10?true id:long sticker:document_8fd4c4d8 stars:long availability_remains:flags.0?int availability_total:flags.0?int availability_resale:flags.4?long convert_stars:long first_sale_date:flags.1?int last_sale_date:flags.1?int upgrade_stars:flags.3?long resell_min_stars:flags.4?long title:flags.5?string released_by:flags.6?Peer per_user_total:flags.8?int per_user_remains:flags.8?int locked_until_date:flags.9?int = StarGift;
// first seen 2025-11-15 08:00:00 UTC (layer 218)
starGift_1b9a4d7f#1b9a4d7f flags:# limited:flags.0?true sold_out:flags.1?true birthday:flags.2?true require_premium:flags.7?true limited_per_user:flags.8?true peer_color_available:flags.10?true auction:flags.11?true id:long sticker:document_8fd4c4d8 stars:long availability_remains:flags.0?int availability_total:flags.0?int availability_resale:flags.4?long convert_stars:long first_sale_date:flags.1?int last_sale_date:flags.1?int upgrade_stars:flags.3?long resell_min_stars:flags.4?long title:flags.5?string released_by:flags.6?Peer per_user_total:flags.8?int per_user_remains:flags.8?int locked_until_date:flags.9?int auction_slug:flags.11?string gifts_per_round:flags.11?int = StarGift;
// first seen 2025-12-05 16:11:54 UTC (layer 220)
starGift_313a9547#313a9547 flags:# limited:flags.0?true sold_out:flags.1?true birthday:flags.2?true require_premium:flags.7?true limited_per_user:flags.8?true peer_color_available:flags.10?true auction:flags.11?true id:long sticker:document_8fd4c4d8 stars:long availability_remains:flags.0?int availability_total:flags.0?int availability_resale:flags.4?long convert_stars:long first_sale_date:flags.1?int last_sale_date:flags.1?int upgrade_stars:flags.3?long resell_min_stars:flags.4?long title:flags.5?string released_by:flags.6?Peer per_user_total:flags.8?int per_user_remains:flags.8?int locked_until_date:flags.9?int auction_slug:flags.11?string gifts_per_round:flags.11?int auction_start_date:flags.11?int upgrade_variants:flags.12?int background:flags.13?starGiftBackground_aff56398 = StarGift;

// ===== starGiftAttributeBackdrop =====
// first seen 2025-01-22 18:13:25 UTC (layer 197)
starGiftAttributeBackdrop_94271762#94271762 name:string center_color:int edge_color:int pattern_color:int text_color:int rarity_permille:int = StarGiftAttribute;
// first seen 2025-05-05 07:43:49 UTC (layer 203)
starGiftAttributeBackdrop_d93d859c#d93d859c name:string backdrop_id:int center_color:int edge_color:int pattern_color:int text_color:int rarity_permille:int = StarGiftAttribute;
// first seen 2026-02-01 19:33:55 UTC (layer 222)
starGiftAttributeBackdrop_9f2504e4#9f2504e4 name:string backdrop_id:int center_color:int edge_color:int pattern_color:int text_color:int rarity:starGiftAttributeRarity_36437737 = StarGiftAttribute;

// ===== starGiftAttributeModel =====
// first seen 2025-01-22 18:13:25 UTC (layer 197)
starGiftAttributeModel_39d99013#39d99013 name:string document:document_8fd4c4d8 rarity_permille:int = StarGiftAttribute;
// first seen 2026-02-01 19:33:55 UTC (layer 222)
starGiftAttributeModel_565251e2#565251e2 flags:# crafted:flags.0?true name:string document:document_8fd4c4d8 rarity:starGiftAttributeRarity_36437737 = StarGiftAttribute;

// ===== starGiftAttributeOriginalDetails =====
// first seen 2025-01-22 18:13:25 UTC (layer 197)
starGiftAttributeOriginalDetails_c02c4f4b#c02c4f4b flags:# sender_id:flags.0?long recipient_id:long date:int message:flags.1?textWithEntities_751f3146 = StarGiftAttribute;
// first seen 2025-01-22 18:13:27 UTC (layer 198)
starGiftAttributeOriginalDetails_e0bff26c#e0bff26c flags:# sender_id:flags.0?Peer recipient_id:Peer date:int message:flags.1?textWithEntities_751f3146 = StarGiftAttribute;

// ===== starGiftAttributePattern =====
// first seen 2025-01-22 18:13:25 UTC (layer 197)
starGiftAttributePattern_13acff19#13acff19 name:string document:document_8fd4c4d8 rarity_permille:int = StarGiftAttribute;
// first seen 2026-02-01 19:33:55 UTC (layer 222)
starGiftAttributePattern_4e7085ea#4e7085ea name:string document:document_8fd4c4d8 rarity:starGiftAttributeRarity_36437737 = StarGiftAttribute;

// ===== starGiftAttributeRarity =====
// first seen 2026-02-01 19:33:55 UTC (layer 222)
starGiftAttributeRarity_36437737#36437737 permille:int = StarGiftAttributeRarity;

// ===== starGiftAttributeRarityEpic =====
// first seen 2026-02-01 19:33:55 UTC (layer 222)
starGiftAttributeRarityEpic_78fbf3a8#78fbf3a8 = StarGiftAttributeRarity;

// ===== starGiftAttributeRarityLegendary =====
// first seen 2026-02-01 19:33:55 UTC (layer 222)
starGiftAttributeRarityLegendary_cef7e7a8#cef7e7a8 = StarGiftAttributeRarity;

// ===== starGiftAttributeRarityMythic =====
// first seen 2026-02-01 19:33:55 UTC (layer 222)
starGiftAttributeRarityMythic_f8374495#f8374495 = StarGiftAttributeRarity;

// ===== starGiftAttributeRarityRare =====
// first seen 2026-02-01 19:33:55 UTC (layer 222)
starGiftAttributeRarityRare_f08d516b#f08d516b = StarGiftAttributeRarity;

// ===== starGiftAttributeRarityUncommon =====
// first seen 2026-02-01 19:33:57 UTC (layer 223)
starGiftAttributeRarityUncommon_dbce6389#dbce6389 = StarGiftAttributeRarity;

// ===== starGiftBackground =====
// first seen 2025-12-05 16:11:54 UTC (layer 220)
starGiftBackground_aff56398#aff56398 center_color:int edge_color:int text_color:int = StarGiftBackground;

// ===== starGiftUnique =====
// first seen 2025-01-22 18:13:25 UTC (layer 197)
starGiftUnique_3482f322#3482f322 flags:# id:long title:string slug:string num:int owner_id:flags.0?long owner_name:flags.1?string attributes:Vector<StarGiftAttribute> availability_issued:int availability_total:int = StarGift;
// first seen 2025-01-22 18:13:27 UTC (layer 198)
starGiftUnique_f2fe7e4a#f2fe7e4a flags:# id:long title:string slug:string num:int owner_id:flags.0?Peer owner_name:flags.1?string owner_address:flags.2?string attributes:Vector<StarGiftAttribute> availability_issued:int availability_total:int = StarGift;
// first seen 2025-02-12 13:24:24 UTC (layer 199)
starGiftUnique_5c62d151#5c62d151 flags:# id:long title:string slug:string num:int owner_id:flags.0?Peer owner_name:flags.1?string owner_address:flags.2?string attributes:Vector<StarGiftAttribute> availability_issued:int availability_total:int gift_address:flags.3?string = StarGift;
// first seen 2025-05-05 07:43:49 UTC (layer 203)
starGiftUnique_6411db89#6411db89 flags:# id:long title:string slug:string num:int owner_id:flags.0?Peer owner_name:flags.1?string owner_address:flags.2?string attributes:Vector<StarGiftAttribute> availability_issued:int availability_total:int gift_address:flags.3?string resell_stars:flags.4?long = StarGift;
// first seen 2025-07-23 07:40:37 UTC (layer 210)
starGiftUnique_f63778ae#f63778ae flags:# require_premium:flags.6?true id:long title:string slug:string num:int owner_id:flags.0?Peer owner_name:flags.1?string owner_address:flags.2?string attributes:Vector<StarGiftAttribute> availability_issued:int availability_total:int gift_address:flags.3?string resell_stars:flags.4?long released_by:flags.5?Peer = StarGift;
// first seen 2025-07-31 18:20:17 UTC (layer 211)
starGiftUnique_3a274d50#3a274d50 flags:# require_premium:flags.6?true resale_ton_only:flags.7?true id:long title:string slug:string num:int owner_id:flags.0?Peer owner_name:flags.1?string owner_address:flags.2?string attributes:Vector<StarGiftAttribute> availability_issued:int availability_total:int gift_address:flags.3?string resell_amount:flags.4?Vector<starsAmount_bbb6b4a3> released_by:flags.5?Peer = StarGift;
// first seen 2025-08-31 16:53:11 UTC (layer 213)
starGiftUnique_26a5553e#26a5553e flags:# require_premium:flags.6?true resale_ton_only:flags.7?true id:long gift_id:long title:string slug:string num:int owner_id:flags.0?Peer owner_name:flags.1?string owner_address:flags.2?string attributes:Vector<StarGiftAttribute> availability_issued:int availability_total:int gift_address:flags.3?string resell_amount:flags.4?Vector<starsAmount_bbb6b4a3> released_by:flags.5?Peer value_amount:flags.8?long value_currency:flags.8?string = StarGift;
// first seen 2025-08-31 16:53:12 UTC (layer 214)
starGiftUnique_1befe865#1befe865 flags:# require_premium:flags.6?true resale_ton_only:flags.7?true theme_available:flags.9?true id:long gift_id:long title:string slug:string num:int owner_id:flags.0?Peer owner_name:flags.1?string owner_address:flags.2?string attributes:Vector<StarGiftAttribute> availability_issued:int availability_total:int gift_address:flags.3?string resell_amount:flags.4?Vector<starsAmount_bbb6b4a3> released_by:flags.5?Peer value_amount:flags.8?long value_currency:flags.8?string theme_peer:flags.10?Peer = StarGift;
// first seen 2025-10-10 05:26:59 UTC (layer 216)
starGiftUnique_3a0893b8#3a0893b8 flags:# require_premium:flags.6?true resale_ton_only:flags.7?true theme_available:flags.9?true id:long gift_id:long title:string slug:string num:int owner_id:flags.0?Peer owner_name:flags.1?string owner_address:flags.2?string attributes:Vector<StarGiftAttribute> availability_issued:int availability_total:int gift_address:flags.3?string resell_amount:flags.4?Vector<starsAmount_bbb6b4a3> released_by:flags.5?Peer value_amount:flags.8?long value_currency:flags.8?string theme_peer:flags.10?Peer peer_color:flags.11?peerColor_b54b5acf = StarGift;
// first seen 2025-10-10 05:27:00 UTC (layer 216)
starGiftUnique_b0bf741b#b0bf741b flags:# require_premium:flags.6?true resale_ton_only:flags.7?true theme_available:flags.9?true id:long gift_id:long title:string slug:string num:int owner_id:flags.0?Peer owner_name:flags.1?string owner_address:flags.2?string attributes:Vector<StarGiftAttribute> availability_issued:int availability_total:int gift_address:flags.3?string resell_amount:flags.4?Vector<starsAmount_bbb6b4a3> released_by:flags.5?Peer value_amount:flags.8?long value_currency:flags.8?string theme_peer:flags.10?Peer peer_color:flags.11?peerColor_b54b5acf host_id:flags.12?Peer = StarGift;
// first seen 2025-12-05 16:11:53 UTC (layer 220)
starGiftUnique_9f2fb096#9f2fb096 flags:# require_premium:flags.6?true resale_ton_only:flags.7?true theme_available:flags.9?true id:long gift_id:long title:string slug:string num:int owner_id:flags.0?Peer owner_name:flags.1?string owner_address:flags.2?string attributes:Vector<StarGiftAttribute> availability_issued:int availability_total:int gift_address:flags.3?string resell_amount:flags.4?Vector<starsAmount_bbb6b4a3> released_by:flags.5?Peer value_amount:flags.8?long value_currency:flags.8?string theme_peer:flags.10?Peer peer_color:flags.11?peerColor_b54b5acf host_id:flags.12?Peer offer_min_stars:flags.13?int = StarGift;
// first seen 2026-02-01 19:33:55 UTC (layer 222)
starGiftUnique_569d64c9#569d64c9 flags:# require_premium:flags.6?true resale_ton_only:flags.7?true theme_available:flags.9?true burned:flags.14?true crafted:flags.15?true id:long gift_id:long title:string slug:string num:int owner_id:flags.0?Peer owner_name:flags.1?string owner_address:flags.2?string attributes:Vector<StarGiftAttribute> availability_issued:int availability_total:int gift_address:flags.3?string resell_amount:flags.4?Vector<starsAmount_bbb6b4a3> released_by:flags.5?Peer value_amount:flags.8?long value_currency:flags.8?string value_usd_amount:flags.8?long theme_peer:flags.10?Peer peer_color:flags.11?peerColor_b54b5acf host_id:flags.12?Peer offer_min_stars:flags.13?int = StarGift;
// first seen 2026-02-01 19:33:56 UTC (layer 222)
starGiftUnique_85f0a9cd#85f0a9cd flags:# require_premium:flags.6?true resale_ton_only:flags.7?true theme_available:flags.9?true burned:flags.14?true crafted:flags.15?true id:long gift_id:long title:string slug:string num:int owner_id:flags.0?Peer owner_name:flags.1?string owner_address:flags.2?string attributes:Vector<StarGiftAttribute> availability_issued:int availability_total:int gift_address:flags.3?string resell_amount:flags.4?Vector<starsAmount_bbb6b4a3> released_by:flags.5?Peer value_amount:flags.8?long value_currency:flags.8?string value_usd_amount:flags.8?long theme_peer:flags.10?Peer peer_color:flags.11?peerColor_b54b5acf host_id:flags.12?Peer offer_min_stars:flags.13?int craft_chance_permille:flags.16?int = StarGift;

// ===== starRefProgram =====
// first seen 2024-12-04 09:51:18 UTC (layer 195)
starRefProgram_dd0c66f2#dd0c66f2 flags:# bot_id:long commission_permille:int duration_months:flags.0?int end_date:flags.1?int daily_revenue_per_user:flags.2?starsAmount_bbb6b4a3 = StarRefProgram;

// ===== starsAmount =====
// first seen 2024-12-04 09:51:18 UTC (layer 195)
starsAmount_bbb6b4a3#bbb6b4a3 amount:long nanos:int = StarsAmount;

// ===== starsRating =====
// first seen 2025-07-23 07:40:37 UTC (layer 210)
starsRating_1b0e4f07#1b0e4f07 flags:# level:int current_level_stars:long stars:long next_level_stars:flags.0?long = StarsRating;

// ===== starsTonAmount =====
// first seen 2025-06-27 17:29:34 UTC (layer 206)
starsTonAmount_74aee3e0#74aee3e0 amount:long = StarsAmount;

// ===== storyFwdHeader =====
// first seen 2023-11-28 17:55:25 UTC (layer 167)
storyFwdHeader_b826e150#b826e150 flags:# modified:flags.3?true from:flags.0?Peer from_name:flags.1?string story_id:flags.2?int = StoryFwdHeader;

// ===== storyItem =====
// first seen 2023-07-20 03:20:09 UTC (layer 160)
storyItem_8fcd96ac#8fcd96ac flags:# pinned:flags.5?true expired:flags.6?true public:flags.7?true id:int date:int caption:flags.0?string entities:flags.1?Vector<MessageEntity> media:MessageMedia privacy:flags.2?Vector<PrivacyRule> views:flags.3?storyViews_d36760cf = StoryItem;
// first seen 2023-07-20 03:20:57 UTC (layer 160)
storyItem_562aa637#562aa637 flags:# pinned:flags.5?true public:flags.7?true close_friends:flags.8?true min:flags.9?true noforwards:flags.10?true edited:flags.11?true contacts:flags.12?true selected_contacts:flags.13?true id:int date:int expire_date:int caption:flags.0?string entities:flags.1?Vector<MessageEntity> media:MessageMedia privacy:flags.2?Vector<PrivacyRule> views:flags.3?storyViews_d36760cf = StoryItem;
// first seen 2023-08-14 20:30:37 UTC (layer 161)
storyItem_945953ba#945953ba flags:# pinned:flags.5?true public:flags.7?true close_friends:flags.8?true min:flags.9?true noforwards:flags.10?true edited:flags.11?true contacts:flags.12?true selected_contacts:flags.13?true id:int date:int expire_date:int caption:flags.0?string entities:flags.1?Vector<MessageEntity> media:MessageMedia media_areas:flags.14?Vector<MediaArea> privacy:flags.2?Vector<PrivacyRule> views:flags.3?storyViews_d36760cf = StoryItem;
// first seen 2023-09-22 05:43:31 UTC (layer 164)
storyItem_44c457ce#44c457ce flags:# pinned:flags.5?true public:flags.7?true close_friends:flags.8?true min:flags.9?true noforwards:flags.10?true edited:flags.11?true contacts:flags.12?true selected_contacts:flags.13?true out:flags.16?true id:int date:int expire_date:int caption:flags.0?string entities:flags.1?Vector<MessageEntity> media:MessageMedia media_areas:flags.14?Vector<MediaArea> privacy:flags.2?Vector<PrivacyRule> views:flags.3?storyViews_8d595cd6 sent_reaction:flags.15?Reaction = StoryItem;
// first seen 2023-11-28 17:55:23 UTC (layer 167)
storyItem_af6365a1#af6365a1 flags:# pinned:flags.5?true public:flags.7?true close_friends:flags.8?true min:flags.9?true noforwards:flags.10?true edited:flags.11?true contacts:flags.12?true selected_contacts:flags.13?true out:flags.16?true id:int date:int fwd_from:flags.17?storyFwdHeader_b826e150 expire_date:int caption:flags.0?string entities:flags.1?Vector<MessageEntity> media:MessageMedia media_areas:flags.14?Vector<MediaArea> privacy:flags.2?Vector<PrivacyRule> views:flags.3?storyViews_8d595cd6 sent_reaction:flags.15?Reaction = StoryItem;
// first seen 2024-02-15 09:51:41 UTC (layer 174)
storyItem_79b26a24#79b26a24 flags:# pinned:flags.5?true public:flags.7?true close_friends:flags.8?true min:flags.9?true noforwards:flags.10?true edited:flags.11?true contacts:flags.12?true selected_contacts:flags.13?true out:flags.16?true id:int date:int from_id:flags.18?Peer fwd_from:flags.17?storyFwdHeader_b826e150 expire_date:int caption:flags.0?string entities:flags.1?Vector<MessageEntity> media:MessageMedia media_areas:flags.14?Vector<MediaArea> privacy:flags.2?Vector<PrivacyRule> views:flags.3?storyViews_8d595cd6 sent_reaction:flags.15?Reaction = StoryItem;
// first seen 2025-07-31 18:20:17 UTC (layer 211)
storyItem_edf164f1#edf164f1 flags:# pinned:flags.5?true public:flags.7?true close_friends:flags.8?true min:flags.9?true noforwards:flags.10?true edited:flags.11?true contacts:flags.12?true selected_contacts:flags.13?true out:flags.16?true id:int date:int from_id:flags.18?Peer fwd_from:flags.17?storyFwdHeader_b826e150 expire_date:int caption:flags.0?string entities:flags.1?Vector<MessageEntity> media:MessageMedia media_areas:flags.14?Vector<MediaArea> privacy:flags.2?Vector<PrivacyRule> views:flags.3?storyViews_8d595cd6 sent_reaction:flags.15?Reaction albums:flags.19?Vector<int> = StoryItem;
// first seen 2026-03-30 05:53:19 UTC (layer 224)
storyItem_16a4b93c#16a4b93c flags:# pinned:flags.5?true public:flags.7?true close_friends:flags.8?true min:flags.9?true noforwards:flags.10?true edited:flags.11?true contacts:flags.12?true selected_contacts:flags.13?true out:flags.16?true id:int date:int from_id:flags.18?Peer fwd_from:flags.17?storyFwdHeader_b826e150 expire_date:int caption:flags.0?string entities:flags.1?Vector<MessageEntity> media:MessageMedia media_areas:flags.14?Vector<MediaArea> privacy:flags.2?Vector<PrivacyRule> views:flags.3?storyViews_8d595cd6 sent_reaction:flags.15?Reaction albums:flags.19?Vector<int> music:flags.20?document_8fd4c4d8 = StoryItem;

// ===== storyItemDeleted =====
// first seen 2023-07-20 03:20:07 UTC (layer 160)
storyItemDeleted_51e6ee4f#51e6ee4f id:int = StoryItem;

// ===== storyItemSkipped =====
// first seen 2023-07-20 03:20:07 UTC (layer 160)
storyItemSkipped_a1d8cf8f#a1d8cf8f id:int date:int = StoryItem;
// first seen 2023-07-20 03:20:10 UTC (layer 160)
storyItemSkipped_693206a2#693206a2 id:int date:int expire_date:int = StoryItem;
// first seen 2025-11-15 08:00:00 UTC (layer 218)
storyItemSkipped_ffadc913#ffadc913 flags:# close_friends:flags.8?true live:flags.9?true id:int date:int expire_date:int = StoryItem;

// ===== storyViews =====
// first seen 2023-07-20 03:20:07 UTC (layer 160)
storyViews_518b47d8#518b47d8 recent_viewers:Vector<long> views_count:int = StoryViews;
// first seen 2023-07-20 03:20:09 UTC (layer 160)
storyViews_d36760cf#d36760cf flags:# views_count:int recent_viewers:flags.0?Vector<long> = StoryViews;
// first seen 2023-09-04 13:36:55 UTC (layer 162)
storyViews_c64c0b97#c64c0b97 flags:# has_viewers:flags.1?true views_count:int reactions_count:int recent_viewers:flags.0?Vector<long> = StoryViews;
// first seen 2023-09-22 05:43:31 UTC (layer 164)
storyViews_8d595cd6#8d595cd6 flags:# has_viewers:flags.1?true views_count:int forwards_count:flags.2?int reactions:flags.3?Vector<reactionCount_a3d1cb80> reactions_count:flags.4?int recent_viewers:flags.0?Vector<long> = StoryViews;

// ===== textAnchor =====
// first seen 2023-07-20 03:20:07 UTC (layer 160)
textAnchor_35553762#35553762 text:RichText name:string = RichText;

// ===== textBold =====
// first seen 2023-07-20 03:20:07 UTC (layer 160)
textBold_6724abc4#6724abc4 text:RichText = RichText;

// ===== textConcat =====
// first seen 2023-07-20 03:20:07 UTC (layer 160)
textConcat_7e6260d7#7e6260d7 texts:Vector<RichText> = RichText;

// ===== textEmail =====
// first seen 2023-07-20 03:20:07 UTC (layer 160)
textEmail_de5a0dd6#de5a0dd6 text:RichText email:string = RichText;

// ===== textEmpty =====
// first seen 2023-07-20 03:20:07 UTC (layer 160)
textEmpty_dc3d824f#dc3d824f = RichText;

// ===== textFixed =====
// first seen 2023-07-20 03:20:07 UTC (layer 160)
textFixed_6c3f19b9#6c3f19b9 text:RichText = RichText;

// ===== textImage =====
// first seen 2023-07-20 03:20:07 UTC (layer 160)
textImage_81ccf4f#81ccf4f document_id:long w:int h:int = RichText;

// ===== textItalic =====
// first seen 2023-07-20 03:20:07 UTC (layer 160)
textItalic_d912a59c#d912a59c text:RichText = RichText;

// ===== textMarked =====
// first seen 2023-07-20 03:20:07 UTC (layer 160)
textMarked_34b8621#34b8621 text:RichText = RichText;

// ===== textPhone =====
// first seen 2023-07-20 03:20:07 UTC (layer 160)
textPhone_1ccb966a#1ccb966a text:RichText phone:string = RichText;

// ===== textPlain =====
// first seen 2023-07-20 03:20:07 UTC (layer 160)
textPlain_744694e0#744694e0 text:string = RichText;

// ===== textStrike =====
// first seen 2023-07-20 03:20:07 UTC (layer 160)
textStrike_9bf8bb95#9bf8bb95 text:RichText = RichText;

// ===== textSubscript =====
// first seen 2023-07-20 03:20:07 UTC (layer 160)
textSubscript_ed6a8504#ed6a8504 text:RichText = RichText;

// ===== textSuperscript =====
// first seen 2023-07-20 03:20:07 UTC (layer 160)
textSuperscript_c7fb5e01#c7fb5e01 text:RichText = RichText;

// ===== textUnderline =====
// first seen 2023-07-20 03:20:07 UTC (layer 160)
textUnderline_c12622c4#c12622c4 text:RichText = RichText;

// ===== textUrl =====
// first seen 2023-07-20 03:20:07 UTC (layer 160)
textUrl_3c2884c1#3c2884c1 text:RichText url:string webpage_id:long = RichText;

// ===== textWithEntities =====
// first seen 2024-04-26 16:12:29 UTC (layer 179)
textWithEntities_751f3146#751f3146 text:string entities:Vector<MessageEntity> = TextWithEntities;

// ===== themeSettings =====
// first seen 2023-07-20 03:20:07 UTC (layer 160)
themeSettings_fa58b6d4#fa58b6d4 flags:# message_colors_animated:flags.2?true base_theme:BaseTheme accent_color:int outbox_accent_color:flags.3?int message_colors:flags.0?Vector<int> wallpaper:flags.1?wallPaper_a437c3ed = ThemeSettings;

// ===== todoCompletion =====
// first seen 2025-06-27 17:29:33 UTC (layer 206)
todoCompletion_4cc120b7#4cc120b7 id:int completed_by:long date:int = TodoCompletion;
// first seen 2025-11-15 07:59:18 UTC (layer 217)
todoCompletion_221bb5e4#221bb5e4 id:int completed_by:Peer date:int = TodoCompletion;

// ===== todoItem =====
// first seen 2025-06-27 17:29:33 UTC (layer 206)
todoItem_cba9a52f#cba9a52f id:int title:textWithEntities_751f3146 = TodoItem;

// ===== todoList =====
// first seen 2025-06-27 17:29:33 UTC (layer 206)
todoList_49b92a26#49b92a26 flags:# others_can_append:flags.0?true others_can_complete:flags.1?true title:textWithEntities_751f3146 list:Vector<todoItem_cba9a52f> = TodoList;

// ===== userContact =====
// first seen 2014-05-30 08:53:19 UTC (layer 15)
userContact_f2fb8319#f2fb8319 id:int first_name:string last_name:string access_hash:long phone:string photo:userProfilePhoto_d559d8c8 status:UserStatus = User;
// first seen 2014-10-22 18:39:03 UTC (layer 19)
userContact_cab35e18#cab35e18 id:int first_name:string last_name:string username:string access_hash:long phone:string photo:userProfilePhoto_d559d8c8 status:UserStatus = User;

// ===== userDeleted =====
// first seen 2014-05-30 08:53:19 UTC (layer 15)
userDeleted_b29ad7cc#b29ad7cc id:int first_name:string last_name:string = User;
// first seen 2014-10-22 18:39:03 UTC (layer 19)
userDeleted_d6016d7a#d6016d7a id:int first_name:string last_name:string username:string = User;

// ===== userForeign =====
// first seen 2014-05-30 08:53:19 UTC (layer 15)
userForeign_5214c89d#5214c89d id:int first_name:string last_name:string access_hash:long photo:userProfilePhoto_d559d8c8 status:UserStatus = User;
// first seen 2014-10-22 18:39:03 UTC (layer 19)
userForeign_75cf7a8#75cf7a8 id:int first_name:string last_name:string username:string access_hash:long photo:userProfilePhoto_d559d8c8 status:UserStatus = User;

// ===== userProfilePhoto =====
// first seen 2014-05-30 08:53:19 UTC (layer 15)
userProfilePhoto_d559d8c8#d559d8c8 photo_id:long photo_small:fileLocation_53d69076 photo_big:fileLocation_53d69076 = UserProfilePhoto;
// first seen 2019-03-29 10:24:06 UTC (layer 98)
userProfilePhoto_ecd75d8c#ecd75d8c photo_id:long photo_small:FileLocation photo_big:FileLocation dc_id:int = UserProfilePhoto;
// first seen 2020-07-25 07:24:11 UTC (layer 116)
userProfilePhoto_69d3ab26#69d3ab26 flags:# has_video:flags.0?true photo_id:long photo_small:FileLocation photo_big:FileLocation dc_id:int = UserProfilePhoto;
// first seen 2022-12-26 10:24:05 UTC (layer 151)
userProfilePhoto_82d1f706#82d1f706 flags:# has_video:flags.0?true personal:flags.2?true photo_id:long stripped_thumb:flags.1?bytes dc_id:int = UserProfilePhoto;

// ===== userProfilePhotoEmpty =====
// first seen 2014-05-30 08:53:19 UTC (layer 15)
userProfilePhotoEmpty_4f11bae1#4f11bae1 = UserProfilePhoto;

// ===== userRequest =====
// first seen 2014-05-30 08:53:19 UTC (layer 15)
userRequest_22e8ceb0#22e8ceb0 id:int first_name:string last_name:string access_hash:long phone:string photo:userProfilePhoto_d559d8c8 status:UserStatus = User;
// first seen 2014-10-22 18:39:03 UTC (layer 19)
userRequest_d9ccc4ef#d9ccc4ef id:int first_name:string last_name:string username:string access_hash:long phone:string photo:userProfilePhoto_d559d8c8 status:UserStatus = User;

// ===== userSelf =====
// first seen 2014-05-30 08:53:19 UTC (layer 15)
userSelf_720535ec#720535ec id:int first_name:string last_name:string phone:string photo:userProfilePhoto_d559d8c8 status:UserStatus inactive:Bool = User;
// first seen 2014-10-22 18:39:03 UTC (layer 19)
userSelf_7007b451#7007b451 id:int first_name:string last_name:string username:string phone:string photo:userProfilePhoto_d559d8c8 status:UserStatus inactive:Bool = User;
// first seen 2015-03-13 13:01:25 UTC (layer 25)
userSelf_1c60e608#1c60e608 id:int first_name:string last_name:string username:string phone:string photo:userProfilePhoto_d559d8c8 status:UserStatus = User;

// ===== userStatusEmpty =====
// first seen 2014-05-30 08:53:19 UTC (layer 15)
userStatusEmpty_9d05049#9d05049 = UserStatus;

// ===== userStatusHidden =====
// first seen 2024-01-17 05:39:04 UTC (layer 172)
userStatusHidden_cf7d64b1#cf7d64b1 = UserStatus;

// ===== userStatusLastMonth =====
// first seen 2014-11-14 23:23:35 UTC (layer 19)
userStatusLastMonth_77ebc742#77ebc742 = UserStatus;
// first seen 2024-01-17 05:39:05 UTC (layer 172)
userStatusLastMonth_65899777#65899777 flags:# by_me:flags.0?true = UserStatus;

// ===== userStatusLastWeek =====
// first seen 2014-11-14 23:23:35 UTC (layer 19)
userStatusLastWeek_7bf09fc#7bf09fc = UserStatus;
// first seen 2024-01-17 05:39:05 UTC (layer 172)
userStatusLastWeek_541a1d1a#541a1d1a flags:# by_me:flags.0?true = UserStatus;

// ===== userStatusOffline =====
// first seen 2014-05-30 08:53:19 UTC (layer 15)
userStatusOffline_8c703f#8c703f was_online:int = UserStatus;

// ===== userStatusOnline =====
// first seen 2014-05-30 08:53:19 UTC (layer 15)
userStatusOnline_edb93949#edb93949 expires:int = UserStatus;

// ===== userStatusRecently =====
// first seen 2014-11-14 23:23:35 UTC (layer 19)
userStatusRecently_e26f42f1#e26f42f1 = UserStatus;
// first seen 2024-01-17 05:39:05 UTC (layer 172)
userStatusRecently_7b197dc8#7b197dc8 flags:# by_me:flags.0?true = UserStatus;

// ===== userStories =====
// first seen 2023-07-20 03:20:07 UTC (layer 160)
userStories_8611a200#8611a200 flags:# user_id:long max_read_id:flags.0?int stories:Vector<storyItem_8fcd96ac> = UserStories;

// ===== username =====
// first seen 2022-11-01 15:25:35 UTC (layer 148)
username_b4073647#b4073647 flags:# editable:flags.0?true active:flags.1?true username:string = Username;

// ===== videoSize =====
// first seen 2020-07-25 07:24:11 UTC (layer 116)
videoSize_e831c556#e831c556 flags:# type:string location:FileLocation w:int h:int size:int video_start_ts:flags.0?double = VideoSize;
// first seen 2021-04-06 14:41:15 UTC (layer 128)
videoSize_de33b094#de33b094 flags:# type:string w:int h:int size:int video_start_ts:flags.0?double = VideoSize;

// ===== videoSizeEmojiMarkup =====
// first seen 2023-02-02 18:12:31 UTC (layer 152)
videoSizeEmojiMarkup_badb646#badb646 type:string emoji_id:long background_colors:Vector<int> = VideoSize;
// first seen 2023-02-02 18:12:32 UTC (layer 152)
videoSizeEmojiMarkup_f85c413c#f85c413c emoji_id:long background_colors:Vector<int> = VideoSize;

// ===== videoSizeStickerMarkup =====
// first seen 2023-02-02 18:12:32 UTC (layer 152)
videoSizeStickerMarkup_da082fe#da082fe stickerset:InputStickerSet sticker_id:long background_colors:Vector<int> = VideoSize;

// ===== wallPaper =====
// first seen 2023-04-11 15:17:38 UTC (layer 158)
wallPaper_a437c3ed#a437c3ed id:long flags:# creator:flags.0?true default:flags.1?true pattern:flags.3?true dark:flags.4?true access_hash:long slug:string document:document_8fd4c4d8 settings:flags.2?wallPaperSettings_1dc1bca4 = WallPaper;

// ===== wallPaperNoFile =====
// first seen 2023-04-11 15:17:38 UTC (layer 158)
wallPaperNoFile_e0804116#e0804116 id:long flags:# default:flags.1?true dark:flags.4?true settings:flags.2?wallPaperSettings_1dc1bca4 = WallPaper;

// ===== wallPaperSettings =====
// first seen 2023-04-11 15:17:38 UTC (layer 158)
wallPaperSettings_1dc1bca4#1dc1bca4 flags:# blur:flags.1?true motion:flags.2?true background_color:flags.0?int second_background_color:flags.4?int third_background_color:flags.5?int fourth_background_color:flags.6?int intensity:flags.3?int rotation:flags.4?int = WallPaperSettings;
// first seen 2023-12-16 21:26:40 UTC (layer 168)
wallPaperSettings_372efcd0#372efcd0 flags:# blur:flags.1?true motion:flags.2?true background_color:flags.0?int second_background_color:flags.4?int third_background_color:flags.5?int fourth_background_color:flags.6?int intensity:flags.3?int rotation:flags.4?int emoticon:flags.7?string = WallPaperSettings;

// ===== webDocument =====
// first seen 2023-07-20 03:20:07 UTC (layer 160)
webDocument_1c570ed1#1c570ed1 url:string access_hash:long size:int mime_type:string attributes:Vector<DocumentAttribute> = WebDocument;

// ===== webDocumentNoProxy =====
// first seen 2023-07-20 03:20:07 UTC (layer 160)
webDocumentNoProxy_f9c8bcc6#f9c8bcc6 url:string size:int mime_type:string attributes:Vector<DocumentAttribute> = WebDocument;

// ===== webPage =====
// first seen 2025-02-12 13:24:24 UTC (layer 199)
webPage_e89c45b2#e89c45b2 flags:# has_large_media:flags.13?true video_cover_photo:flags.14?true id:long url:string display_url:string hash:int type:flags.0?string site_name:flags.1?string title:flags.2?string description:flags.3?string photo:flags.4?photo_fb197a65 embed_url:flags.5?string embed_type:flags.5?string embed_width:flags.6?int embed_height:flags.6?int duration:flags.7?int author:flags.8?string document:flags.9?document_8fd4c4d8 cached_page:flags.10?page_98657f0d attributes:flags.12?Vector<WebPageAttribute> = WebPage;

// ===== webPageAttributeAiComposeTone =====
// first seen 2026-05-05 06:45:44 UTC (layer 225)
webPageAttributeAiComposeTone_7781fe18#7781fe18 emoji_id:long = WebPageAttribute;

// ===== webPageAttributeStarGiftAuction =====
// first seen 2025-11-15 08:00:00 UTC (layer 218)
webPageAttributeStarGiftAuction_34986ab#34986ab gift:starGift_1b9a4d7f end_date:int center_color:int edge_color:int text_color:int = WebPageAttribute;
// first seen 2025-12-05 16:11:54 UTC (layer 220)
webPageAttributeStarGiftAuction_1c641c2#1c641c2 gift:starGift_313a9547 end_date:int = WebPageAttribute;

// ===== webPageAttributeStarGiftCollection =====
// first seen 2025-07-31 18:20:18 UTC (layer 211)
webPageAttributeStarGiftCollection_31cad303#31cad303 icons:Vector<document_8fd4c4d8> = WebPageAttribute;

// ===== webPageAttributeStickerSet =====
// first seen 2024-04-23 15:13:46 UTC (layer 178)
webPageAttributeStickerSet_50cc03d3#50cc03d3 flags:# emojis:flags.0?true text_color:flags.1?true stickers:Vector<document_8fd4c4d8> = WebPageAttribute;

// ===== webPageAttributeStory =====
// first seen 2023-07-20 03:20:11 UTC (layer 160)
webPageAttributeStory_939a4671#939a4671 flags:# user_id:long id:int story:flags.0?storyItem_562aa637 = WebPageAttribute;
// first seen 2023-09-22 05:43:31 UTC (layer 164)
webPageAttributeStory_2e94c3e7#2e94c3e7 flags:# peer:Peer id:int story:flags.0?storyItem_44c457ce = WebPageAttribute;

// ===== webPageAttributeTheme =====
// first seen 2023-07-20 03:20:07 UTC (layer 160)
webPageAttributeTheme_54b56617#54b56617 flags:# documents:flags.0?Vector<document_8fd4c4d8> settings:flags.1?themeSettings_fa58b6d4 = WebPageAttribute;

// ===== webPageAttributeUniqueStarGift =====
// first seen 2025-01-22 18:13:25 UTC (layer 197)
webPageAttributeUniqueStarGift_cf6f6db8#cf6f6db8 gift:starGift_2cc73c8 = WebPageAttribute;

// ===== webPageEmpty =====
// first seen 2023-07-20 03:20:07 UTC (layer 160)
webPageEmpty_eb1477e8#eb1477e8 id:long = WebPage;
// first seen 2023-10-26 10:08:41 UTC (layer 166)
webPageEmpty_211a1788#211a1788 flags:# id:long url:flags.0?string = WebPage;

// ===== webPageNotModified =====
// first seen 2023-07-20 03:20:07 UTC (layer 160)
webPageNotModified_7311ca11#7311ca11 flags:# cached_page_views:flags.0?int = WebPage;

// ===== webPagePending =====
// first seen 2023-07-20 03:20:07 UTC (layer 160)
webPagePending_c586da1c#c586da1c id:long date:int = WebPage;
// first seen 2023-10-26 10:08:41 UTC (layer 166)
webPagePending_b0d13e47#b0d13e47 flags:# id:long url:flags.0?string date:int = WebPage;


// ##################################################
// #         SEARCHED ROOTS: user / userFull /      #
// #                  userEmpty                     #
// ##################################################

// ===== user =====
// first seen 2015-12-16 15:31:56 UTC (layer 44)
user_22e49072#22e49072 flags:# self:flags.10?true contact:flags.11?true mutual_contact:flags.12?true deleted:flags.13?true bot:flags.14?true bot_chat_history:flags.15?true bot_nochats:flags.16?true verified:flags.17?true explicit_content:flags.18?true id:int access_hash:flags.0?long first_name:flags.1?string last_name:flags.2?string username:flags.3?string phone:flags.4?string photo:flags.5?userProfilePhoto_d559d8c8 status:flags.6?UserStatus bot_info_version:flags.14?int = User;
// first seen 2015-12-16 16:07:08 UTC (layer 44)
user_3289b590#3289b590 flags:# self:flags.10?true contact:flags.11?true mutual_contact:flags.12?true deleted:flags.13?true bot:flags.14?true bot_chat_history:flags.15?true bot_nochats:flags.16?true verified:flags.17?true restricted:flags.18?true id:int access_hash:flags.0?long first_name:flags.1?string last_name:flags.2?string username:flags.3?string phone:flags.4?string photo:flags.5?userProfilePhoto_d559d8c8 status:flags.6?UserStatus bot_info_version:flags.14?int restiction_reason:flags.18?string = User;
// first seen 2015-12-22 08:01:02 UTC (layer 44)
user_603539b4#603539b4 flags:# self:flags.10?true contact:flags.11?true mutual_contact:flags.12?true deleted:flags.13?true bot:flags.14?true bot_chat_history:flags.15?true bot_nochats:flags.16?true verified:flags.17?true restricted:flags.18?true id:int access_hash:flags.0?long first_name:flags.1?string last_name:flags.2?string username:flags.3?string phone:flags.4?string photo:flags.5?userProfilePhoto_d559d8c8 status:flags.6?UserStatus bot_info_version:flags.14?int restriction_reason:flags.18?string = User;
// first seen 2015-12-27 23:45:02 UTC (layer 44)
user_cb574c74#cb574c74 flags:# self:flags.10?true contact:flags.11?true mutual_contact:flags.12?true deleted:flags.13?true bot:flags.14?true bot_chat_history:flags.15?true bot_nochats:flags.16?true verified:flags.17?true restricted:flags.18?true id:int access_hash:flags.0?long first_name:flags.1?string last_name:flags.2?string username:flags.3?string phone:flags.4?string photo:flags.5?userProfilePhoto_d559d8c8 status:flags.6?UserStatus bot_info_version:flags.14?int restriction_reason:flags.18?string bot_context_placeholder:flags.19?string = User;
// first seen 2016-04-01 16:37:23 UTC (layer 52)
user_d10d979a#d10d979a flags:# self:flags.10?true contact:flags.11?true mutual_contact:flags.12?true deleted:flags.13?true bot:flags.14?true bot_chat_history:flags.15?true bot_nochats:flags.16?true verified:flags.17?true restricted:flags.18?true min:flags.20?true bot_inline_geo:flags.21?true id:int access_hash:flags.0?long first_name:flags.1?string last_name:flags.2?string username:flags.3?string phone:flags.4?string photo:flags.5?userProfilePhoto_d559d8c8 status:flags.6?UserStatus bot_info_version:flags.14?int restriction_reason:flags.18?string bot_inline_placeholder:flags.19?string = User;
// first seen 2019-04-25 10:16:29 UTC (layer 99)
user_2e13f4c3#2e13f4c3 flags:# self:flags.10?true contact:flags.11?true mutual_contact:flags.12?true deleted:flags.13?true bot:flags.14?true bot_chat_history:flags.15?true bot_nochats:flags.16?true verified:flags.17?true restricted:flags.18?true min:flags.20?true bot_inline_geo:flags.21?true support:flags.23?true scam:flags.24?true id:int access_hash:flags.0?long first_name:flags.1?string last_name:flags.2?string username:flags.3?string phone:flags.4?string photo:flags.5?userProfilePhoto_ecd75d8c status:flags.6?UserStatus bot_info_version:flags.14?int restriction_reason:flags.18?string bot_inline_placeholder:flags.19?string lang_code:flags.22?string = User;
// first seen 2021-01-25 12:50:59 UTC (layer 123)
user_938458c1#938458c1 flags:# self:flags.10?true contact:flags.11?true mutual_contact:flags.12?true deleted:flags.13?true bot:flags.14?true bot_chat_history:flags.15?true bot_nochats:flags.16?true verified:flags.17?true restricted:flags.18?true min:flags.20?true bot_inline_geo:flags.21?true support:flags.23?true scam:flags.24?true apply_min_photo:flags.25?true fake:flags.26?true id:int access_hash:flags.0?long first_name:flags.1?string last_name:flags.2?string username:flags.3?string phone:flags.4?string photo:flags.5?userProfilePhoto_69d3ab26 status:flags.6?UserStatus bot_info_version:flags.14?int restriction_reason:flags.18?Vector<restrictionReason_d072acb4> bot_inline_placeholder:flags.19?string lang_code:flags.22?string = User;
// first seen 2022-05-19 13:27:02 UTC (layer 143)
user_3ff6ecb0#3ff6ecb0 flags:# self:flags.10?true contact:flags.11?true mutual_contact:flags.12?true deleted:flags.13?true bot:flags.14?true bot_chat_history:flags.15?true bot_nochats:flags.16?true verified:flags.17?true restricted:flags.18?true min:flags.20?true bot_inline_geo:flags.21?true support:flags.23?true scam:flags.24?true apply_min_photo:flags.25?true fake:flags.26?true bot_attach_menu:flags.27?true premium:flags.28?true attach_menu_enabled:flags.29?true id:long access_hash:flags.0?long first_name:flags.1?string last_name:flags.2?string username:flags.3?string phone:flags.4?string photo:flags.5?userProfilePhoto_82d1f706 status:flags.6?UserStatus bot_info_version:flags.14?int restriction_reason:flags.18?Vector<restrictionReason_d072acb4> bot_inline_placeholder:flags.19?string lang_code:flags.22?string = User;
// first seen 2022-09-02 17:14:28 UTC (layer 145)
user_5d99adee#5d99adee flags:# self:flags.10?true contact:flags.11?true mutual_contact:flags.12?true deleted:flags.13?true bot:flags.14?true bot_chat_history:flags.15?true bot_nochats:flags.16?true verified:flags.17?true restricted:flags.18?true min:flags.20?true bot_inline_geo:flags.21?true support:flags.23?true scam:flags.24?true apply_min_photo:flags.25?true fake:flags.26?true bot_attach_menu:flags.27?true premium:flags.28?true attach_menu_enabled:flags.29?true id:long access_hash:flags.0?long first_name:flags.1?string last_name:flags.2?string username:flags.3?string phone:flags.4?string photo:flags.5?userProfilePhoto_82d1f706 status:flags.6?UserStatus bot_info_version:flags.14?int restriction_reason:flags.18?Vector<restrictionReason_d072acb4> bot_inline_placeholder:flags.19?string lang_code:flags.22?string emoji_status:flags.30?emojiStatus_929b619d = User;
// first seen 2023-07-20 03:20:10 UTC (layer 160)
user_8f97c628#8f97c628 flags:# self:flags.10?true contact:flags.11?true mutual_contact:flags.12?true deleted:flags.13?true bot:flags.14?true bot_chat_history:flags.15?true bot_nochats:flags.16?true verified:flags.17?true restricted:flags.18?true min:flags.20?true bot_inline_geo:flags.21?true support:flags.23?true scam:flags.24?true apply_min_photo:flags.25?true fake:flags.26?true bot_attach_menu:flags.27?true premium:flags.28?true attach_menu_enabled:flags.29?true flags2:# bot_can_edit:flags2.1?true close_friend:flags2.2?true stories_available:flags2.3?true stories_unavailable:flags2.4?true stories_hidden:flags2.5?true id:long access_hash:flags.0?long first_name:flags.1?string last_name:flags.2?string username:flags.3?string phone:flags.4?string photo:flags.5?userProfilePhoto_82d1f706 status:flags.6?UserStatus bot_info_version:flags.14?int restriction_reason:flags.18?Vector<restrictionReason_d072acb4> bot_inline_placeholder:flags.19?string lang_code:flags.22?string emoji_status:flags.30?emojiStatus_929b619d usernames:flags2.0?Vector<username_b4073647> = User;
// first seen 2023-07-20 03:20:33 UTC (layer 160)
user_abb5f120#abb5f120 flags:# self:flags.10?true contact:flags.11?true mutual_contact:flags.12?true deleted:flags.13?true bot:flags.14?true bot_chat_history:flags.15?true bot_nochats:flags.16?true verified:flags.17?true restricted:flags.18?true min:flags.20?true bot_inline_geo:flags.21?true support:flags.23?true scam:flags.24?true apply_min_photo:flags.25?true fake:flags.26?true bot_attach_menu:flags.27?true premium:flags.28?true attach_menu_enabled:flags.29?true flags2:# bot_can_edit:flags2.1?true close_friend:flags2.2?true stories_hidden:flags2.3?true stories_unavailable:flags2.4?true id:long access_hash:flags.0?long first_name:flags.1?string last_name:flags.2?string username:flags.3?string phone:flags.4?string photo:flags.5?userProfilePhoto_82d1f706 status:flags.6?UserStatus bot_info_version:flags.14?int restriction_reason:flags.18?Vector<restrictionReason_d072acb4> bot_inline_placeholder:flags.19?string lang_code:flags.22?string emoji_status:flags.30?emojiStatus_929b619d usernames:flags2.0?Vector<username_b4073647> stories_max_id:flags2.5?int = User;
// first seen 2023-10-26 10:08:41 UTC (layer 166)
user_eb602f25#eb602f25 flags:# self:flags.10?true contact:flags.11?true mutual_contact:flags.12?true deleted:flags.13?true bot:flags.14?true bot_chat_history:flags.15?true bot_nochats:flags.16?true verified:flags.17?true restricted:flags.18?true min:flags.20?true bot_inline_geo:flags.21?true support:flags.23?true scam:flags.24?true apply_min_photo:flags.25?true fake:flags.26?true bot_attach_menu:flags.27?true premium:flags.28?true attach_menu_enabled:flags.29?true flags2:# bot_can_edit:flags2.1?true close_friend:flags2.2?true stories_hidden:flags2.3?true stories_unavailable:flags2.4?true id:long access_hash:flags.0?long first_name:flags.1?string last_name:flags.2?string username:flags.3?string phone:flags.4?string photo:flags.5?userProfilePhoto_82d1f706 status:flags.6?UserStatus bot_info_version:flags.14?int restriction_reason:flags.18?Vector<restrictionReason_d072acb4> bot_inline_placeholder:flags.19?string lang_code:flags.22?string emoji_status:flags.30?emojiStatus_929b619d usernames:flags2.0?Vector<username_b4073647> stories_max_id:flags2.5?int color:flags2.7?int background_emoji_id:flags2.6?long = User;
// first seen 2024-04-01 18:44:21 UTC (layer 177)
user_215c4438#215c4438 flags:# self:flags.10?true contact:flags.11?true mutual_contact:flags.12?true deleted:flags.13?true bot:flags.14?true bot_chat_history:flags.15?true bot_nochats:flags.16?true verified:flags.17?true restricted:flags.18?true min:flags.20?true bot_inline_geo:flags.21?true support:flags.23?true scam:flags.24?true apply_min_photo:flags.25?true fake:flags.26?true bot_attach_menu:flags.27?true premium:flags.28?true attach_menu_enabled:flags.29?true flags2:# bot_can_edit:flags2.1?true close_friend:flags2.2?true stories_hidden:flags2.3?true stories_unavailable:flags2.4?true contact_require_premium:flags2.10?true bot_business:flags2.11?true id:long access_hash:flags.0?long first_name:flags.1?string last_name:flags.2?string username:flags.3?string phone:flags.4?string photo:flags.5?userProfilePhoto_82d1f706 status:flags.6?UserStatus bot_info_version:flags.14?int restriction_reason:flags.18?Vector<restrictionReason_d072acb4> bot_inline_placeholder:flags.19?string lang_code:flags.22?string emoji_status:flags.30?emojiStatus_929b619d usernames:flags2.0?Vector<username_b4073647> stories_max_id:flags2.5?int color:flags2.8?peerColor_b54b5acf profile_color:flags2.9?peerColor_b54b5acf = User;
// first seen 2024-07-31 15:03:53 UTC (layer 185)
user_83314fca#83314fca flags:# self:flags.10?true contact:flags.11?true mutual_contact:flags.12?true deleted:flags.13?true bot:flags.14?true bot_chat_history:flags.15?true bot_nochats:flags.16?true verified:flags.17?true restricted:flags.18?true min:flags.20?true bot_inline_geo:flags.21?true support:flags.23?true scam:flags.24?true apply_min_photo:flags.25?true fake:flags.26?true bot_attach_menu:flags.27?true premium:flags.28?true attach_menu_enabled:flags.29?true flags2:# bot_can_edit:flags2.1?true close_friend:flags2.2?true stories_hidden:flags2.3?true stories_unavailable:flags2.4?true contact_require_premium:flags2.10?true bot_business:flags2.11?true bot_has_main_app:flags2.13?true id:long access_hash:flags.0?long first_name:flags.1?string last_name:flags.2?string username:flags.3?string phone:flags.4?string photo:flags.5?userProfilePhoto_82d1f706 status:flags.6?UserStatus bot_info_version:flags.14?int restriction_reason:flags.18?Vector<restrictionReason_d072acb4> bot_inline_placeholder:flags.19?string lang_code:flags.22?string emoji_status:flags.30?emojiStatus_929b619d usernames:flags2.0?Vector<username_b4073647> stories_max_id:flags2.5?int color:flags2.8?peerColor_b54b5acf profile_color:flags2.9?peerColor_b54b5acf bot_active_users:flags2.12?int = User;
// first seen 2024-12-25 07:09:35 UTC (layer 196)
user_59476956#59476956 flags:# self:flags.10?true contact:flags.11?true mutual_contact:flags.12?true deleted:flags.13?true bot:flags.14?true bot_chat_history:flags.15?true bot_nochats:flags.16?true verified:flags.17?true restricted:flags.18?true min:flags.20?true bot_inline_geo:flags.21?true support:flags.23?true scam:flags.24?true apply_min_photo:flags.25?true fake:flags.26?true bot_attach_menu:flags.27?true premium:flags.28?true attach_menu_enabled:flags.29?true flags2:# bot_can_edit:flags2.1?true close_friend:flags2.2?true stories_hidden:flags2.3?true stories_unavailable:flags2.4?true contact_require_premium:flags2.10?true bot_business:flags2.11?true bot_has_main_app:flags2.13?true id:long access_hash:flags.0?long first_name:flags.1?string last_name:flags.2?string username:flags.3?string phone:flags.4?string photo:flags.5?userProfilePhoto_82d1f706 status:flags.6?UserStatus bot_info_version:flags.14?int restriction_reason:flags.18?Vector<restrictionReason_d072acb4> bot_inline_placeholder:flags.19?string lang_code:flags.22?string emoji_status:flags.30?emojiStatus_929b619d usernames:flags2.0?Vector<username_b4073647> stories_max_id:flags2.5?int color:flags2.8?peerColor_b54b5acf profile_color:flags2.9?peerColor_b54b5acf bot_active_users:flags2.12?int bot_verification:flags2.14?botVerification_4a1c6d3c = User;
// first seen 2024-12-31 09:12:15 UTC (layer 196)
user_4b46c37e#4b46c37e flags:# self:flags.10?true contact:flags.11?true mutual_contact:flags.12?true deleted:flags.13?true bot:flags.14?true bot_chat_history:flags.15?true bot_nochats:flags.16?true verified:flags.17?true restricted:flags.18?true min:flags.20?true bot_inline_geo:flags.21?true support:flags.23?true scam:flags.24?true apply_min_photo:flags.25?true fake:flags.26?true bot_attach_menu:flags.27?true premium:flags.28?true attach_menu_enabled:flags.29?true flags2:# bot_can_edit:flags2.1?true close_friend:flags2.2?true stories_hidden:flags2.3?true stories_unavailable:flags2.4?true contact_require_premium:flags2.10?true bot_business:flags2.11?true bot_has_main_app:flags2.13?true id:long access_hash:flags.0?long first_name:flags.1?string last_name:flags.2?string username:flags.3?string phone:flags.4?string photo:flags.5?userProfilePhoto_82d1f706 status:flags.6?UserStatus bot_info_version:flags.14?int restriction_reason:flags.18?Vector<restrictionReason_d072acb4> bot_inline_placeholder:flags.19?string lang_code:flags.22?string emoji_status:flags.30?emojiStatus_929b619d usernames:flags2.0?Vector<username_b4073647> stories_max_id:flags2.5?int color:flags2.8?peerColor_b54b5acf profile_color:flags2.9?peerColor_b54b5acf bot_active_users:flags2.12?int bot_verification_icon:flags2.14?long = User;
// first seen 2025-10-10 05:26:57 UTC (layer 216)
user_20b1422#20b1422 flags:# self:flags.10?true contact:flags.11?true mutual_contact:flags.12?true deleted:flags.13?true bot:flags.14?true bot_chat_history:flags.15?true bot_nochats:flags.16?true verified:flags.17?true restricted:flags.18?true min:flags.20?true bot_inline_geo:flags.21?true support:flags.23?true scam:flags.24?true apply_min_photo:flags.25?true fake:flags.26?true bot_attach_menu:flags.27?true premium:flags.28?true attach_menu_enabled:flags.29?true flags2:# bot_can_edit:flags2.1?true close_friend:flags2.2?true stories_hidden:flags2.3?true stories_unavailable:flags2.4?true contact_require_premium:flags2.10?true bot_business:flags2.11?true bot_has_main_app:flags2.13?true bot_forum_view:flags2.16?true id:long access_hash:flags.0?long first_name:flags.1?string last_name:flags.2?string username:flags.3?string phone:flags.4?string photo:flags.5?userProfilePhoto_82d1f706 status:flags.6?UserStatus bot_info_version:flags.14?int restriction_reason:flags.18?Vector<restrictionReason_d072acb4> bot_inline_placeholder:flags.19?string lang_code:flags.22?string emoji_status:flags.30?emojiStatus_e7ff068a usernames:flags2.0?Vector<username_b4073647> stories_max_id:flags2.5?int color:flags2.8?peerColor_b54b5acf profile_color:flags2.9?peerColor_b54b5acf bot_active_users:flags2.12?int bot_verification_icon:flags2.14?long send_paid_messages_stars:flags2.15?long = User;
// first seen 2026-05-05 06:45:43 UTC (layer 225)
user_31774388#31774388 flags:# self:flags.10?true contact:flags.11?true mutual_contact:flags.12?true deleted:flags.13?true bot:flags.14?true bot_chat_history:flags.15?true bot_nochats:flags.16?true verified:flags.17?true restricted:flags.18?true min:flags.20?true bot_inline_geo:flags.21?true support:flags.23?true scam:flags.24?true apply_min_photo:flags.25?true fake:flags.26?true bot_attach_menu:flags.27?true premium:flags.28?true attach_menu_enabled:flags.29?true flags2:# bot_can_edit:flags2.1?true close_friend:flags2.2?true stories_hidden:flags2.3?true stories_unavailable:flags2.4?true contact_require_premium:flags2.10?true bot_business:flags2.11?true bot_has_main_app:flags2.13?true bot_forum_view:flags2.16?true bot_forum_can_manage_topics:flags2.17?true bot_can_manage_bots:flags2.18?true bot_guestchat:flags2.19?true id:long access_hash:flags.0?long first_name:flags.1?string last_name:flags.2?string username:flags.3?string phone:flags.4?string photo:flags.5?userProfilePhoto_82d1f706 status:flags.6?UserStatus bot_info_version:flags.14?int restriction_reason:flags.18?Vector<restrictionReason_d072acb4> bot_inline_placeholder:flags.19?string lang_code:flags.22?string emoji_status:flags.30?emojiStatus_e7ff068a usernames:flags2.0?Vector<username_b4073647> stories_max_id:flags2.5?recentStory_711d692d color:flags2.8?peerColor_b54b5acf profile_color:flags2.9?peerColor_b54b5acf bot_active_users:flags2.12?int bot_verification_icon:flags2.14?long send_paid_messages_stars:flags2.15?long = User;

// ===== userEmpty =====
// first seen 2014-05-30 08:53:19 UTC (layer 15)
userEmpty_200250ba#200250ba id:int = User;
// first seen 2021-09-07 20:41:07 UTC (layer 133)
userEmpty_d3bc4b7a#d3bc4b7a id:long = User;

// ===== userFull =====
// first seen 2014-05-30 08:53:19 UTC (layer 15)
userFull_771095da#771095da user:User link:contacts.Link profile_photo:photo_22b56751 notify_settings:peerNotifySettings_8d5e11ee blocked:Bool real_first_name:string real_last_name:string = UserFull;
// first seen 2015-06-10 12:48:26 UTC (layer 31)
userFull_5a89ac5b#5a89ac5b user:user_22e49072 link:contacts.Link profile_photo:photo_c3838076 notify_settings:peerNotifySettings_8d5e11ee blocked:Bool bot_info:botInfo_9cf585d = UserFull;
// first seen 2016-03-04 15:34:46 UTC (layer 49)
userFull_5932fc03#5932fc03 flags:# blocked:flags.0?true user:user_d10d979a about:flags.1?string link:contacts.Link profile_photo:flags.2?photo_cded42fe notify_settings:peerNotifySettings_9acda4c0 bot_info:flags.3?botInfo_98e81d3a = UserFull;
// first seen 2017-03-31 10:31:51 UTC (layer 65)
userFull_f220f3f#f220f3f flags:# blocked:flags.0?true phone_calls_available:flags.4?true phone_calls_private:flags.5?true user:user_d10d979a about:flags.1?string link:contacts.Link profile_photo:flags.2?photo_9288dd29 notify_settings:peerNotifySettings_9acda4c0 bot_info:flags.3?botInfo_98e81d3a common_chats_count:int = UserFull;
// first seen 2018-11-16 16:17:58 UTC (layer 88)
userFull_8ea4a881#8ea4a881 flags:# blocked:flags.0?true phone_calls_available:flags.4?true phone_calls_private:flags.5?true can_pin_message:flags.7?true user:user_2e13f4c3 about:flags.1?string link:contacts.Link profile_photo:flags.2?photo_9c477dd8 notify_settings:peerNotifySettings_af509d20 bot_info:flags.3?botInfo_98e81d3a pinned_msg_id:flags.6?int common_chats_count:int = UserFull;
// first seen 2019-04-25 10:16:29 UTC (layer 99)
userFull_745559cc#745559cc flags:# blocked:flags.0?true phone_calls_available:flags.4?true phone_calls_private:flags.5?true can_pin_message:flags.7?true user:user_2e13f4c3 about:flags.1?string link:contacts.Link profile_photo:flags.2?photo_d07504a5 notify_settings:peerNotifySettings_af509d20 bot_info:flags.3?botInfo_98e81d3a pinned_msg_id:flags.6?int common_chats_count:int folder_id:flags.11?int = UserFull;
// first seen 2020-08-11 14:21:40 UTC (layer 117)
userFull_edf17c12#edf17c12 flags:# blocked:flags.0?true phone_calls_available:flags.4?true phone_calls_private:flags.5?true can_pin_message:flags.7?true has_scheduled:flags.12?true video_calls_available:flags.13?true user:user_938458c1 about:flags.1?string settings:peerSettings_733f2961 profile_photo:flags.2?photo_fb197a65 notify_settings:peerNotifySettings_af509d20 bot_info:flags.3?botInfo_98e81d3a pinned_msg_id:flags.6?int common_chats_count:int folder_id:flags.11?int = UserFull;
// first seen 2021-02-22 19:42:40 UTC (layer 124)
userFull_a54475a7#a54475a7 flags:# blocked:flags.0?true phone_calls_available:flags.4?true phone_calls_private:flags.5?true can_pin_message:flags.7?true has_scheduled:flags.12?true video_calls_available:flags.13?true user:user_938458c1 about:flags.1?string settings:peerSettings_733f2961 profile_photo:flags.2?photo_fb197a65 notify_settings:peerNotifySettings_af509d20 bot_info:flags.3?botInfo_98e81d3a pinned_msg_id:flags.6?int common_chats_count:int folder_id:flags.11?int ttl:flags.14?peerHistoryTTL_3e11cee9 = UserFull;
// first seen 2021-02-22 19:42:41 UTC (layer 124)
userFull_139a9a77#139a9a77 flags:# blocked:flags.0?true phone_calls_available:flags.4?true phone_calls_private:flags.5?true can_pin_message:flags.7?true has_scheduled:flags.12?true video_calls_available:flags.13?true user:user_938458c1 about:flags.1?string settings:peerSettings_733f2961 profile_photo:flags.2?photo_fb197a65 notify_settings:peerNotifySettings_af509d20 bot_info:flags.3?botInfo_98e81d3a pinned_msg_id:flags.6?int common_chats_count:int folder_id:flags.11?int ttl_period:flags.14?int = UserFull;
// first seen 2021-08-30 17:32:56 UTC (layer 132)
userFull_d697ff05#d697ff05 flags:# blocked:flags.0?true phone_calls_available:flags.4?true phone_calls_private:flags.5?true can_pin_message:flags.7?true has_scheduled:flags.12?true video_calls_available:flags.13?true user:user_938458c1 about:flags.1?string settings:peerSettings_733f2961 profile_photo:flags.2?photo_fb197a65 notify_settings:peerNotifySettings_af509d20 bot_info:flags.3?botInfo_98e81d3a pinned_msg_id:flags.6?int common_chats_count:int folder_id:flags.11?int ttl_period:flags.14?int theme_emoticon:flags.15?string = UserFull;
// first seen 2021-11-26 14:00:20 UTC (layer 135)
userFull_cf366521#cf366521 flags:# blocked:flags.0?true phone_calls_available:flags.4?true phone_calls_private:flags.5?true can_pin_message:flags.7?true has_scheduled:flags.12?true video_calls_available:flags.13?true id:long about:flags.1?string settings:peerSettings_a518110d profile_photo:flags.2?photo_fb197a65 notify_settings:peerNotifySettings_af509d20 bot_info:flags.3?botInfo_1b74b335 pinned_msg_id:flags.6?int common_chats_count:int folder_id:flags.11?int ttl_period:flags.14?int theme_emoticon:flags.15?string private_forward_name:flags.16?string = UserFull;
// first seen 2022-03-30 08:23:05 UTC (layer 140)
userFull_8c72ea81#8c72ea81 flags:# blocked:flags.0?true phone_calls_available:flags.4?true phone_calls_private:flags.5?true can_pin_message:flags.7?true has_scheduled:flags.12?true video_calls_available:flags.13?true id:long about:flags.1?string settings:peerSettings_a518110d profile_photo:flags.2?photo_fb197a65 notify_settings:peerNotifySettings_af509d20 bot_info:flags.3?botInfo_1b74b335 pinned_msg_id:flags.6?int common_chats_count:int folder_id:flags.11?int ttl_period:flags.14?int theme_emoticon:flags.15?string private_forward_name:flags.16?string bot_group_admin_rights:flags.17?chatAdminRights_5fb224d5 bot_broadcast_admin_rights:flags.18?chatAdminRights_5fb224d5 = UserFull;
// first seen 2022-07-26 17:12:08 UTC (layer 144)
userFull_a5b947a4#a5b947a4 flags:# blocked:flags.0?true phone_calls_available:flags.4?true phone_calls_private:flags.5?true can_pin_message:flags.7?true has_scheduled:flags.12?true video_calls_available:flags.13?true id:long about:flags.1?string settings:peerSettings_a518110d profile_photo:flags.2?photo_fb197a65 notify_settings:peerNotifySettings_a83b0426 bot_info:flags.3?botInfo_8f300b57 pinned_msg_id:flags.6?int common_chats_count:int folder_id:flags.11?int ttl_period:flags.14?int theme_emoticon:flags.15?string private_forward_name:flags.16?string bot_group_admin_rights:flags.17?chatAdminRights_5fb224d5 bot_broadcast_admin_rights:flags.18?chatAdminRights_5fb224d5 gift_premium_url:flags.19?string = UserFull;
// first seen 2022-07-26 17:12:10 UTC (layer 144)
userFull_c4b1fc3f#c4b1fc3f flags:# blocked:flags.0?true phone_calls_available:flags.4?true phone_calls_private:flags.5?true can_pin_message:flags.7?true has_scheduled:flags.12?true video_calls_available:flags.13?true voice_messages_forbidden:flags.20?true id:long about:flags.1?string settings:peerSettings_a518110d profile_photo:flags.2?photo_fb197a65 notify_settings:peerNotifySettings_a83b0426 bot_info:flags.3?botInfo_8f300b57 pinned_msg_id:flags.6?int common_chats_count:int folder_id:flags.11?int ttl_period:flags.14?int theme_emoticon:flags.15?string private_forward_name:flags.16?string bot_group_admin_rights:flags.17?chatAdminRights_5fb224d5 bot_broadcast_admin_rights:flags.18?chatAdminRights_5fb224d5 premium_gifts:flags.19?Vector<premiumGiftOption_74c34319> = UserFull;
// first seen 2022-12-26 10:24:05 UTC (layer 151)
userFull_ec6d41e3#ec6d41e3 flags:# blocked:flags.0?true phone_calls_available:flags.4?true phone_calls_private:flags.5?true can_pin_message:flags.7?true has_scheduled:flags.12?true video_calls_available:flags.13?true voice_messages_forbidden:flags.20?true id:long about:flags.1?string settings:peerSettings_a518110d personal_photo:flags.21?photo_fb197a65 profile_photo:flags.2?photo_fb197a65 notify_settings:peerNotifySettings_a83b0426 bot_info:flags.3?botInfo_8f300b57 pinned_msg_id:flags.6?int common_chats_count:int folder_id:flags.11?int ttl_period:flags.14?int theme_emoticon:flags.15?string private_forward_name:flags.16?string bot_group_admin_rights:flags.17?chatAdminRights_5fb224d5 bot_broadcast_admin_rights:flags.18?chatAdminRights_5fb224d5 premium_gifts:flags.19?Vector<premiumGiftOption_74c34319> = UserFull;
// first seen 2023-02-02 18:12:32 UTC (layer 152)
userFull_f8d32aed#f8d32aed flags:# blocked:flags.0?true phone_calls_available:flags.4?true phone_calls_private:flags.5?true can_pin_message:flags.7?true has_scheduled:flags.12?true video_calls_available:flags.13?true voice_messages_forbidden:flags.20?true translations_disabled:flags.23?true id:long about:flags.1?string settings:peerSettings_a518110d personal_photo:flags.21?photo_fb197a65 profile_photo:flags.2?photo_fb197a65 fallback_photo:flags.22?photo_fb197a65 notify_settings:peerNotifySettings_a83b0426 bot_info:flags.3?botInfo_8f300b57 pinned_msg_id:flags.6?int common_chats_count:int folder_id:flags.11?int ttl_period:flags.14?int theme_emoticon:flags.15?string private_forward_name:flags.16?string bot_group_admin_rights:flags.17?chatAdminRights_5fb224d5 bot_broadcast_admin_rights:flags.18?chatAdminRights_5fb224d5 premium_gifts:flags.19?Vector<premiumGiftOption_74c34319> = UserFull;
// first seen 2023-04-11 15:17:38 UTC (layer 158)
userFull_93eadb53#93eadb53 flags:# blocked:flags.0?true phone_calls_available:flags.4?true phone_calls_private:flags.5?true can_pin_message:flags.7?true has_scheduled:flags.12?true video_calls_available:flags.13?true voice_messages_forbidden:flags.20?true translations_disabled:flags.23?true id:long about:flags.1?string settings:peerSettings_a518110d personal_photo:flags.21?photo_fb197a65 profile_photo:flags.2?photo_fb197a65 fallback_photo:flags.22?photo_fb197a65 notify_settings:peerNotifySettings_a83b0426 bot_info:flags.3?botInfo_8f300b57 pinned_msg_id:flags.6?int common_chats_count:int folder_id:flags.11?int ttl_period:flags.14?int theme_emoticon:flags.15?string private_forward_name:flags.16?string bot_group_admin_rights:flags.17?chatAdminRights_5fb224d5 bot_broadcast_admin_rights:flags.18?chatAdminRights_5fb224d5 premium_gifts:flags.19?Vector<premiumGiftOption_74c34319> wallpaper:flags.24?wallPaper_a437c3ed = UserFull;
// first seen 2023-08-14 20:30:37 UTC (layer 161)
userFull_4fe1cc86#4fe1cc86 flags:# blocked:flags.0?true phone_calls_available:flags.4?true phone_calls_private:flags.5?true can_pin_message:flags.7?true has_scheduled:flags.12?true video_calls_available:flags.13?true voice_messages_forbidden:flags.20?true translations_disabled:flags.23?true stories_pinned_available:flags.26?true blocked_my_stories_from:flags.27?true id:long about:flags.1?string settings:peerSettings_a518110d personal_photo:flags.21?photo_fb197a65 profile_photo:flags.2?photo_fb197a65 fallback_photo:flags.22?photo_fb197a65 notify_settings:peerNotifySettings_99622c0c bot_info:flags.3?botInfo_8f300b57 pinned_msg_id:flags.6?int common_chats_count:int folder_id:flags.11?int ttl_period:flags.14?int theme_emoticon:flags.15?string private_forward_name:flags.16?string bot_group_admin_rights:flags.17?chatAdminRights_5fb224d5 bot_broadcast_admin_rights:flags.18?chatAdminRights_5fb224d5 premium_gifts:flags.19?Vector<premiumGiftOption_74c34319> wallpaper:flags.24?wallPaper_a437c3ed stories:flags.25?userStories_8611a200 = UserFull;
// first seen 2024-01-17 05:39:04 UTC (layer 172)
userFull_b9b12c6c#b9b12c6c flags:# blocked:flags.0?true phone_calls_available:flags.4?true phone_calls_private:flags.5?true can_pin_message:flags.7?true has_scheduled:flags.12?true video_calls_available:flags.13?true voice_messages_forbidden:flags.20?true translations_disabled:flags.23?true stories_pinned_available:flags.26?true blocked_my_stories_from:flags.27?true wallpaper_overridden:flags.28?true contact_require_premium:flags.29?true read_dates_private:flags.30?true id:long about:flags.1?string settings:peerSettings_a518110d personal_photo:flags.21?photo_fb197a65 profile_photo:flags.2?photo_fb197a65 fallback_photo:flags.22?photo_fb197a65 notify_settings:peerNotifySettings_99622c0c bot_info:flags.3?botInfo_8f300b57 pinned_msg_id:flags.6?int common_chats_count:int folder_id:flags.11?int ttl_period:flags.14?int theme_emoticon:flags.15?string private_forward_name:flags.16?string bot_group_admin_rights:flags.17?chatAdminRights_5fb224d5 bot_broadcast_admin_rights:flags.18?chatAdminRights_5fb224d5 premium_gifts:flags.19?Vector<premiumGiftOption_74c34319> wallpaper:flags.24?wallPaper_a437c3ed stories:flags.25?peerStories_9a35e999 = UserFull;
// first seen 2024-03-08 06:53:58 UTC (layer 176)
userFull_22ff3e85#22ff3e85 flags:# blocked:flags.0?true phone_calls_available:flags.4?true phone_calls_private:flags.5?true can_pin_message:flags.7?true has_scheduled:flags.12?true video_calls_available:flags.13?true voice_messages_forbidden:flags.20?true translations_disabled:flags.23?true stories_pinned_available:flags.26?true blocked_my_stories_from:flags.27?true wallpaper_overridden:flags.28?true contact_require_premium:flags.29?true read_dates_private:flags.30?true flags2:# id:long about:flags.1?string settings:peerSettings_a518110d personal_photo:flags.21?photo_fb197a65 profile_photo:flags.2?photo_fb197a65 fallback_photo:flags.22?photo_fb197a65 notify_settings:peerNotifySettings_99622c0c bot_info:flags.3?botInfo_8f300b57 pinned_msg_id:flags.6?int common_chats_count:int folder_id:flags.11?int ttl_period:flags.14?int theme_emoticon:flags.15?string private_forward_name:flags.16?string bot_group_admin_rights:flags.17?chatAdminRights_5fb224d5 bot_broadcast_admin_rights:flags.18?chatAdminRights_5fb224d5 premium_gifts:flags.19?Vector<premiumGiftOption_74c34319> wallpaper:flags.24?wallPaper_a437c3ed stories:flags.25?peerStories_9a35e999 business_work_hours:flags2.0?businessWorkHours_8c92b098 business_location:flags2.1?businessLocation_ac5c1af7 business_greeting_message:flags2.2?businessGreetingMessage_a098d54c business_away_message:flags2.3?businessAwayMessage_9acd7a15 = UserFull;
// first seen 2024-04-01 18:44:20 UTC (layer 177)
userFull_ecdadceb#ecdadceb flags:# blocked:flags.0?true phone_calls_available:flags.4?true phone_calls_private:flags.5?true can_pin_message:flags.7?true has_scheduled:flags.12?true video_calls_available:flags.13?true voice_messages_forbidden:flags.20?true translations_disabled:flags.23?true stories_pinned_available:flags.26?true blocked_my_stories_from:flags.27?true wallpaper_overridden:flags.28?true contact_require_premium:flags.29?true read_dates_private:flags.30?true flags2:# id:long about:flags.1?string settings:peerSettings_acd66c5e personal_photo:flags.21?photo_fb197a65 profile_photo:flags.2?photo_fb197a65 fallback_photo:flags.22?photo_fb197a65 notify_settings:peerNotifySettings_99622c0c bot_info:flags.3?botInfo_8f300b57 pinned_msg_id:flags.6?int common_chats_count:int folder_id:flags.11?int ttl_period:flags.14?int theme_emoticon:flags.15?string private_forward_name:flags.16?string bot_group_admin_rights:flags.17?chatAdminRights_5fb224d5 bot_broadcast_admin_rights:flags.18?chatAdminRights_5fb224d5 premium_gifts:flags.19?Vector<premiumGiftOption_74c34319> wallpaper:flags.24?wallPaper_a437c3ed stories:flags.25?peerStories_9a35e999 business_work_hours:flags2.0?businessWorkHours_8c92b098 business_location:flags2.1?businessLocation_ac5c1af7 business_greeting_message:flags2.2?businessGreetingMessage_e519abab business_away_message:flags2.3?businessAwayMessage_ef156a5c business_intro:flags2.4?businessIntro_5a0a066d birthday:flags2.5?birthday_6c8e1e06 = UserFull;
// first seen 2024-04-23 15:13:46 UTC (layer 178)
userFull_cc997720#cc997720 flags:# blocked:flags.0?true phone_calls_available:flags.4?true phone_calls_private:flags.5?true can_pin_message:flags.7?true has_scheduled:flags.12?true video_calls_available:flags.13?true voice_messages_forbidden:flags.20?true translations_disabled:flags.23?true stories_pinned_available:flags.26?true blocked_my_stories_from:flags.27?true wallpaper_overridden:flags.28?true contact_require_premium:flags.29?true read_dates_private:flags.30?true flags2:# sponsored_enabled:flags2.7?true id:long about:flags.1?string settings:peerSettings_acd66c5e personal_photo:flags.21?photo_fb197a65 profile_photo:flags.2?photo_fb197a65 fallback_photo:flags.22?photo_fb197a65 notify_settings:peerNotifySettings_99622c0c bot_info:flags.3?botInfo_8f300b57 pinned_msg_id:flags.6?int common_chats_count:int folder_id:flags.11?int ttl_period:flags.14?int theme_emoticon:flags.15?string private_forward_name:flags.16?string bot_group_admin_rights:flags.17?chatAdminRights_5fb224d5 bot_broadcast_admin_rights:flags.18?chatAdminRights_5fb224d5 premium_gifts:flags.19?Vector<premiumGiftOption_74c34319> wallpaper:flags.24?wallPaper_a437c3ed stories:flags.25?peerStories_9a35e999 business_work_hours:flags2.0?businessWorkHours_8c92b098 business_location:flags2.1?businessLocation_ac5c1af7 business_greeting_message:flags2.2?businessGreetingMessage_e519abab business_away_message:flags2.3?businessAwayMessage_ef156a5c business_intro:flags2.4?businessIntro_5a0a066d birthday:flags2.5?birthday_6c8e1e06 personal_channel_id:flags2.6?long personal_channel_message:flags2.6?int = UserFull;
// first seen 2024-11-17 11:08:15 UTC (layer 193)
userFull_1f58e369#1f58e369 flags:# blocked:flags.0?true phone_calls_available:flags.4?true phone_calls_private:flags.5?true can_pin_message:flags.7?true has_scheduled:flags.12?true video_calls_available:flags.13?true voice_messages_forbidden:flags.20?true translations_disabled:flags.23?true stories_pinned_available:flags.26?true blocked_my_stories_from:flags.27?true wallpaper_overridden:flags.28?true contact_require_premium:flags.29?true read_dates_private:flags.30?true flags2:# sponsored_enabled:flags2.7?true can_view_revenue:flags2.9?true bot_can_manage_emoji_status:flags2.10?true id:long about:flags.1?string settings:peerSettings_acd66c5e personal_photo:flags.21?photo_fb197a65 profile_photo:flags.2?photo_fb197a65 fallback_photo:flags.22?photo_fb197a65 notify_settings:peerNotifySettings_99622c0c bot_info:flags.3?botInfo_36607333 pinned_msg_id:flags.6?int common_chats_count:int folder_id:flags.11?int ttl_period:flags.14?int theme_emoticon:flags.15?string private_forward_name:flags.16?string bot_group_admin_rights:flags.17?chatAdminRights_5fb224d5 bot_broadcast_admin_rights:flags.18?chatAdminRights_5fb224d5 premium_gifts:flags.19?Vector<premiumGiftOption_74c34319> wallpaper:flags.24?wallPaper_a437c3ed stories:flags.25?peerStories_9a35e999 business_work_hours:flags2.0?businessWorkHours_8c92b098 business_location:flags2.1?businessLocation_ac5c1af7 business_greeting_message:flags2.2?businessGreetingMessage_e519abab business_away_message:flags2.3?businessAwayMessage_ef156a5c business_intro:flags2.4?businessIntro_5a0a066d birthday:flags2.5?birthday_6c8e1e06 personal_channel_id:flags2.6?long personal_channel_message:flags2.6?int stargifts_count:flags2.8?int = UserFull;
// first seen 2024-12-04 09:51:18 UTC (layer 195)
userFull_979d2376#979d2376 flags:# blocked:flags.0?true phone_calls_available:flags.4?true phone_calls_private:flags.5?true can_pin_message:flags.7?true has_scheduled:flags.12?true video_calls_available:flags.13?true voice_messages_forbidden:flags.20?true translations_disabled:flags.23?true stories_pinned_available:flags.26?true blocked_my_stories_from:flags.27?true wallpaper_overridden:flags.28?true contact_require_premium:flags.29?true read_dates_private:flags.30?true flags2:# sponsored_enabled:flags2.7?true can_view_revenue:flags2.9?true bot_can_manage_emoji_status:flags2.10?true id:long about:flags.1?string settings:peerSettings_acd66c5e personal_photo:flags.21?photo_fb197a65 profile_photo:flags.2?photo_fb197a65 fallback_photo:flags.22?photo_fb197a65 notify_settings:peerNotifySettings_99622c0c bot_info:flags.3?botInfo_36607333 pinned_msg_id:flags.6?int common_chats_count:int folder_id:flags.11?int ttl_period:flags.14?int theme_emoticon:flags.15?string private_forward_name:flags.16?string bot_group_admin_rights:flags.17?chatAdminRights_5fb224d5 bot_broadcast_admin_rights:flags.18?chatAdminRights_5fb224d5 premium_gifts:flags.19?Vector<premiumGiftOption_74c34319> wallpaper:flags.24?wallPaper_a437c3ed stories:flags.25?peerStories_9a35e999 business_work_hours:flags2.0?businessWorkHours_8c92b098 business_location:flags2.1?businessLocation_ac5c1af7 business_greeting_message:flags2.2?businessGreetingMessage_e519abab business_away_message:flags2.3?businessAwayMessage_ef156a5c business_intro:flags2.4?businessIntro_5a0a066d birthday:flags2.5?birthday_6c8e1e06 personal_channel_id:flags2.6?long personal_channel_message:flags2.6?int stargifts_count:flags2.8?int starref_program:flags2.11?starRefProgram_dd0c66f2 = UserFull;
// first seen 2024-12-31 09:12:15 UTC (layer 196)
userFull_4d975bbc#4d975bbc flags:# blocked:flags.0?true phone_calls_available:flags.4?true phone_calls_private:flags.5?true can_pin_message:flags.7?true has_scheduled:flags.12?true video_calls_available:flags.13?true voice_messages_forbidden:flags.20?true translations_disabled:flags.23?true stories_pinned_available:flags.26?true blocked_my_stories_from:flags.27?true wallpaper_overridden:flags.28?true contact_require_premium:flags.29?true read_dates_private:flags.30?true flags2:# sponsored_enabled:flags2.7?true can_view_revenue:flags2.9?true bot_can_manage_emoji_status:flags2.10?true id:long about:flags.1?string settings:peerSettings_acd66c5e personal_photo:flags.21?photo_fb197a65 profile_photo:flags.2?photo_fb197a65 fallback_photo:flags.22?photo_fb197a65 notify_settings:peerNotifySettings_99622c0c bot_info:flags.3?botInfo_4d8a0299 pinned_msg_id:flags.6?int common_chats_count:int folder_id:flags.11?int ttl_period:flags.14?int theme_emoticon:flags.15?string private_forward_name:flags.16?string bot_group_admin_rights:flags.17?chatAdminRights_5fb224d5 bot_broadcast_admin_rights:flags.18?chatAdminRights_5fb224d5 premium_gifts:flags.19?Vector<premiumGiftOption_74c34319> wallpaper:flags.24?wallPaper_a437c3ed stories:flags.25?peerStories_9a35e999 business_work_hours:flags2.0?businessWorkHours_8c92b098 business_location:flags2.1?businessLocation_ac5c1af7 business_greeting_message:flags2.2?businessGreetingMessage_e519abab business_away_message:flags2.3?businessAwayMessage_ef156a5c business_intro:flags2.4?businessIntro_5a0a066d birthday:flags2.5?birthday_6c8e1e06 personal_channel_id:flags2.6?long personal_channel_message:flags2.6?int stargifts_count:flags2.8?int starref_program:flags2.11?starRefProgram_dd0c66f2 bot_verification:flags2.12?botVerification_f93cd45c = UserFull;
// first seen 2025-03-07 15:03:36 UTC (layer 200)
userFull_8555f3c2#8555f3c2 flags:# blocked:flags.0?true phone_calls_available:flags.4?true phone_calls_private:flags.5?true can_pin_message:flags.7?true has_scheduled:flags.12?true video_calls_available:flags.13?true voice_messages_forbidden:flags.20?true translations_disabled:flags.23?true stories_pinned_available:flags.26?true blocked_my_stories_from:flags.27?true wallpaper_overridden:flags.28?true contact_require_premium:flags.29?true read_dates_private:flags.30?true flags2:# sponsored_enabled:flags2.7?true can_view_revenue:flags2.9?true bot_can_manage_emoji_status:flags2.10?true id:long about:flags.1?string settings:peerSettings_a8639d72 personal_photo:flags.21?photo_fb197a65 profile_photo:flags.2?photo_fb197a65 fallback_photo:flags.22?photo_fb197a65 notify_settings:peerNotifySettings_99622c0c bot_info:flags.3?botInfo_4d8a0299 pinned_msg_id:flags.6?int common_chats_count:int folder_id:flags.11?int ttl_period:flags.14?int theme_emoticon:flags.15?string private_forward_name:flags.16?string bot_group_admin_rights:flags.17?chatAdminRights_5fb224d5 bot_broadcast_admin_rights:flags.18?chatAdminRights_5fb224d5 premium_gifts:flags.19?Vector<premiumGiftOption_74c34319> wallpaper:flags.24?wallPaper_a437c3ed stories:flags.25?peerStories_9a35e999 business_work_hours:flags2.0?businessWorkHours_8c92b098 business_location:flags2.1?businessLocation_ac5c1af7 business_greeting_message:flags2.2?businessGreetingMessage_e519abab business_away_message:flags2.3?businessAwayMessage_ef156a5c business_intro:flags2.4?businessIntro_5a0a066d birthday:flags2.5?birthday_6c8e1e06 personal_channel_id:flags2.6?long personal_channel_message:flags2.6?int stargifts_count:flags2.8?int starref_program:flags2.11?starRefProgram_dd0c66f2 bot_verification:flags2.12?botVerification_f93cd45c send_paid_messages_stars:flags2.14?long = UserFull;
// first seen 2025-03-07 15:03:37 UTC (layer 200)
userFull_d2234ea0#d2234ea0 flags:# blocked:flags.0?true phone_calls_available:flags.4?true phone_calls_private:flags.5?true can_pin_message:flags.7?true has_scheduled:flags.12?true video_calls_available:flags.13?true voice_messages_forbidden:flags.20?true translations_disabled:flags.23?true stories_pinned_available:flags.26?true blocked_my_stories_from:flags.27?true wallpaper_overridden:flags.28?true contact_require_premium:flags.29?true read_dates_private:flags.30?true flags2:# sponsored_enabled:flags2.7?true can_view_revenue:flags2.9?true bot_can_manage_emoji_status:flags2.10?true id:long about:flags.1?string settings:peerSettings_d8c39ec personal_photo:flags.21?photo_fb197a65 profile_photo:flags.2?photo_fb197a65 fallback_photo:flags.22?photo_fb197a65 notify_settings:peerNotifySettings_99622c0c bot_info:flags.3?botInfo_4d8a0299 pinned_msg_id:flags.6?int common_chats_count:int folder_id:flags.11?int ttl_period:flags.14?int theme_emoticon:flags.15?string private_forward_name:flags.16?string bot_group_admin_rights:flags.17?chatAdminRights_5fb224d5 bot_broadcast_admin_rights:flags.18?chatAdminRights_5fb224d5 wallpaper:flags.24?wallPaper_a437c3ed stories:flags.25?peerStories_9a35e999 business_work_hours:flags2.0?businessWorkHours_8c92b098 business_location:flags2.1?businessLocation_ac5c1af7 business_greeting_message:flags2.2?businessGreetingMessage_e519abab business_away_message:flags2.3?businessAwayMessage_ef156a5c business_intro:flags2.4?businessIntro_5a0a066d birthday:flags2.5?birthday_6c8e1e06 personal_channel_id:flags2.6?long personal_channel_message:flags2.6?int stargifts_count:flags2.8?int starref_program:flags2.11?starRefProgram_dd0c66f2 bot_verification:flags2.12?botVerification_f93cd45c send_paid_messages_stars:flags2.14?long = UserFull;
// first seen 2025-03-26 03:11:20 UTC (layer 201)
userFull_2f30acf1#2f30acf1 flags:# blocked:flags.0?true phone_calls_available:flags.4?true phone_calls_private:flags.5?true can_pin_message:flags.7?true has_scheduled:flags.12?true video_calls_available:flags.13?true voice_messages_forbidden:flags.20?true translations_disabled:flags.23?true stories_pinned_available:flags.26?true blocked_my_stories_from:flags.27?true wallpaper_overridden:flags.28?true contact_require_premium:flags.29?true read_dates_private:flags.30?true flags2:# sponsored_enabled:flags2.7?true can_view_revenue:flags2.9?true bot_can_manage_emoji_status:flags2.10?true display_gifts_button:flags2.16?true id:long about:flags.1?string settings:peerSettings_f47741f7 personal_photo:flags.21?photo_fb197a65 profile_photo:flags.2?photo_fb197a65 fallback_photo:flags.22?photo_fb197a65 notify_settings:peerNotifySettings_99622c0c bot_info:flags.3?botInfo_4d8a0299 pinned_msg_id:flags.6?int common_chats_count:int folder_id:flags.11?int ttl_period:flags.14?int theme_emoticon:flags.15?string private_forward_name:flags.16?string bot_group_admin_rights:flags.17?chatAdminRights_5fb224d5 bot_broadcast_admin_rights:flags.18?chatAdminRights_5fb224d5 wallpaper:flags.24?wallPaper_a437c3ed stories:flags.25?peerStories_9a35e999 business_work_hours:flags2.0?businessWorkHours_8c92b098 business_location:flags2.1?businessLocation_ac5c1af7 business_greeting_message:flags2.2?businessGreetingMessage_e519abab business_away_message:flags2.3?businessAwayMessage_ef156a5c business_intro:flags2.4?businessIntro_5a0a066d birthday:flags2.5?birthday_6c8e1e06 personal_channel_id:flags2.6?long personal_channel_message:flags2.6?int stargifts_count:flags2.8?int starref_program:flags2.11?starRefProgram_dd0c66f2 bot_verification:flags2.12?botVerification_f93cd45c send_paid_messages_stars:flags2.14?long disallowed_stargifts:flags2.15?disallowedStarGiftsSettings_6291c96a = UserFull;
// first seen 2025-03-26 03:13:15 UTC (layer 201)
userFull_99e78045#99e78045 flags:# blocked:flags.0?true phone_calls_available:flags.4?true phone_calls_private:flags.5?true can_pin_message:flags.7?true has_scheduled:flags.12?true video_calls_available:flags.13?true voice_messages_forbidden:flags.20?true translations_disabled:flags.23?true stories_pinned_available:flags.26?true blocked_my_stories_from:flags.27?true wallpaper_overridden:flags.28?true contact_require_premium:flags.29?true read_dates_private:flags.30?true flags2:# sponsored_enabled:flags2.7?true can_view_revenue:flags2.9?true bot_can_manage_emoji_status:flags2.10?true display_gifts_button:flags2.16?true id:long about:flags.1?string settings:peerSettings_f47741f7 personal_photo:flags.21?photo_fb197a65 profile_photo:flags.2?photo_fb197a65 fallback_photo:flags.22?photo_fb197a65 notify_settings:peerNotifySettings_99622c0c bot_info:flags.3?botInfo_4d8a0299 pinned_msg_id:flags.6?int common_chats_count:int folder_id:flags.11?int ttl_period:flags.14?int theme_emoticon:flags.15?string private_forward_name:flags.16?string bot_group_admin_rights:flags.17?chatAdminRights_5fb224d5 bot_broadcast_admin_rights:flags.18?chatAdminRights_5fb224d5 wallpaper:flags.24?wallPaper_a437c3ed stories:flags.25?peerStories_9a35e999 business_work_hours:flags2.0?businessWorkHours_8c92b098 business_location:flags2.1?businessLocation_ac5c1af7 business_greeting_message:flags2.2?businessGreetingMessage_e519abab business_away_message:flags2.3?businessAwayMessage_ef156a5c business_intro:flags2.4?businessIntro_5a0a066d birthday:flags2.5?birthday_6c8e1e06 personal_channel_id:flags2.6?long personal_channel_message:flags2.6?int stargifts_count:flags2.8?int starref_program:flags2.11?starRefProgram_dd0c66f2 bot_verification:flags2.12?botVerification_f93cd45c send_paid_messages_stars:flags2.14?long disallowed_gifts:flags2.15?disallowedGiftsSettings_71f276c4 = UserFull;
// first seen 2025-07-23 07:40:37 UTC (layer 210)
userFull_29de80be#29de80be flags:# blocked:flags.0?true phone_calls_available:flags.4?true phone_calls_private:flags.5?true can_pin_message:flags.7?true has_scheduled:flags.12?true video_calls_available:flags.13?true voice_messages_forbidden:flags.20?true translations_disabled:flags.23?true stories_pinned_available:flags.26?true blocked_my_stories_from:flags.27?true wallpaper_overridden:flags.28?true contact_require_premium:flags.29?true read_dates_private:flags.30?true flags2:# sponsored_enabled:flags2.7?true can_view_revenue:flags2.9?true bot_can_manage_emoji_status:flags2.10?true display_gifts_button:flags2.16?true id:long about:flags.1?string settings:peerSettings_f47741f7 personal_photo:flags.21?photo_fb197a65 profile_photo:flags.2?photo_fb197a65 fallback_photo:flags.22?photo_fb197a65 notify_settings:peerNotifySettings_99622c0c bot_info:flags.3?botInfo_4d8a0299 pinned_msg_id:flags.6?int common_chats_count:int folder_id:flags.11?int ttl_period:flags.14?int theme_emoticon:flags.15?string private_forward_name:flags.16?string bot_group_admin_rights:flags.17?chatAdminRights_5fb224d5 bot_broadcast_admin_rights:flags.18?chatAdminRights_5fb224d5 wallpaper:flags.24?wallPaper_a437c3ed stories:flags.25?peerStories_9a35e999 business_work_hours:flags2.0?businessWorkHours_8c92b098 business_location:flags2.1?businessLocation_ac5c1af7 business_greeting_message:flags2.2?businessGreetingMessage_e519abab business_away_message:flags2.3?businessAwayMessage_ef156a5c business_intro:flags2.4?businessIntro_5a0a066d birthday:flags2.5?birthday_6c8e1e06 personal_channel_id:flags2.6?long personal_channel_message:flags2.6?int stargifts_count:flags2.8?int starref_program:flags2.11?starRefProgram_dd0c66f2 bot_verification:flags2.12?botVerification_f93cd45c send_paid_messages_stars:flags2.14?long disallowed_gifts:flags2.15?disallowedGiftsSettings_71f276c4 stars_rating:flags2.17?starsRating_1b0e4f07 = UserFull;
// first seen 2025-07-31 18:20:18 UTC (layer 211)
userFull_7e63ce1f#7e63ce1f flags:# blocked:flags.0?true phone_calls_available:flags.4?true phone_calls_private:flags.5?true can_pin_message:flags.7?true has_scheduled:flags.12?true video_calls_available:flags.13?true voice_messages_forbidden:flags.20?true translations_disabled:flags.23?true stories_pinned_available:flags.26?true blocked_my_stories_from:flags.27?true wallpaper_overridden:flags.28?true contact_require_premium:flags.29?true read_dates_private:flags.30?true flags2:# sponsored_enabled:flags2.7?true can_view_revenue:flags2.9?true bot_can_manage_emoji_status:flags2.10?true display_gifts_button:flags2.16?true id:long about:flags.1?string settings:peerSettings_f47741f7 personal_photo:flags.21?photo_fb197a65 profile_photo:flags.2?photo_fb197a65 fallback_photo:flags.22?photo_fb197a65 notify_settings:peerNotifySettings_99622c0c bot_info:flags.3?botInfo_4d8a0299 pinned_msg_id:flags.6?int common_chats_count:int folder_id:flags.11?int ttl_period:flags.14?int theme_emoticon:flags.15?string private_forward_name:flags.16?string bot_group_admin_rights:flags.17?chatAdminRights_5fb224d5 bot_broadcast_admin_rights:flags.18?chatAdminRights_5fb224d5 wallpaper:flags.24?wallPaper_a437c3ed stories:flags.25?peerStories_9a35e999 business_work_hours:flags2.0?businessWorkHours_8c92b098 business_location:flags2.1?businessLocation_ac5c1af7 business_greeting_message:flags2.2?businessGreetingMessage_e519abab business_away_message:flags2.3?businessAwayMessage_ef156a5c business_intro:flags2.4?businessIntro_5a0a066d birthday:flags2.5?birthday_6c8e1e06 personal_channel_id:flags2.6?long personal_channel_message:flags2.6?int stargifts_count:flags2.8?int starref_program:flags2.11?starRefProgram_dd0c66f2 bot_verification:flags2.12?botVerification_f93cd45c send_paid_messages_stars:flags2.14?long disallowed_gifts:flags2.15?disallowedGiftsSettings_71f276c4 stars_rating:flags2.17?starsRating_1b0e4f07 stars_my_pending_rating:flags2.18?starsRating_1b0e4f07 stars_my_pending_rating_date:flags2.18?int = UserFull;
// first seen 2025-08-31 16:53:11 UTC (layer 213)
userFull_3fd81e28#3fd81e28 flags:# blocked:flags.0?true phone_calls_available:flags.4?true phone_calls_private:flags.5?true can_pin_message:flags.7?true has_scheduled:flags.12?true video_calls_available:flags.13?true voice_messages_forbidden:flags.20?true translations_disabled:flags.23?true stories_pinned_available:flags.26?true blocked_my_stories_from:flags.27?true wallpaper_overridden:flags.28?true contact_require_premium:flags.29?true read_dates_private:flags.30?true flags2:# sponsored_enabled:flags2.7?true can_view_revenue:flags2.9?true bot_can_manage_emoji_status:flags2.10?true display_gifts_button:flags2.16?true id:long about:flags.1?string settings:peerSettings_f47741f7 personal_photo:flags.21?photo_fb197a65 profile_photo:flags.2?photo_fb197a65 fallback_photo:flags.22?photo_fb197a65 notify_settings:peerNotifySettings_99622c0c bot_info:flags.3?botInfo_4d8a0299 pinned_msg_id:flags.6?int common_chats_count:int folder_id:flags.11?int ttl_period:flags.14?int theme_emoticon:flags.15?string private_forward_name:flags.16?string bot_group_admin_rights:flags.17?chatAdminRights_5fb224d5 bot_broadcast_admin_rights:flags.18?chatAdminRights_5fb224d5 wallpaper:flags.24?wallPaper_a437c3ed stories:flags.25?peerStories_9a35e999 business_work_hours:flags2.0?businessWorkHours_8c92b098 business_location:flags2.1?businessLocation_ac5c1af7 business_greeting_message:flags2.2?businessGreetingMessage_e519abab business_away_message:flags2.3?businessAwayMessage_ef156a5c business_intro:flags2.4?businessIntro_5a0a066d birthday:flags2.5?birthday_6c8e1e06 personal_channel_id:flags2.6?long personal_channel_message:flags2.6?int stargifts_count:flags2.8?int starref_program:flags2.11?starRefProgram_dd0c66f2 bot_verification:flags2.12?botVerification_f93cd45c send_paid_messages_stars:flags2.14?long disallowed_gifts:flags2.15?disallowedGiftsSettings_71f276c4 stars_rating:flags2.17?starsRating_1b0e4f07 stars_my_pending_rating:flags2.18?starsRating_1b0e4f07 stars_my_pending_rating_date:flags2.18?int main_tab:flags2.20?ProfileTab saved_music:flags2.21?document_8fd4c4d8 = UserFull;
// first seen 2025-08-31 16:53:12 UTC (layer 214)
userFull_c577b5ad#c577b5ad flags:# blocked:flags.0?true phone_calls_available:flags.4?true phone_calls_private:flags.5?true can_pin_message:flags.7?true has_scheduled:flags.12?true video_calls_available:flags.13?true voice_messages_forbidden:flags.20?true translations_disabled:flags.23?true stories_pinned_available:flags.26?true blocked_my_stories_from:flags.27?true wallpaper_overridden:flags.28?true contact_require_premium:flags.29?true read_dates_private:flags.30?true flags2:# sponsored_enabled:flags2.7?true can_view_revenue:flags2.9?true bot_can_manage_emoji_status:flags2.10?true display_gifts_button:flags2.16?true id:long about:flags.1?string settings:peerSettings_f47741f7 personal_photo:flags.21?photo_fb197a65 profile_photo:flags.2?photo_fb197a65 fallback_photo:flags.22?photo_fb197a65 notify_settings:peerNotifySettings_99622c0c bot_info:flags.3?botInfo_4d8a0299 pinned_msg_id:flags.6?int common_chats_count:int folder_id:flags.11?int ttl_period:flags.14?int theme:flags.15?chatTheme_c3dffc04 private_forward_name:flags.16?string bot_group_admin_rights:flags.17?chatAdminRights_5fb224d5 bot_broadcast_admin_rights:flags.18?chatAdminRights_5fb224d5 wallpaper:flags.24?wallPaper_a437c3ed stories:flags.25?peerStories_9a35e999 business_work_hours:flags2.0?businessWorkHours_8c92b098 business_location:flags2.1?businessLocation_ac5c1af7 business_greeting_message:flags2.2?businessGreetingMessage_e519abab business_away_message:flags2.3?businessAwayMessage_ef156a5c business_intro:flags2.4?businessIntro_5a0a066d birthday:flags2.5?birthday_6c8e1e06 personal_channel_id:flags2.6?long personal_channel_message:flags2.6?int stargifts_count:flags2.8?int starref_program:flags2.11?starRefProgram_dd0c66f2 bot_verification:flags2.12?botVerification_f93cd45c send_paid_messages_stars:flags2.14?long disallowed_gifts:flags2.15?disallowedGiftsSettings_71f276c4 stars_rating:flags2.17?starsRating_1b0e4f07 stars_my_pending_rating:flags2.18?starsRating_1b0e4f07 stars_my_pending_rating_date:flags2.18?int main_tab:flags2.20?ProfileTab saved_music:flags2.21?document_8fd4c4d8 = UserFull;
// first seen 2026-02-28 15:07:08 UTC (layer 223)
userFull_a02bc13e#a02bc13e flags:# blocked:flags.0?true phone_calls_available:flags.4?true phone_calls_private:flags.5?true can_pin_message:flags.7?true has_scheduled:flags.12?true video_calls_available:flags.13?true voice_messages_forbidden:flags.20?true translations_disabled:flags.23?true stories_pinned_available:flags.26?true blocked_my_stories_from:flags.27?true wallpaper_overridden:flags.28?true contact_require_premium:flags.29?true read_dates_private:flags.30?true flags2:# sponsored_enabled:flags2.7?true can_view_revenue:flags2.9?true bot_can_manage_emoji_status:flags2.10?true display_gifts_button:flags2.16?true noforwards_my_enabled:flags2.23?true noforwards_peer_enabled:flags2.24?true id:long about:flags.1?string settings:peerSettings_f47741f7 personal_photo:flags.21?photo_fb197a65 profile_photo:flags.2?photo_fb197a65 fallback_photo:flags.22?photo_fb197a65 notify_settings:peerNotifySettings_99622c0c bot_info:flags.3?botInfo_4d8a0299 pinned_msg_id:flags.6?int common_chats_count:int folder_id:flags.11?int ttl_period:flags.14?int theme:flags.15?chatTheme_c3dffc04 private_forward_name:flags.16?string bot_group_admin_rights:flags.17?chatAdminRights_5fb224d5 bot_broadcast_admin_rights:flags.18?chatAdminRights_5fb224d5 wallpaper:flags.24?wallPaper_a437c3ed stories:flags.25?peerStories_9a35e999 business_work_hours:flags2.0?businessWorkHours_8c92b098 business_location:flags2.1?businessLocation_ac5c1af7 business_greeting_message:flags2.2?businessGreetingMessage_e519abab business_away_message:flags2.3?businessAwayMessage_ef156a5c business_intro:flags2.4?businessIntro_5a0a066d birthday:flags2.5?birthday_6c8e1e06 personal_channel_id:flags2.6?long personal_channel_message:flags2.6?int stargifts_count:flags2.8?int starref_program:flags2.11?starRefProgram_dd0c66f2 bot_verification:flags2.12?botVerification_f93cd45c send_paid_messages_stars:flags2.14?long disallowed_gifts:flags2.15?disallowedGiftsSettings_71f276c4 stars_rating:flags2.17?starsRating_1b0e4f07 stars_my_pending_rating:flags2.18?starsRating_1b0e4f07 stars_my_pending_rating_date:flags2.18?int main_tab:flags2.20?ProfileTab saved_music:flags2.21?document_8fd4c4d8 note:flags2.22?textWithEntities_751f3146 = UserFull;
// first seen 2026-03-30 05:53:19 UTC (layer 224)
userFull_6cbe645#6cbe645 flags:# blocked:flags.0?true phone_calls_available:flags.4?true phone_calls_private:flags.5?true can_pin_message:flags.7?true has_scheduled:flags.12?true video_calls_available:flags.13?true voice_messages_forbidden:flags.20?true translations_disabled:flags.23?true stories_pinned_available:flags.26?true blocked_my_stories_from:flags.27?true wallpaper_overridden:flags.28?true contact_require_premium:flags.29?true read_dates_private:flags.30?true flags2:# sponsored_enabled:flags2.7?true can_view_revenue:flags2.9?true bot_can_manage_emoji_status:flags2.10?true display_gifts_button:flags2.16?true noforwards_my_enabled:flags2.23?true noforwards_peer_enabled:flags2.24?true unofficial_security_risk:flags2.26?true id:long about:flags.1?string settings:peerSettings_f47741f7 personal_photo:flags.21?photo_fb197a65 profile_photo:flags.2?photo_fb197a65 fallback_photo:flags.22?photo_fb197a65 notify_settings:peerNotifySettings_99622c0c bot_info:flags.3?botInfo_4d8a0299 pinned_msg_id:flags.6?int common_chats_count:int folder_id:flags.11?int ttl_period:flags.14?int theme:flags.15?chatTheme_c3dffc04 private_forward_name:flags.16?string bot_group_admin_rights:flags.17?chatAdminRights_5fb224d5 bot_broadcast_admin_rights:flags.18?chatAdminRights_5fb224d5 wallpaper:flags.24?wallPaper_a437c3ed stories:flags.25?peerStories_9a35e999 business_work_hours:flags2.0?businessWorkHours_8c92b098 business_location:flags2.1?businessLocation_ac5c1af7 business_greeting_message:flags2.2?businessGreetingMessage_e519abab business_away_message:flags2.3?businessAwayMessage_ef156a5c business_intro:flags2.4?businessIntro_5a0a066d birthday:flags2.5?birthday_6c8e1e06 personal_channel_id:flags2.6?long personal_channel_message:flags2.6?int stargifts_count:flags2.8?int starref_program:flags2.11?starRefProgram_dd0c66f2 bot_verification:flags2.12?botVerification_f93cd45c send_paid_messages_stars:flags2.14?long disallowed_gifts:flags2.15?disallowedGiftsSettings_71f276c4 stars_rating:flags2.17?starsRating_1b0e4f07 stars_my_pending_rating:flags2.18?starsRating_1b0e4f07 stars_my_pending_rating_date:flags2.18?int main_tab:flags2.20?ProfileTab saved_music:flags2.21?document_8fd4c4d8 note:flags2.22?textWithEntities_751f3146 bot_manager_id:flags2.25?long = UserFull;
