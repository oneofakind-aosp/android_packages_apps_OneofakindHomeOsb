.class public interface abstract Lcom/sonymobile/home/ui/pageview/PageItemViewFactory$ItemViewCreator;
.super Ljava/lang/Object;
.source "PageItemViewFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/home/ui/pageview/PageItemViewFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ItemViewCreator"
.end annotation


# virtual methods
.method public abstract createPageItemView(Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/model/ResourceItem;Lcom/sonymobile/flix/components/Scene;Lcom/sonymobile/home/ui/pageview/PageItemViewListener;)Lcom/sonymobile/home/ui/pageview/PageItemView;
.end method

.method public abstract onDestroy()V
.end method

.method public abstract updateConfiguration(Lcom/sonymobile/home/resources/ResourceManager;)V
.end method

.method public abstract updatePageItemView(Lcom/sonymobile/home/ui/pageview/PageItemView;Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/model/ResourceItem;)V
.end method
