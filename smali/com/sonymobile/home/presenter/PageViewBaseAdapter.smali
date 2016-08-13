.class public abstract Lcom/sonymobile/home/presenter/PageViewBaseAdapter;
.super Ljava/lang/Object;
.source "PageViewBaseAdapter.java"

# interfaces
.implements Lcom/sonymobile/home/model/ModelObserver;
.implements Lcom/sonymobile/home/ui/pageview/PageViewAdapter;


# instance fields
.field private final mObservable:Lcom/sonymobile/home/ui/pageview/PageViewObservable;

.field private mShowItemOptions:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lcom/sonymobile/home/ui/pageview/PageViewObservable;

    invoke-direct {v0}, Lcom/sonymobile/home/ui/pageview/PageViewObservable;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/home/presenter/PageViewBaseAdapter;->mObservable:Lcom/sonymobile/home/ui/pageview/PageViewObservable;

    return-void
.end method


# virtual methods
.method public notifyContentChanged()V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sonymobile/home/presenter/PageViewBaseAdapter;->mObservable:Lcom/sonymobile/home/ui/pageview/PageViewObservable;

    invoke-virtual {v0}, Lcom/sonymobile/home/ui/pageview/PageViewObservable;->notifyContentChanged()V

    .line 45
    return-void
.end method

.method public notifyPageItemChanged(J)V
    .locals 1
    .param p1, "uniqueId"    # J

    .prologue
    .line 54
    iget-object v0, p0, Lcom/sonymobile/home/presenter/PageViewBaseAdapter;->mObservable:Lcom/sonymobile/home/ui/pageview/PageViewObservable;

    invoke-virtual {v0, p1, p2}, Lcom/sonymobile/home/ui/pageview/PageViewObservable;->notifyPageItemChanged(J)V

    .line 55
    return-void
.end method

.method public notifyPageItemOrderChanged()V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sonymobile/home/presenter/PageViewBaseAdapter;->mObservable:Lcom/sonymobile/home/ui/pageview/PageViewObservable;

    invoke-virtual {v0}, Lcom/sonymobile/home/ui/pageview/PageViewObservable;->notifyPageItemOrderChanged()V

    .line 63
    return-void
.end method

.method protected refreshItemViewOptions(Lcom/sonymobile/home/ui/pageview/PageItemView;)V
    .locals 1
    .param p1, "pageItemView"    # Lcom/sonymobile/home/ui/pageview/PageItemView;

    .prologue
    .line 105
    if-eqz p1, :cond_0

    .line 106
    iget-boolean v0, p0, Lcom/sonymobile/home/presenter/PageViewBaseAdapter;->mShowItemOptions:Z

    invoke-virtual {p1, v0}, Lcom/sonymobile/home/ui/pageview/PageItemView;->showUninstallOption(Z)V

    .line 108
    :cond_0
    return-void
.end method

.method public registerObserver(Lcom/sonymobile/home/ui/pageview/PageViewObserver;)V
    .locals 1
    .param p1, "observer"    # Lcom/sonymobile/home/ui/pageview/PageViewObserver;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/sonymobile/home/presenter/PageViewBaseAdapter;->mObservable:Lcom/sonymobile/home/ui/pageview/PageViewObservable;

    invoke-virtual {v0, p1}, Lcom/sonymobile/home/ui/pageview/PageViewObservable;->registerObserver(Ljava/lang/Object;)V

    .line 74
    return-void
.end method

.method public showItemOptions(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/sonymobile/home/presenter/PageViewBaseAdapter;->mShowItemOptions:Z

    if-eq v0, p1, :cond_0

    .line 94
    iput-boolean p1, p0, Lcom/sonymobile/home/presenter/PageViewBaseAdapter;->mShowItemOptions:Z

    .line 95
    invoke-virtual {p0}, Lcom/sonymobile/home/presenter/PageViewBaseAdapter;->notifyContentChanged()V

    .line 97
    :cond_0
    return-void
.end method

.method public unregisterObserver(Lcom/sonymobile/home/ui/pageview/PageViewObserver;)V
    .locals 1
    .param p1, "observer"    # Lcom/sonymobile/home/ui/pageview/PageViewObserver;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/sonymobile/home/presenter/PageViewBaseAdapter;->mObservable:Lcom/sonymobile/home/ui/pageview/PageViewObservable;

    invoke-virtual {v0, p1}, Lcom/sonymobile/home/ui/pageview/PageViewObservable;->unregisterObserver(Ljava/lang/Object;)V

    .line 85
    return-void
.end method
