.class public interface abstract Lcom/sonymobile/home/model/ResourceLoader;
.super Ljava/lang/Object;
.source "ResourceLoader.java"


# virtual methods
.method public abstract deleteResource(Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/model/ResourceItem;Lcom/sonymobile/home/model/ResourcePreloader;)Z
.end method

.method public abstract getDefaultResource(Landroid/content/Context;Lcom/sonymobile/home/data/Item;)Lcom/sonymobile/home/model/ResourceItem;
.end method

.method public abstract getLoaderId()I
.end method

.method public abstract getResource(Landroid/content/Context;Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/model/ResourcePreloader;)Lcom/sonymobile/home/model/ResourceItem;
.end method

.method public abstract onDestroy()V
.end method

.method public abstract releaseResource(ZLcom/sonymobile/home/data/Item;Lcom/sonymobile/home/model/ResourceItem;Lcom/sonymobile/home/model/ResourcePreloader;)Z
.end method

.method public abstract resourceUnavailable(Lcom/sonymobile/home/model/ResourceItem;)V
.end method

.method public abstract updateResource(Landroid/content/Context;Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/model/ResourceItem;)Lcom/sonymobile/home/model/ResourceItem;
.end method
