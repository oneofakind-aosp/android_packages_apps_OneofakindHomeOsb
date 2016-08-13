.class public Lcom/sonymobile/home/settings/UserSettings$UserSettingsListener$Adapter;
.super Ljava/lang/Object;
.source "UserSettings.java"

# interfaces
.implements Lcom/sonymobile/home/settings/UserSettings$UserSettingsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/home/settings/UserSettings$UserSettingsListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Adapter"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAllowRotateChanged(Z)V
    .locals 0
    .param p1, "allowRotate"    # Z

    .prologue
    .line 111
    return-void
.end method

.method public onAutoArrangeItemsChanged(Z)V
    .locals 0
    .param p1, "autoPack"    # Z

    .prologue
    .line 120
    return-void
.end method

.method public onHomeModeChanged(Z)V
    .locals 0
    .param p1, "automaticDesktopMode"    # Z

    .prologue
    .line 117
    return-void
.end method

.method public onIconPackChanged()V
    .locals 0

    .prologue
    .line 132
    return-void
.end method

.method public onIconSizeChanged()V
    .locals 0

    .prologue
    .line 114
    return-void
.end method

.method public onOnlineSuggestionsStatusChanged(Z)V
    .locals 0
    .param p1, "onlineSuggestionsOn"    # Z

    .prologue
    .line 135
    return-void
.end method

.method public onPageTransitionChanged(Lcom/sonymobile/home/settings/UserSettings$PageTransition;)V
    .locals 0
    .param p1, "pageTransition"    # Lcom/sonymobile/home/settings/UserSettings$PageTransition;

    .prologue
    .line 129
    return-void
.end method

.method public onShowLabelsInStageChanged()V
    .locals 0

    .prologue
    .line 126
    return-void
.end method

.method public onStraightToDesktopModeChanged()V
    .locals 0

    .prologue
    .line 123
    return-void
.end method

.method public onUserSettingsLoaded()V
    .locals 0

    .prologue
    .line 108
    return-void
.end method
