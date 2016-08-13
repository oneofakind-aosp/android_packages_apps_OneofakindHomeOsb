.class public Lcom/sonymobile/home/apptray/AppTrayPreferenceManager;
.super Ljava/lang/Object;
.source "AppTrayPreferenceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;
    }
.end annotation


# static fields
.field private static final DEFAULT_SORT_MODE:Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mHasChanged:Z

.field private final mPreferenceLock:Ljava/lang/Object;

.field private mShouldOwnOrderBeSortedAlphabetically:Z

.field private mSortMode:Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 91
    sget-object v0, Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;->OWN_ORDER:Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;

    sput-object v0, Lcom/sonymobile/home/apptray/AppTrayPreferenceManager;->DEFAULT_SORT_MODE:Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    sget-object v0, Lcom/sonymobile/home/apptray/AppTrayPreferenceManager;->DEFAULT_SORT_MODE:Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;

    iput-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPreferenceManager;->mSortMode:Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;

    .line 100
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPreferenceManager;->mPreferenceLock:Ljava/lang/Object;

    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/home/apptray/AppTrayPreferenceManager;->mHasChanged:Z

    .line 106
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/home/apptray/AppTrayPreferenceManager;->mShouldOwnOrderBeSortedAlphabetically:Z

    .line 114
    iput-object p1, p0, Lcom/sonymobile/home/apptray/AppTrayPreferenceManager;->mContext:Landroid/content/Context;

    .line 115
    return-void
.end method

