.class public abstract Lcom/sonymobile/home/cui/AsyncBitmapLoader;
.super Ljava/lang/Object;
.source "AsyncBitmapLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/home/cui/AsyncBitmapLoader$LoadBitmapTask;,
        Lcom/sonymobile/home/cui/AsyncBitmapLoader$BitmapLoadListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mTasks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<TT;",
            "Lcom/sonymobile/home/cui/AsyncBitmapLoader",
            "<TT;>.com/sonymobile/home/cui/AsyncBitmap",
            "Loader$LoadBitmapTask;",
            ">;"
        }
    .end annotation
.end field

.field private final mThreadPool:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 76
    .local p0, "this":Lcom/sonymobile/home/cui/AsyncBitmapLoader;, "Lcom/sonymobile/home/cui/AsyncBitmapLoader<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Lcom/sonymobile/home/util/NamingThreadFactory;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sonymobile/home/util/NamingThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/home/cui/AsyncBitmapLoader;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    .line 79
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/home/cui/AsyncBitmapLoader;->mTasks:Ljava/util/HashMap;

    .line 80
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/home/cui/AsyncBitmapLoader;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/cui/AsyncBitmapLoader;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/sonymobile/home/cui/AsyncBitmapLoader;->mTasks:Ljava/util/HashMap;

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    .line 86
    .local p0, "this":Lcom/sonymobile/home/cui/AsyncBitmapLoader;, "Lcom/sonymobile/home/cui/AsyncBitmapLoader<TT;>;"
    iget-object v2, p0, Lcom/sonymobile/home/cui/AsyncBitmapLoader;->mTasks:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/cui/AsyncBitmapLoader$LoadBitmapTask;

    .line 87
    .local v1, "task":Lcom/sonymobile/home/cui/AsyncBitmapLoader$LoadBitmapTask;, "Lcom/sonymobile/home/cui/AsyncBitmapLoader<TT;>.LoadBitmapTask;"
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sonymobile/home/cui/AsyncBitmapLoader$LoadBitmapTask;->cancel(Z)Z

    goto :goto_0

    .line 90
    .end local v1    # "task":Lcom/sonymobile/home/cui/AsyncBitmapLoader$LoadBitmapTask;, "Lcom/sonymobile/home/cui/AsyncBitmapLoader<TT;>.LoadBitmapTask;"
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/home/cui/AsyncBitmapLoader;->mTasks:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 91
    iget-object v2, p0, Lcom/sonymobile/home/cui/AsyncBitmapLoader;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 92
    return-void
.end method

.method public load(Ljava/lang/Object;Lcom/sonymobile/home/cui/AsyncBitmapLoader$BitmapLoadListener;)Lcom/sonymobile/home/cui/BitmapLoaderItem;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/sonymobile/home/cui/AsyncBitmapLoader$BitmapLoadListener",
            "<TT;>;)",
            "Lcom/sonymobile/home/cui/BitmapLoaderItem;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/sonymobile/home/cui/AsyncBitmapLoader;, "Lcom/sonymobile/home/cui/AsyncBitmapLoader<TT;>;"
    .local p1, "key":Ljava/lang/Object;, "TT;"
    .local p2, "listener":Lcom/sonymobile/home/cui/AsyncBitmapLoader$BitmapLoadListener;, "Lcom/sonymobile/home/cui/AsyncBitmapLoader$BitmapLoadListener<TT;>;"
    const/4 v3, 0x0

    .line 103
    iget-object v1, p0, Lcom/sonymobile/home/cui/AsyncBitmapLoader;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 116
    :goto_0
    return-object v3

    .line 108
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/home/cui/AsyncBitmapLoader;->mTasks:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 109
    iget-object v1, p0, Lcom/sonymobile/home/cui/AsyncBitmapLoader;->mTasks:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/cui/AsyncBitmapLoader$LoadBitmapTask;

    invoke-virtual {v1, p2}, Lcom/sonymobile/home/cui/AsyncBitmapLoader$LoadBitmapTask;->setListener(Lcom/sonymobile/home/cui/AsyncBitmapLoader$BitmapLoadListener;)V

    goto :goto_0

    .line 111
    :cond_1
    new-instance v0, Lcom/sonymobile/home/cui/AsyncBitmapLoader$LoadBitmapTask;

    invoke-direct {v0, p0, p1, p2}, Lcom/sonymobile/home/cui/AsyncBitmapLoader$LoadBitmapTask;-><init>(Lcom/sonymobile/home/cui/AsyncBitmapLoader;Ljava/lang/Object;Lcom/sonymobile/home/cui/AsyncBitmapLoader$BitmapLoadListener;)V

    .line 112
    .local v0, "task":Lcom/sonymobile/home/cui/AsyncBitmapLoader$LoadBitmapTask;, "Lcom/sonymobile/home/cui/AsyncBitmapLoader<TT;>.LoadBitmapTask;"
    iget-object v1, p0, Lcom/sonymobile/home/cui/AsyncBitmapLoader;->mTasks:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    iget-object v1, p0, Lcom/sonymobile/home/cui/AsyncBitmapLoader;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/home/cui/AsyncBitmapLoader$LoadBitmapTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method protected abstract loadBitmaps(Ljava/lang/Object;)Lcom/sonymobile/home/cui/BitmapLoaderItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/sonymobile/home/cui/BitmapLoaderItem;"
        }
    .end annotation
.end method
