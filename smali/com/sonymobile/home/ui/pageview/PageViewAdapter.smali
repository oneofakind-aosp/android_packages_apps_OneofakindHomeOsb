.class public interface abstract Lcom/sonymobile/home/ui/pageview/PageViewAdapter;
.super Ljava/lang/Object;
.source "PageViewAdapter.java"


# virtual methods
.method public abstract getDefaultPage()I
.end method

.method public abstract getHomePage()I
.end method

.method public abstract getIndex(J)I
.end method

.method public abstract getItemCount()I
.end method

.method public abstract getItemId(I)J
.end method

.method public abstract getItemView(I)Lcom/sonymobile/home/ui/pageview/PageItemView;
.end method

.method public abstract getLocation(ILcom/sonymobile/home/ui/pageview/PageLocation;)V
.end method

.method public abstract getMaximumNumberOfPages()I
.end method

.method public abstract getMinimumNumberOfPages()I
.end method

.method public abstract getPageCount()I
.end method

.method public abstract getPages()[I
.end method

.method public abstract isItemPickedUp(Lcom/sonymobile/home/data/Item;)Z
.end method

.method public abstract isPageEmpty(I)Z
.end method

.method public abstract registerObserver(Lcom/sonymobile/home/ui/pageview/PageViewObserver;)V
.end method

.method public abstract releaseView(Lcom/sonymobile/home/ui/pageview/PageItemView;)V
.end method

.method public abstract unregisterObserver(Lcom/sonymobile/home/ui/pageview/PageViewObserver;)V
.end method

.method public abstract updateItemView(Lcom/sonymobile/home/ui/pageview/PageItemView;I)V
.end method
