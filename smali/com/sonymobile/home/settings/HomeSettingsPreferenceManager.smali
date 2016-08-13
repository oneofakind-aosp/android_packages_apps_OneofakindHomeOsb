.class public final Lcom/sonymobile/home/settings/HomeSettingsPreferenceManager;
.super Ljava/lang/Object;
.source "HomeSettingsPreferenceManager.java"


# direct methods
.method public static getCurrentPageTransition(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "applicationContext"    # Landroid/content/Context;

    .prologue
    .line 78
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 80
    .local v0, "preferences":Landroid/content/SharedPreferences;
    const-string v1, "user_settings_page_transition"

    sget-object v2, Lcom/sonymobile/home/settings/UserSettings$PageTransition;->FLAT:Lcom/sonymobile/home/settings/UserSettings$PageTransition;

    invoke-virtual {v2}, Lcom/sonymobile/home/settings/UserSettings$PageTransition;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getSourceAutoArrange(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "applicationContext"    # Landroid/content/Context;

    .prologue
    .line 137
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 139
    .local v0, "preferences":Landroid/content/SharedPreferences;
    const-string v1, "user_settings_auto_pack_desktop_items_source"

    const-string v2, "Default"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getSourceForHomeMode(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "applicationContext"    # Landroid/content/Context;

    .prologue
    .line 154
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 156
    .local v0, "preferences":Landroid/content/SharedPreferences;
    const-string v1, "user_settings_desktop_automatic_mode_source"

    const-string v2, "Default"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getSourceForOnlineSearchOn(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "applicationContext"    # Landroid/content/Context;

    .prologue
    .line 220
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 222
    .local v0, "preferences":Landroid/content/SharedPreferences;
    const-string v1, "home_settings_app_recommendations_source"

    const-string v2, "Default"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getSourceForPageTransition(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "applicationContext"    # Landroid/content/Context;

    .prologue
    .line 171
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 173
    .local v0, "preferences":Landroid/content/SharedPreferences;
    const-string v1, "user_settings_page_transition_source"

    const-string v2, "Default"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getSourceForPersonalizeRecommendations(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "applicationContext"    # Landroid/content/Context;

    .prologue
    .line 205
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 207
    .local v0, "preferences":Landroid/content/SharedPreferences;
    const-string v1, "user_settings_personalize_recommendations_source"

    const-string v2, "Default"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getSourceForShowKeyboardInSearchApps(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "applicationContext"    # Landroid/content/Context;

    .prologue
    .line 188
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 190
    .local v0, "preferences":Landroid/content/SharedPreferences;
    const-string v1, "user_settings_show_keyboard_when_entering_search_apps_source"

    const-string v2, "Default"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static hasAutomaticDesktopModeBeenUsed(Landroid/content/Context;)Z
    .locals 2
    .param p0, "applicationContext"    # Landroid/content/Context;

    .prologue
    .line 117
    const-string v0, "Default"

    invoke-static {p0}, Lcom/sonymobile/home/settings/HomeSettingsPreferenceManager;->getSourceForHomeMode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/sonymobile/home/settings/HomeSettingsPreferenceManager;->isAutomaticDesktopMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isAutoArrangeEnabled(Landroid/content/Context;)Z
    .locals 4
    .param p0, "applicationContext"    # Landroid/content/Context;

    .prologue
    .line 42
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 44
    .local v0, "preferences":Landroid/content/SharedPreferences;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 45
    .local v1, "res":Landroid/content/res/Resources;
    const-string v2, "user_settings_auto_pack_desktop_items"

    const v3, 0x7f0a0019

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    return v2
.end method

.method public static isAutomaticDesktopMode(Landroid/content/Context;)Z
    .locals 4
    .param p0, "applicationContext"    # Landroid/content/Context;

    .prologue
    .line 54
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 56
    .local v0, "preferences":Landroid/content/SharedPreferences;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 57
    .local v1, "res":Landroid/content/res/Resources;
    const-string v2, "user_settings_desktop_automatic_mode"

    const v3, 0x7f0a0021

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    return v2
.end method

.method public static isKeyboardShownWhenEnteringSearchApps(Landroid/content/Context;)Z
    .locals 4
    .param p0, "applicationContext"    # Landroid/content/Context;

    .prologue
    .line 66
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 68
    .local v0, "preferences":Landroid/content/SharedPreferences;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 69
    .local v1, "res":Landroid/content/res/Resources;
    const-string v2, "user_settings_show_keyboard_when_entering_search_apps"

    const v3, 0x7f0a001d

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    return v2
.end method

.method public static isOnlineSuggestionsOn(Landroid/content/Context;)Z
    .locals 4
    .param p0, "applicationContext"    # Landroid/content/Context;

    .prologue
    .line 103
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 105
    .local v0, "preferences":Landroid/content/SharedPreferences;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 106
    .local v1, "res":Landroid/content/res/Resources;
    const-string v2, "home_settings_app_recommendations"

    const v3, 0x7f0a001a

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    return v2
.end method

.method public static updateAutomaticDesktopSetting(ZLjava/lang/String;Landroid/content/Context;)V
    .locals 3
    .param p0, "enabled"    # Z
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "applicationContext"    # Landroid/content/Context;

    .prologue
    .line 239
    invoke-static {p2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 241
    .local v0, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "user_settings_desktop_automatic_mode"

    invoke-interface {v1, v2, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "user_settings_desktop_automatic_mode_source"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 243
    return-void
.end method

.method public static updateSourceForAutoPack(Ljava/lang/String;Landroid/content/Context;)V
    .locals 3
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "applicationContext"    # Landroid/content/Context;

    .prologue
    .line 253
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 255
    .local v0, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "user_settings_auto_pack_desktop_items_source"

    invoke-interface {v1, v2, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 256
    return-void
.end method

.method public static updateSourceForOnlineSuggestions(Ljava/lang/String;Landroid/content/Context;)V
    .locals 3
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "applicationContext"    # Landroid/content/Context;

    .prologue
    .line 293
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 295
    .local v0, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "home_settings_app_recommendations_source"

    invoke-interface {v1, v2, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 296
    return-void
.end method

.method public static updateSourceForPageTransition(Ljava/lang/String;Landroid/content/Context;)V
    .locals 3
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "applicationContext"    # Landroid/content/Context;

    .prologue
    .line 266
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 268
    .local v0, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "user_settings_page_transition_source"

    invoke-interface {v1, v2, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 269
    return-void
.end method

.method public static updateSourceForPersonalizeRecommendations(ZLjava/lang/String;Landroid/content/Context;)V
    .locals 3
    .param p0, "personalize"    # Z
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "applicationContext"    # Landroid/content/Context;

    .prologue
    .line 307
    invoke-static {p2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 309
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 310
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "user_settings_personalize_recommendations"

    invoke-interface {v0, v2, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 311
    const-string v2, "user_settings_personalize_recommendations_source"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 312
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 313
    return-void
.end method

.method public static updateSourceForShowKeyboardInSearchApps(Ljava/lang/String;Landroid/content/Context;)V
    .locals 3
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "applicationContext"    # Landroid/content/Context;

    .prologue
    .line 279
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 281
    .local v0, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "user_settings_show_keyboard_when_entering_search_apps_source"

    invoke-interface {v1, v2, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 283
    return-void
.end method

.method public static usePersonalizedRecommendations(Landroid/content/Context;)Z
    .locals 4
    .param p0, "applicationContext"    # Landroid/content/Context;

    .prologue
    .line 91
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 93
    .local v0, "preferences":Landroid/content/SharedPreferences;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 94
    .local v1, "res":Landroid/content/res/Resources;
    const-string v2, "user_settings_personalize_recommendations"

    const v3, 0x7f0a0025

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    return v2
.end method
