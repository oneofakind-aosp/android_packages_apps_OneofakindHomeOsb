.class public interface abstract Lcom/sonymobile/home/cui/AsyncBitmapLoader$BitmapLoadListener;
.super Ljava/lang/Object;
.source "AsyncBitmapLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/home/cui/AsyncBitmapLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "BitmapLoadListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onBitmapLoaded(Ljava/lang/Object;Lcom/sonymobile/home/cui/BitmapLoaderItem;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lcom/sonymobile/home/cui/BitmapLoaderItem;",
            ")V"
        }
    .end annotation
.end method
