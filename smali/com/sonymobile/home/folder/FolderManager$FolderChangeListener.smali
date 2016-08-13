.class public interface abstract Lcom/sonymobile/home/folder/FolderManager$FolderChangeListener;
.super Ljava/lang/Object;
.source "FolderManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/home/folder/FolderManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FolderChangeListener"
.end annotation


# virtual methods
.method public abstract onFolderAdded(Ljava/lang/String;)V
.end method

.method public abstract onFolderChanged(J)V
.end method

.method public abstract onFolderNameChanged(JLjava/lang/String;)V
.end method
