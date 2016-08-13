.class public Lcom/sonymobile/home/ApplicationPreferenceManager;
.super Ljava/lang/Object;
.source "ApplicationPreferenceManager.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mInitialized:Z

.field private mIsStkUSIMNameDisplayEnabled:Z

.field private final mSetUpMenuTitles:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/home/ApplicationPreferenceManager;->mIsStkUSIMNameDisplayEnabled:Z

    .line 37
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/sonymobile/home/ApplicationPreferenceManager;->mSetUpMenuTitles:[Ljava/lang/String;

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/home/ApplicationPreferenceManager;->mInitialized:Z

    .line 51
    iput-object p1, p0, Lcom/sonymobile/home/ApplicationPreferenceManager;->mContext:Landroid/content/Context;

    .line 52
    return-void
.end method


# virtual methods
.method public getStkSetupMenuTitle(I)Ljava/lang/String;
    .locals 2
    .param p1, "simSlotIndex"    # I

    .prologue
    .line 118
    const/4 v0, 0x0

    .line 119
    .local v0, "setupMenuTitle":Ljava/lang/String;
    if-ltz p1, :cond_0

    const/4 v1, 0x2

    if-ge p1, v1, :cond_0

    .line 120
    iget-object v1, p0, Lcom/sonymobile/home/ApplicationPreferenceManager;->mSetUpMenuTitles:[Ljava/lang/String;

    aget-object v0, v1, p1

    .line 122
    :cond_0
    return-object v0
.end method

.method public getStkSetupMenuTitles()[Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 131
    new-array v1, v3, [Ljava/lang/String;

    .line 132
    .local v1, "titles":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "ix":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 133
    iget-object v2, p0, Lcom/sonymobile/home/ApplicationPreferenceManager;->mSetUpMenuTitles:[Ljava/lang/String;

    aget-object v2, v2, v0

    aput-object v2, v1, v0

    .line 132
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 135
    :cond_0
    return-object v1
.end method

.method public isStkEnabled()Z
    .locals 2

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/sonymobile/home/ApplicationPreferenceManager;->mInitialized:Z

    if-nez v0, :cond_0

    .line 103
    const-string v0, "Home preferences"

    const-string v1, "Asking for data but haven\'t read preferences"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :cond_0
    iget-boolean v0, p0, Lcom/sonymobile/home/ApplicationPreferenceManager;->mIsStkUSIMNameDisplayEnabled:Z

    return v0
.end method

.method public read()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 58
    iget-object v3, p0, Lcom/sonymobile/home/ApplicationPreferenceManager;->mContext:Landroid/content/Context;

    const-string v4, "home_application_preferences"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 60
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const-string v3, "stk_preference"

    invoke-interface {v1, v3, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/sonymobile/home/ApplicationPreferenceManager;->mIsStkUSIMNameDisplayEnabled:Z

    .line 62
    const/4 v0, 0x0

    .local v0, "ix":I
    :goto_0
    const/4 v3, 0x2

    if-ge v0, v3, :cond_0

    .line 63
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stk_preference_set_up_menu_title"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 64
    .local v2, "setUpMenuTitle":Ljava/lang/String;
    iget-object v3, p0, Lcom/sonymobile/home/ApplicationPreferenceManager;->mSetUpMenuTitles:[Ljava/lang/String;

    aput-object v2, v3, v0

    .line 62
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 67
    .end local v2    # "setUpMenuTitle":Ljava/lang/String;
    :cond_0
    iput-boolean v6, p0, Lcom/sonymobile/home/ApplicationPreferenceManager;->mInitialized:Z

    .line 68
    return-void
.end method

.method public setStkSetupMenuTitle(Ljava/lang/String;I)V
    .locals 1
    .param p1, "stkSetupTitle"    # Ljava/lang/String;
    .param p2, "simSlotIndex"    # I

    .prologue
    .line 145
    if-ltz p2, :cond_0

    const/4 v0, 0x2

    if-ge p2, v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/sonymobile/home/ApplicationPreferenceManager;->mSetUpMenuTitles:[Ljava/lang/String;

    aput-object p1, v0, p2

    .line 148
    :cond_0
    return-void
.end method

.method public setValues(Z[Ljava/lang/String;)V
    .locals 3
    .param p1, "isStkEnabled"    # Z
    .param p2, "setUpMenuTitles"    # [Ljava/lang/String;

    .prologue
    .line 158
    iput-boolean p1, p0, Lcom/sonymobile/home/ApplicationPreferenceManager;->mIsStkUSIMNameDisplayEnabled:Z

    .line 159
    const/4 v0, 0x0

    .local v0, "ix":I
    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 160
    iget-object v1, p0, Lcom/sonymobile/home/ApplicationPreferenceManager;->mSetUpMenuTitles:[Ljava/lang/String;

    aget-object v2, p2, v0

    aput-object v2, v1, v0

    .line 159
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 162
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sonymobile/home/ApplicationPreferenceManager;->mInitialized:Z

    .line 163
    return-void
.end method

.method public store()V
    .locals 6

    .prologue
    .line 74
    iget-object v3, p0, Lcom/sonymobile/home/ApplicationPreferenceManager;->mContext:Landroid/content/Context;

    const-string v4, "home_application_preferences"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 75
    .local v2, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 77
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "stk_preference"

    iget-boolean v4, p0, Lcom/sonymobile/home/ApplicationPreferenceManager;->mIsStkUSIMNameDisplayEnabled:Z

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 79
    const/4 v1, 0x0

    .local v1, "ix":I
    :goto_0
    const/4 v3, 0x2

    if-ge v1, v3, :cond_0

    .line 80
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stk_preference_set_up_menu_title"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sonymobile/home/ApplicationPreferenceManager;->mSetUpMenuTitles:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 79
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 83
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 84
    return-void
.end method
