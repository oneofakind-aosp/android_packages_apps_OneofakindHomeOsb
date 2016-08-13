.class public interface abstract Lcom/sonymobile/home/settings/UserSettings$UserSettingsListener;
.super Ljava/lang/Object;
.source "UserSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/home/settings/UserSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "UserSettingsListener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/home/settings/UserSettings$UserSettingsListener$Adapter;
    }
.end annotation


# virtual methods
.method public abstract onAllowRotateChanged(Z)V
.end method

.method public abstract onAutoArrangeItemsChanged(Z)V
.end method

.method public abstract onHomeModeChanged(Z)V
.end method

.method public abstract onIconPackChanged()V
.end method

.method public abstract onIconSizeChanged()V
.end method

.method public abstract onOnlineSuggestionsStatusChanged(Z)V
.end method

.method public abstract onPageTransitionChanged(Lcom/sonymobile/home/settings/UserSettings$PageTransition;)V
.end method

.method public abstract onShowLabelsInStageChanged()V
.end method

.method public abstract onStraightToDesktopModeChanged()V
.end method

.method public abstract onUserSettingsLoaded()V
.end method
