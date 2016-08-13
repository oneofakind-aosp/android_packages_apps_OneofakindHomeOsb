.class public Lcom/sonymobile/home/iconpacks/IconPacksUtility;
.super Ljava/lang/Object;
.source "IconPacksUtility.java"


# direct methods
.method public static doesThemeContainIconPack(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 84
    if-nez p1, :cond_1

    .line 102
    :cond_0
    :goto_0
    return v3

    .line 90
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080113

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 98
    .local v2, "themeIconPackFileName":Ljava/lang/String;
    :goto_1
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 102
    .local v1, "resources":Landroid/content/res/Resources;
    const-string v4, "xml"

    invoke-virtual {v1, v2, v4, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    .line 91
    .end local v1    # "resources":Landroid/content/res/Resources;
    .end local v2    # "themeIconPackFileName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 93
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "appfilter"

    .restart local v2    # "themeIconPackFileName":Ljava/lang/String;
    goto :goto_1

    .line 99
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 100
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method public static getIconPackToLoad(Landroid/content/Context;Lcom/sonymobile/home/settings/UserSettings;)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userSettings"    # Lcom/sonymobile/home/settings/UserSettings;

    .prologue
    const/4 v5, 0x1

    .line 135
    invoke-static {p0}, Lcom/sonymobile/home/runtimeskinning/ThemeUtils;->getCurrentThemePackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 136
    .local v0, "currentThemePackageName":Ljava/lang/String;
    invoke-virtual {p1, v0}, Lcom/sonymobile/home/settings/UserSettings;->hasThemeChanged(Ljava/lang/String;)Z

    move-result v2

    .line 137
    .local v2, "hasThemeChanged":Z
    if-eqz v2, :cond_0

    .line 139
    invoke-static {p0, p1}, Lcom/sonymobile/home/util/FolderIconUtils;->getInstance(Landroid/content/Context;Lcom/sonymobile/home/settings/UserSettings;)Lcom/sonymobile/home/util/FolderIconUtils;

    move-result-object v1

    .line 140
    .local v1, "folderIconUtils":Lcom/sonymobile/home/util/FolderIconUtils;
    invoke-virtual {v1, v5}, Lcom/sonymobile/home/util/FolderIconUtils;->updateIconData(Z)V

    .line 142
    .end local v1    # "folderIconUtils":Lcom/sonymobile/home/util/FolderIconUtils;
    :cond_0
    if-nez v2, :cond_1

    invoke-static {p0, v0}, Lcom/sonymobile/home/iconpacks/IconPacksUtility;->hasIconPackChangedInCurrentTheme(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 144
    .local v5, "updateIconPackSettings":Z
    :cond_1
    :goto_0
    const/4 v3, 0x0

    .line 145
    .local v3, "iconPackToLoad":Ljava/lang/String;
    if-eqz v5, :cond_4

    invoke-static {p0, v0}, Lcom/sonymobile/home/iconpacks/IconPacksUtility;->doesThemeContainIconPack(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 146
    move-object v3, v0

    .line 151
    :cond_2
    :goto_1
    return-object v3

    .line 142
    .end local v3    # "iconPackToLoad":Ljava/lang/String;
    .end local v5    # "updateIconPackSettings":Z
    :cond_3
    const/4 v5, 0x0

    goto :goto_0

    .line 147
    .restart local v3    # "iconPackToLoad":Ljava/lang/String;
    .restart local v5    # "updateIconPackSettings":Z
    :cond_4
    if-nez v5, :cond_2

    .line 148
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 149
    .local v4, "prefs":Landroid/content/SharedPreferences;
    const-string v6, "current_icon_pack"

    const/4 v7, 0x0

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method public static hasIconPackChangedInCurrentTheme(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 113
    if-nez p1, :cond_1

    .line 122
    :cond_0
    :goto_0
    return v3

    .line 116
    :cond_1
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 117
    .local v2, "prefs":Landroid/content/SharedPreferences;
    const-string v4, "user_settings_current_theme"

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, "currentThemePackageName":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 121
    const-string v4, "current_theme_has_icon_pack"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 122
    .local v1, "didThemeContainIconPack":Z
    invoke-static {p0, p1}, Lcom/sonymobile/home/iconpacks/IconPacksUtility;->doesThemeContainIconPack(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eq v1, v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0
.end method

.method public static setIconPackPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "fromTheme"    # Z

    .prologue
    const/4 v10, 0x0

    .line 36
    const/4 v3, 0x1

    .line 37
    .local v3, "iconPackChanged":Z
    const/4 v7, 0x0

    .line 38
    .local v7, "themeChanged":Z
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 39
    .local v4, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 40
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    if-eqz p2, :cond_8

    .line 41
    const-string v8, "user_settings_current_theme"

    invoke-interface {v4, v8, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 42
    .local v6, "previousTheme":Ljava/lang/String;
    const-string v8, "current_icon_pack"

    invoke-interface {v4, v8, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 43
    .local v5, "previousPackageName":Ljava/lang/String;
    invoke-static {p0, p1}, Lcom/sonymobile/home/iconpacks/IconPacksUtility;->doesThemeContainIconPack(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 44
    .local v1, "doesThemeContainIconPack":Z
    if-nez p1, :cond_0

    if-nez v6, :cond_1

    :cond_0
    if-eqz p1, :cond_5

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 46
    :cond_1
    const-string v8, "user_settings_current_theme"

    invoke-interface {v2, v8, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 47
    const/4 v7, 0x1

    .line 55
    :cond_2
    :goto_0
    if-eqz v1, :cond_6

    .line 57
    const-string v8, "current_icon_pack"

    invoke-interface {v2, v8, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 70
    .end local v1    # "doesThemeContainIconPack":Z
    .end local v5    # "previousPackageName":Ljava/lang/String;
    .end local v6    # "previousTheme":Ljava/lang/String;
    :goto_1
    if-nez v3, :cond_3

    if-eqz v7, :cond_4

    .line 71
    :cond_3
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 73
    :cond_4
    return v3

    .line 49
    .restart local v1    # "doesThemeContainIconPack":Z
    .restart local v5    # "previousPackageName":Ljava/lang/String;
    .restart local v6    # "previousTheme":Ljava/lang/String;
    :cond_5
    const-string v8, "current_theme_has_icon_pack"

    const/4 v9, 0x0

    invoke-interface {v4, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 50
    .local v0, "didThemeContainIconPack":Z
    if-eq v1, v0, :cond_2

    .line 51
    const-string v8, "current_theme_has_icon_pack"

    invoke-interface {v2, v8, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 52
    const/4 v7, 0x1

    goto :goto_0

    .line 58
    .end local v0    # "didThemeContainIconPack":Z
    :cond_6
    if-eqz v6, :cond_7

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 60
    const-string v8, "current_icon_pack"

    invoke-interface {v2, v8, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 64
    :cond_7
    const/4 v3, 0x0

    goto :goto_1

    .line 67
    .end local v1    # "doesThemeContainIconPack":Z
    .end local v5    # "previousPackageName":Ljava/lang/String;
    .end local v6    # "previousTheme":Ljava/lang/String;
    :cond_8
    const-string v8, "current_icon_pack"

    invoke-interface {v2, v8, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1
.end method

.method public static updateIconPackFromThemeIfNeeded(Landroid/content/Context;Lcom/sonymobile/home/settings/UserSettings;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userSettings"    # Lcom/sonymobile/home/settings/UserSettings;

    .prologue
    const/4 v3, 0x1

    .line 162
    invoke-static {p0}, Lcom/sonymobile/home/runtimeskinning/ThemeUtils;->getCurrentThemePackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 163
    .local v0, "currentThemePackageName":Ljava/lang/String;
    invoke-virtual {p1, v0}, Lcom/sonymobile/home/settings/UserSettings;->hasThemeChanged(Ljava/lang/String;)Z

    move-result v1

    .line 164
    .local v1, "hasThemeChanged":Z
    if-nez v1, :cond_0

    invoke-static {p0, v0}, Lcom/sonymobile/home/iconpacks/IconPacksUtility;->hasIconPackChangedInCurrentTheme(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    move v2, v3

    .line 166
    .local v2, "updateIconPackSettings":Z
    :goto_0
    if-eqz v2, :cond_1

    .line 168
    invoke-static {p0, v0, v3}, Lcom/sonymobile/home/iconpacks/IconPacksUtility;->setIconPackPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 170
    :cond_1
    return-void

    .line 164
    .end local v2    # "updateIconPackSettings":Z
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method
