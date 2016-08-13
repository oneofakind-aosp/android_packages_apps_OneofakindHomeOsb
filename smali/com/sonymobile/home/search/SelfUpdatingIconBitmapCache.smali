.class public Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache;
.super Ljava/lang/Object;
.source "SelfUpdatingIconBitmapCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache$Task;,
        Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache$DownloadListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

.field private final mIconSize:I

.field private final mIconSizeString:Ljava/lang/String;

.field private final mMainThreadHandler:Landroid/os/Handler;

.field private final mMemoryCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final mRunningTasks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache$Task;",
            ">;"
        }
    .end annotation
.end field

.field private final mSetter:Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache$DownloadListener;

.field private final mStorageCache:Lcom/sonymobile/home/search/suggest/SuggestionCache;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const-class v0, Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache$DownloadListener;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "setter"    # Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache$DownloadListener;

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache;->mRunningTasks:Ljava/util/HashMap;

    .line 76
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache;->mMainThreadHandler:Landroid/os/Handler;

    .line 85
    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 86
    .local v7, "runnableQueue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljava/lang/Runnable;>;"
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x4

    const/4 v3, 0x6

    const-wide/16 v4, 0x1e

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v1, p0, Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 89
    iput-object p2, p0, Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache;->mSetter:Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache$DownloadListener;

    .line 91
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00f9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache;->mIconSize:I

    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "=w"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache;->mIconSize:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache;->mIconSizeString:Ljava/lang/String;

    .line 94
    invoke-static {p1}, Lcom/sonymobile/home/search/suggest/SuggestionCache;->getInstance(Landroid/content/Context;)Lcom/sonymobile/home/search/suggest/SuggestionCache;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache;->mStorageCache:Lcom/sonymobile/home/search/suggest/SuggestionCache;

    .line 96
    iget v1, p0, Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache;->mIconSize:I

    iget v2, p0, Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache;->mIconSize:I

    mul-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x4

    mul-int/lit8 v0, v1, 0x18

    .line 98
    .local v0, "cacheSize":I
    new-instance v1, Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache$1;

    invoke-direct {v1, p0, v0}, Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache$1;-><init>(Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache;I)V

    iput-object v1, p0, Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache;->mMemoryCache:Landroid/util/LruCache;

    .line 104
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache;)Landroid/util/LruCache;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache;->mMemoryCache:Landroid/util/LruCache;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache;->mMainThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache;->mRunningTasks:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache;)Lcom/sonymobile/home/search/suggest/SuggestionCache;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache;->mStorageCache:Lcom/sonymobile/home/search/suggest/SuggestionCache;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache;->mIconSizeString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-static {p0, p1}, Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache;->updateUrlIconSize(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache;

    .prologue
    .line 39
    iget v0, p0, Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache;->mIconSize:I

    return v0
.end method

.method private getCachedIcon(Lcom/sonymobile/home/search/entry/SuggestionEntry;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "entry"    # Lcom/sonymobile/home/search/entry/SuggestionEntry;

    .prologue
    .line 150
    invoke-virtual {p1}, Lcom/sonymobile/home/search/entry/SuggestionEntry;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 152
    .local v2, "packageName":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/sonymobile/home/search/entry/SuggestionEntry;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 154
    .local v1, "entryIcon":Landroid/graphics/Bitmap;
    iget-object v5, p0, Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache;->mMemoryCache:Landroid/util/LruCache;

    monitor-enter v5

    .line 155
    :try_start_0
    iget-object v4, p0, Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache;->mMemoryCache:Landroid/util/LruCache;

    invoke-virtual {v4, v2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 156
    .local v0, "cachedIcon":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    .line 157
    iget-object v4, p0, Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache;->mMemoryCache:Landroid/util/LruCache;

    invoke-virtual {v4, v2, v1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    move-object v3, v1

    .line 162
    .local v3, "result":Landroid/graphics/Bitmap;
    :goto_0
    monitor-exit v5

    .line 164
    return-object v3

    .line 160
    .end local v3    # "result":Landroid/graphics/Bitmap;
    :cond_0
    move-object v3, v0

    .restart local v3    # "result":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 162
    .end local v0    # "cachedIcon":Landroid/graphics/Bitmap;
    .end local v3    # "result":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method private static updateUrlIconSize(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "iconSize"    # Ljava/lang/String;

    .prologue
    .line 193
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 194
    .local v2, "stringBuilder":Ljava/lang/StringBuilder;
    const-string v3, "=w300"

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 195
    .local v1, "lastStartIndex":I
    const-string v3, "=w300"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int v0, v1, v3

    .line 196
    .local v0, "endIndex":I
    invoke-virtual {v2, v1, v0, p1}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public cancel()V
    .locals 4

    .prologue
    .line 171
    iget-object v3, p0, Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache;->mRunningTasks:Ljava/util/HashMap;

    monitor-enter v3

    .line 172
    :try_start_0
    iget-object v2, p0, Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache;->mRunningTasks:Ljava/util/HashMap;

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

    check-cast v1, Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache$Task;

    .line 173
    .local v1, "task":Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache$Task;
    iget-object v2, p0, Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->remove(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 176
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "task":Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache$Task;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 175
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache;->mRunningTasks:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 176
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 177
    return-void
.end method

.method public cleanUp()V
    .locals 1

    .prologue
    .line 180
    invoke-virtual {p0}, Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache;->cancel()V

    .line 181
    iget-object v0, p0, Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    .line 182
    return-void
.end method

.method public getIconBitmap(Lcom/sonymobile/home/search/entry/SuggestionEntry;)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "entry"    # Lcom/sonymobile/home/search/entry/SuggestionEntry;

    .prologue
    const/4 v4, 0x0

    .line 118
    invoke-direct {p0, p1}, Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache;->getCachedIcon(Lcom/sonymobile/home/search/entry/SuggestionEntry;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 119
    .local v0, "icon":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 138
    .end local v0    # "icon":Landroid/graphics/Bitmap;
    :goto_0
    return-object v0

    .line 124
    .restart local v0    # "icon":Landroid/graphics/Bitmap;
    :cond_0
    invoke-virtual {p1}, Lcom/sonymobile/home/search/entry/SuggestionEntry;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 125
    .local v2, "packageName":Ljava/lang/String;
    iget-object v5, p0, Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache;->mRunningTasks:Ljava/util/HashMap;

    monitor-enter v5

    .line 126
    :try_start_0
    iget-object v6, p0, Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache;->mRunningTasks:Ljava/util/HashMap;

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 128
    monitor-exit v5

    move-object v0, v4

    goto :goto_0

    .line 130
    :cond_1
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    invoke-virtual {p1}, Lcom/sonymobile/home/search/entry/SuggestionEntry;->getIconUrl()Ljava/lang/String;

    move-result-object v1

    .line 133
    .local v1, "iconUrl":Ljava/lang/String;
    new-instance v3, Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache$Task;

    iget-object v5, p0, Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache;->mSetter:Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache$DownloadListener;

    invoke-direct {v3, p0, v5, v2, v1}, Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache$Task;-><init>(Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache;Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache$DownloadListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    .local v3, "task":Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache$Task;
    iget-object v5, p0, Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache;->mRunningTasks:Ljava/util/HashMap;

    monitor-enter v5

    .line 135
    :try_start_1
    iget-object v6, p0, Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache;->mRunningTasks:Ljava/util/HashMap;

    invoke-virtual {v6, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    iget-object v6, p0, Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v6, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 137
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v4

    .line 138
    goto :goto_0

    .line 130
    .end local v1    # "iconUrl":Ljava/lang/String;
    .end local v3    # "task":Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache$Task;
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 137
    .restart local v1    # "iconUrl":Ljava/lang/String;
    .restart local v3    # "task":Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache$Task;
    :catchall_1
    move-exception v4

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v4
.end method
