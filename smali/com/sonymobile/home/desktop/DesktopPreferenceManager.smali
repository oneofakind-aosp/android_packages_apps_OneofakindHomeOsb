.class public abstract Lcom/sonymobile/home/desktop/DesktopPreferenceManager;
.super Ljava/lang/Object;
.source "DesktopPreferenceManager.java"

# interfaces
.implements Lcom/sonymobile/home/desktop/DesktopPreferences;


# instance fields
.field private final mChanged:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected final mContext:Landroid/content/Context;

.field private mHomePageId:I

.field private mLeftmostPageId:I

.field private mNumberOfPages:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPreferenceManager;->mChanged:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 52
    iput-object p1, p0, Lcom/sonymobile/home/desktop/DesktopPreferenceManager;->mContext:Landroid/content/Context;

    .line 53
    return-void
.end method

.method public static allowOnlineSearchSuggestions(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 214
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0022

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public allowHomeModeMenuSetting()Z
    .locals 2

    .prologue
    .line 204
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPreferenceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0023

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public clearAll()V
    .locals 2

    .prologue
    .line 224
    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/DesktopPreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 225
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 226
    return-void
.end method

.method public abstract getDefaultHomePage()I
.end method

.method public abstract getDefaultNbrOfPages()I
.end method

.method public getHomePageId()I
    .locals 1

    .prologue
    .line 156
    iget v0, p0, Lcom/sonymobile/home/desktop/DesktopPreferenceManager;->mHomePageId:I

    return v0
.end method

.method public getLeftPageId()I
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Lcom/sonymobile/home/desktop/DesktopPreferenceManager;->mLeftmostPageId:I

    return v0
.end method

.method protected abstract getMaxNumberOfPages()I
.end method

.method public getNumberOfPages()I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lcom/sonymobile/home/desktop/DesktopPreferenceManager;->mNumberOfPages:I

    return v0
.end method

.method public getRightPageId()I
    .locals 2

    .prologue
    .line 137
    iget v0, p0, Lcom/sonymobile/home/desktop/DesktopPreferenceManager;->mLeftmostPageId:I

    iget v1, p0, Lcom/sonymobile/home/desktop/DesktopPreferenceManager;->mNumberOfPages:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method protected getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 196
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPreferenceManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/DesktopPreferenceManager;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getSharedPreferencesKey()Ljava/lang/String;
.end method

.method public read()V
    .locals 5

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/DesktopPreferenceManager;->getDefaultNbrOfPages()I

    move-result v1

    .line 60
    .local v1, "defaultNumberOfPages":I
    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/DesktopPreferenceManager;->getDefaultHomePage()I

    move-result v0

    .line 61
    .local v0, "defaultDesktopHomePage":I
    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/DesktopPreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    .line 62
    .local v2, "prefs":Landroid/content/SharedPreferences;
    const-string v3, "desktop_number_of_pages"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/sonymobile/home/desktop/DesktopPreferenceManager;->mNumberOfPages:I

    .line 63
    const-string v3, "desktop_home_page"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/sonymobile/home/desktop/DesktopPreferenceManager;->mHomePageId:I

    .line 64
    const-string v3, "desktop_left_most_page"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/sonymobile/home/desktop/DesktopPreferenceManager;->mLeftmostPageId:I

    .line 65
    return-void
.end method

.method public setHomePageId(I)V
    .locals 3
    .param p1, "homePageId"    # I

    .prologue
    .line 165
    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopPreferenceManager;->mChanged:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPreferenceManager;->mChanged:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    iget v0, p0, Lcom/sonymobile/home/desktop/DesktopPreferenceManager;->mHomePageId:I

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v2

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 166
    iput p1, p0, Lcom/sonymobile/home/desktop/DesktopPreferenceManager;->mHomePageId:I

    .line 167
    return-void

    .line 165
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setLeftPageId(I)V
    .locals 3
    .param p1, "leftPageId"    # I

    .prologue
    .line 146
    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopPreferenceManager;->mChanged:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPreferenceManager;->mChanged:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    iget v0, p0, Lcom/sonymobile/home/desktop/DesktopPreferenceManager;->mLeftmostPageId:I

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v2

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 147
    iput p1, p0, Lcom/sonymobile/home/desktop/DesktopPreferenceManager;->mLeftmostPageId:I

    .line 148
    return-void

    .line 146
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setNumberOfPages(I)V
    .locals 3
    .param p1, "nbrOfPages"    # I

    .prologue
    .line 118
    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopPreferenceManager;->mChanged:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPreferenceManager;->mChanged:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    iget v0, p0, Lcom/sonymobile/home/desktop/DesktopPreferenceManager;->mNumberOfPages:I

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v2

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 119
    iput p1, p0, Lcom/sonymobile/home/desktop/DesktopPreferenceManager;->mNumberOfPages:I

    .line 120
    return-void

    .line 118
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public store()V
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/desktop/DesktopPreferenceManager;->store(Z)V

    .line 72
    return-void
.end method

.method public store(Z)V
    .locals 4
    .param p1, "forceWrite"    # Z

    .prologue
    .line 80
    iget-object v2, p0, Lcom/sonymobile/home/desktop/DesktopPreferenceManager;->mChanged:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz p1, :cond_1

    .line 81
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/DesktopPreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 82
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 84
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "desktop_home_page"

    iget v3, p0, Lcom/sonymobile/home/desktop/DesktopPreferenceManager;->mHomePageId:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 85
    const-string v2, "desktop_left_most_page"

    iget v3, p0, Lcom/sonymobile/home/desktop/DesktopPreferenceManager;->mLeftmostPageId:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 86
    const-string v2, "desktop_number_of_pages"

    iget v3, p0, Lcom/sonymobile/home/desktop/DesktopPreferenceManager;->mNumberOfPages:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 88
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v2

    if-nez v2, :cond_1

    .line 89
    iget-object v2, p0, Lcom/sonymobile/home/desktop/DesktopPreferenceManager;->mChanged:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 92
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "prefs":Landroid/content/SharedPreferences;
    :cond_1
    return-void
.end method
