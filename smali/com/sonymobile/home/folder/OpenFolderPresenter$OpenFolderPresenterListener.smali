.class public interface abstract Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderPresenterListener;
.super Ljava/lang/Object;
.source "OpenFolderPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/home/folder/OpenFolderPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OpenFolderPresenterListener"
.end annotation


# virtual methods
.method public abstract onCannotUninstall(Lcom/sonymobile/home/data/Item;)V
.end method

.method public abstract onClose(Z)V
.end method

.method public abstract onDelete()V
.end method

.method public abstract onFolderItemDropped(Lcom/sonymobile/home/data/Item;Z)V
.end method

.method public abstract onFolderItemLongPressed(Lcom/sonymobile/home/data/Item;)V
.end method

.method public abstract onUninstall(Lcom/sonymobile/home/data/Item;)V
.end method
