.class public interface abstract Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopPresenterListener;
.super Ljava/lang/Object;
.source "DesktopPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/home/desktop/DesktopPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DesktopPresenterListener"
.end annotation


# virtual methods
.method public abstract onLongPressItem(Lcom/sonymobile/home/data/Item;)V
.end method

.method public abstract onStateChanged(Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;)V
.end method

.method public abstract onTransferModeEnter()V
.end method

.method public abstract onTransferModeExit()V
.end method
