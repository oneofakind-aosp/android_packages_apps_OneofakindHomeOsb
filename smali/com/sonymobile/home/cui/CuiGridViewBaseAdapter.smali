.class public abstract Lcom/sonymobile/home/cui/CuiGridViewBaseAdapter;
.super Ljava/lang/Object;
.source "CuiGridViewBaseAdapter.java"


# instance fields
.field private final mObservable:Lcom/sonymobile/home/cui/CuiGridViewObservable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Lcom/sonymobile/home/cui/CuiGridViewObservable;

    invoke-direct {v0}, Lcom/sonymobile/home/cui/CuiGridViewObservable;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/home/cui/CuiGridViewBaseAdapter;->mObservable:Lcom/sonymobile/home/cui/CuiGridViewObservable;

    return-void
.end method


# virtual methods
.method public notifyContentChanged()V
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridViewBaseAdapter;->mObservable:Lcom/sonymobile/home/cui/CuiGridViewObservable;

    invoke-virtual {v0}, Lcom/sonymobile/home/cui/CuiGridViewObservable;->notifyChanged()V

    .line 26
    return-void
.end method

.method public notifyViewChanged(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridViewBaseAdapter;->mObservable:Lcom/sonymobile/home/cui/CuiGridViewObservable;

    invoke-virtual {v0, p1}, Lcom/sonymobile/home/cui/CuiGridViewObservable;->viewChanged(I)V

    .line 36
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridViewBaseAdapter;->mObservable:Lcom/sonymobile/home/cui/CuiGridViewObservable;

    invoke-virtual {v0}, Lcom/sonymobile/home/cui/CuiGridViewObservable;->unregisterAll()V

    .line 80
    return-void
.end method

.method public registerObserver(Lcom/sonymobile/home/cui/CuiGridViewObserver;)V
    .locals 1
    .param p1, "observer"    # Lcom/sonymobile/home/cui/CuiGridViewObserver;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridViewBaseAdapter;->mObservable:Lcom/sonymobile/home/cui/CuiGridViewObservable;

    invoke-virtual {v0, p1}, Lcom/sonymobile/home/cui/CuiGridViewObservable;->registerObserver(Ljava/lang/Object;)V

    .line 63
    return-void
.end method

.method public unregisterObserver(Lcom/sonymobile/home/cui/CuiGridViewObserver;)V
    .locals 1
    .param p1, "observer"    # Lcom/sonymobile/home/cui/CuiGridViewObserver;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridViewBaseAdapter;->mObservable:Lcom/sonymobile/home/cui/CuiGridViewObservable;

    invoke-virtual {v0, p1}, Lcom/sonymobile/home/cui/CuiGridViewObservable;->unregisterObserver(Ljava/lang/Object;)V

    .line 73
    return-void
.end method
