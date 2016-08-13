.class public interface abstract Lcom/sonymobile/home/folder/FolderOpener$OpenFolderListener;
.super Ljava/lang/Object;
.source "FolderOpener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/home/folder/FolderOpener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OpenFolderListener"
.end annotation


# virtual methods
.method public abstract onCannotUninstall(Lcom/sonymobile/home/data/Item;)V
.end method

.method public abstract onFolderClosed(Z)V
.end method

.method public abstract onFolderDeletePressed()V
.end method

.method public abstract onFolderItemDropped(Lcom/sonymobile/home/data/Item;Z)V
.end method

.method public abstract onFolderItemLongPressed(Lcom/sonymobile/home/data/Item;)V
.end method

.method public abstract onUninstall(Lcom/sonymobile/home/data/Item;)V
.end method