.method public static clearPreferences(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 302
    const-string v1, "apptray"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 304
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 305
    return-void
.end method

.method private static getSortOrderChangedBy(Landroid/content/SharedPreferences;)Ljava/lang/String;
    .locals 2
    .param p0, "prefs"    # Landroid/content/SharedPreferences;

    .prologue
    .line 347
    const-string v0, "sort_order_changed_by"

    const-string v1, "Default"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static readSortOrderChangedBySync(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 270
    const-string v1, "apptray"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 272
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-static {v0}, Lcom/sonymobile/home/apptray/AppTrayPreferenceManager;->getSortOrderChangedBy(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static readSortOrderSync(Landroid/content/Context;)Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 235
    const-string v4, "apptray"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 237
    .local v2, "prefs":Landroid/content/SharedPreferences;
    const-string v4, "sort_order"

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 239
    .local v3, "value":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 240
    sget-object v1, Lcom/sonymobile/home/apptray/AppTrayPreferenceManager;->DEFAULT_SORT_MODE:Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;

    .line 243
    .local v1, "mode":Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;
    :try_start_0
    invoke-static {v3}, Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;->getSortMode(Ljava/lang/String;)Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 250
    .end local v1    # "mode":Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;
    :goto_0
    return-object v1

    .line 244
    .restart local v1    # "mode":Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;
    :catch_0
    move-exception v0

    .line 245
    .local v0, "iae":Ljava/lang/IllegalArgumentException;
    const-string v4, "AppTrayPrefsManager"

    const-string v5, "Couldn\'t convert sort order preference"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 250
    .end local v0    # "iae":Ljava/lang/IllegalArgumentException;
    .end local v1    # "mode":Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;
    :cond_0
    sget-object v1, Lcom/sonymobile/home/apptray/AppTrayPreferenceManager;->DEFAULT_SORT_MODE:Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;

    goto :goto_0
.end method

.method public static storeCustomizationSortOrderSync(Landroid/content/Context;Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sortMode"    # Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;

    .prologue
    .line 289
    const-string v2, "apptray"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 291
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 292
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-virtual {p1}, Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;->getString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v0, v2, v3}, Lcom/sonymobile/home/apptray/AppTrayPreferenceManager;->updateSortOrder(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Z)V

    .line 293
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v2

    return v2
.end method

.method private static updateSortOrder(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Z)V
    .locals 1
    .param p0, "prefs"    # Landroid/content/SharedPreferences;
    .param p1, "editor"    # Landroid/content/SharedPreferences$Editor;
    .param p2, "sortMode"    # Ljava/lang/String;
    .param p3, "changedByCustomization"    # Z

    .prologue
    .line 309
    invoke-static {p0, p1, p2, p3}, Lcom/sonymobile/home/apptray/AppTrayPreferenceManager;->updateSortOrderChangedBy(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Z)V

    .line 310
    const-string v0, "sort_order"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 311
    return-void
.end method

.method private static updateSortOrderChangedBy(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Z)V
    .locals 4
    .param p0, "prefs"    # Landroid/content/SharedPreferences;
    .param p1, "editor"    # Landroid/content/SharedPreferences$Editor;
    .param p2, "newSortMode"    # Ljava/lang/String;
    .param p3, "changedByCustomization"    # Z

    .prologue
    .line 329
    const-string v2, "sort_order"

    sget-object v3, Lcom/sonymobile/home/apptray/AppTrayPreferenceManager;->DEFAULT_SORT_MODE:Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;

    invoke-virtual {v3}, Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;->getString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 331
    .local v0, "currentSortMode":Ljava/lang/String;
    invoke-static {p0}, Lcom/sonymobile/home/apptray/AppTrayPreferenceManager;->getSortOrderChangedBy(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v1

    .line 333
    .local v1, "currentSortModeChangedBy":Ljava/lang/String;
    if-nez p3, :cond_1

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "Default"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 336
    const-string v2, "sort_order_changed_by"

    const-string v3, "SortAppsList"

    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 344
    :cond_0
    :goto_0
    return-void

    .line 338
    :cond_1
    if-eqz p3, :cond_0

    const-string v2, "Default"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 341
    const-string v2, "sort_order_changed_by"

    const-string v3, "Default"

    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method


# virtual methods
.method public getSortMode()Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;
    .locals 2

    .prologue
    .line 177
    iget-object v1, p0, Lcom/sonymobile/home/apptray/AppTrayPreferenceManager;->mPreferenceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 178
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPreferenceManager;->mSortMode:Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;

    monitor-exit v1

    return-object v0

    .line 179
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public read()V
    .locals 8

    .prologue
    .line 121
    iget-object v4, p0, Lcom/sonymobile/home/apptray/AppTrayPreferenceManager;->mContext:Landroid/content/Context;

    const-string v5, "apptray"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 125
    .local v1, "prefs":Landroid/content/SharedPreferences;
    sget-object v2, Lcom/sonymobile/home/apptray/AppTrayPreferenceManager;->DEFAULT_SORT_MODE:Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;

    .line 126
    .local v2, "sortMode":Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;
    const-string v4, "sort_order"

    const/4 v5, 0x0

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 127
    .local v3, "sortModeString":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 129
    :try_start_0
    invoke-static {v3}, Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;->getSortMode(Ljava/lang/String;)Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 135
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/sonymobile/home/apptray/AppTrayPreferenceManager;->mPreferenceLock:Ljava/lang/Object;

    monitor-enter v5

    .line 136
    :try_start_1
    iput-object v2, p0, Lcom/sonymobile/home/apptray/AppTrayPreferenceManager;->mSortMode:Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;

    .line 137
    const-string v4, "preference_apptray_should_own_order_be_sorted_alphabetically"

    iget-object v6, p0, Lcom/sonymobile/home/apptray/AppTrayPreferenceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0027

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    invoke-interface {v1, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/sonymobile/home/apptray/AppTrayPreferenceManager;->mShouldOwnOrderBeSortedAlphabetically:Z

    .line 140
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 141
    return-void

    .line 130
    :catch_0
    move-exception v0

    .line 131
    .local v0, "iae":Ljava/lang/IllegalArgumentException;
    const-string v4, "AppTrayPrefsManager"

    const-string v5, "Couldn\'t convert sort order preference"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 140
    .end local v0    # "iae":Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4
.end method

.method public setShouldOwnOrderBeSortedAlphabetically(Z)V
    .locals 2
    .param p1, "shouldOwnOrderBeSortedAlphabetically"    # Z

    .prologue
    .line 222
    iget-object v1, p0, Lcom/sonymobile/home/apptray/AppTrayPreferenceManager;->mPreferenceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 223
    :try_start_0
    iget-boolean v0, p0, Lcom/sonymobile/home/apptray/AppTrayPreferenceManager;->mShouldOwnOrderBeSortedAlphabetically:Z

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/sonymobile/home/apptray/AppTrayPreferenceManager;->mHasChanged:Z

    .line 224
    iput-boolean p1, p0, Lcom/sonymobile/home/apptray/AppTrayPreferenceManager;->mShouldOwnOrderBeSortedAlphabetically:Z

    .line 225
    monitor-exit v1

    .line 226
    return-void

    .line 223
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 225
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setSortMode(Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;)V
    .locals 2
    .param p1, "sortMode"    # Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;

    .prologue
    .line 188
    iget-object v1, p0, Lcom/sonymobile/home/apptray/AppTrayPreferenceManager;->mPreferenceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 189
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPreferenceManager;->mSortMode:Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;

    if-eq p1, v0, :cond_0

    .line 190
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/home/apptray/AppTrayPreferenceManager;->mHasChanged:Z

    .line 192
    :cond_0
    iput-object p1, p0, Lcom/sonymobile/home/apptray/AppTrayPreferenceManager;->mSortMode:Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;

    .line 193
    monitor-exit v1

    .line 194
    return-void

    .line 193
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public shouldOwnOrderBeSortedAlphabetically()Z
    .locals 2

    .prologue
    .line 211
    iget-object v1, p0, Lcom/sonymobile/home/apptray/AppTrayPreferenceManager;->mPreferenceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 212
    :try_start_0
    iget-boolean v0, p0, Lcom/sonymobile/home/apptray/AppTrayPreferenceManager;->mShouldOwnOrderBeSortedAlphabetically:Z

    monitor-exit v1

    return v0

    .line 213
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public store()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 148
    iget-object v5, p0, Lcom/sonymobile/home/apptray/AppTrayPreferenceManager;->mPreferenceLock:Ljava/lang/Object;

    monitor-enter v5

    .line 149
    :try_start_0
    iget-boolean v1, p0, Lcom/sonymobile/home/apptray/AppTrayPreferenceManager;->mHasChanged:Z

    .line 150
    .local v1, "hasChanged":Z
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/sonymobile/home/apptray/AppTrayPreferenceManager;->mHasChanged:Z

    .line 151
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    if-eqz v1, :cond_0

    .line 153
    iget-object v4, p0, Lcom/sonymobile/home/apptray/AppTrayPreferenceManager;->mContext:Landroid/content/Context;

    const-string v5, "apptray"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 155
    .local v2, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 157
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v5, p0, Lcom/sonymobile/home/apptray/AppTrayPreferenceManager;->mPreferenceLock:Ljava/lang/Object;

    monitor-enter v5

    .line 158
    :try_start_1
    iget-object v4, p0, Lcom/sonymobile/home/apptray/AppTrayPreferenceManager;->mSortMode:Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;

    invoke-virtual {v4}, Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;->getString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    invoke-static {v2, v0, v4, v6}, Lcom/sonymobile/home/apptray/AppTrayPreferenceManager;->updateSortOrder(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Z)V

    .line 159
    const-string v4, "preference_apptray_should_own_order_be_sorted_alphabetically"

    iget-boolean v6, p0, Lcom/sonymobile/home/apptray/AppTrayPreferenceManager;->mShouldOwnOrderBeSortedAlphabetically:Z

    invoke-interface {v0, v4, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 160
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 162
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v3

    .line 163
    .local v3, "success":Z
    if-nez v3, :cond_0

    .line 164
    iget-object v5, p0, Lcom/sonymobile/home/apptray/AppTrayPreferenceManager;->mPreferenceLock:Ljava/lang/Object;

    monitor-enter v5

    .line 165
    const/4 v4, 0x1

    :try_start_2
    iput-boolean v4, p0, Lcom/sonymobile/home/apptray/AppTrayPreferenceManager;->mHasChanged:Z

    .line 166
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 169
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "prefs":Landroid/content/SharedPreferences;
    .end local v3    # "success":Z
    :cond_0
    return-void

    .line 151
    .end local v1    # "hasChanged":Z
    :catchall_0
    move-exception v4

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4

    .line 160
    .restart local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v1    # "hasChanged":Z
    .restart local v2    # "prefs":Landroid/content/SharedPreferences;
    :catchall_1
    move-exception v4

    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v4

    .line 166
    .restart local v3    # "success":Z
    :catchall_2
    move-exception v4

    :try_start_5
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v4
.end method
