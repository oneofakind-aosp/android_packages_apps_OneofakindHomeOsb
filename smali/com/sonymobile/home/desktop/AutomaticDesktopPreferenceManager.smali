.class public Lcom/sonymobile/home/desktop/AutomaticDesktopPreferenceManager;
.super Lcom/sonymobile/home/desktop/DesktopPreferenceManager;
.source "AutomaticDesktopPreferenceManager.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/sonymobile/home/desktop/DesktopPreferenceManager;-><init>(Landroid/content/Context;)V

    .line 24
    return-void
.end method


# virtual methods
.method public allowAppTrayKeyToBeVisible()Z
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x0

    return v0
.end method

.method public allowAutoPackingOfItems()Z
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x1

    return v0
.end method

.method public allowDeletionOfPageContainingItems()Z
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    return v0
.end method

.method public allowPushingAroundItems()Z
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x1

    return v0
.end method

.method public allowUserToAddAppsToDesktop()Z
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x0

    return v0
.end method

.method public getDefaultHomePage()I
    .locals 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/sonymobile/home/desktop/AutomaticDesktopPreferenceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0026

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public getDefaultNbrOfPages()I
    .locals 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/sonymobile/home/desktop/AutomaticDesktopPreferenceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0027

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public getDesktopEnterTipId()I
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x1

    return v0
.end method

.method protected getMaxNumberOfPages()I
    .locals 1

    .prologue
    .line 55
    const/16 v0, 0xc8

    return v0
.end method

.method protected getSharedPreferencesKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    const-string v0, "home_desktop_preferences_desktop_automatic"

    return-object v0
.end method
