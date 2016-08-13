.class final Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache$Task;
.super Ljava/lang/Object;
.source "SelfUpdatingIconBitmapCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Task"
.end annotation


# instance fields
.field private final mPackageName:Ljava/lang/String;

.field private final mSetter:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache$DownloadListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mUrl:Ljava/lang/String;

.field final synthetic this$0:Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache;


# direct methods
.method public constructor <init>(Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache;Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache$DownloadListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p2, "setter"    # Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache$DownloadListener;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "url"    # Ljava/lang/String;

    .prologue
    .line 209
    iput-object p1, p0, Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache$Task;->this$0:Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 210
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache$Task;->mSetter:Ljava/lang/ref/WeakReference;

    .line 211
    iput-object p3, p0, Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache$Task;->mPackageName:Ljava/lang/String;

    .line 212
    iput-object p4, p0, Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache$Task;->mUrl:Ljava/lang/String;

    .line 213
    return-void
.end method

.method static synthetic access$100(Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache$Task;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache$Task;

    .prologue
    .line 203
    iget-object v0, p0, Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache$Task;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method private downloadBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 13
    .param p1, "iconUrl"    # Ljava/lang/String;

    .prologue
    .line 269
    const/4 v3, 0x0

    .line 270
    .local v3, "resultBitmap":Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    .line 272
    .local v1, "connection":Ljava/net/HttpURLConnection;
    move-object v5, p1

    .line 274
    .local v5, "updatedUrl":Ljava/lang/String;
    :try_start_0
    const-string v8, "=w300"

    invoke-virtual {p1, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 275
    iget-object v8, p0, Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache$Task;->this$0:Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache;

    # getter for: Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache;->mIconSizeString:Ljava/lang/String;
    invoke-static {v8}, Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache;->access$500(Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache;)Ljava/lang/String;

    move-result-object v8

    # invokes: Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache;->updateUrlIconSize(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {p1, v8}, Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache;->access$600(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 277
    :cond_0
    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 278
    .local v6, "url":Ljava/net/URL;
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v1, v0

    .line 279
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    .line 281
    .local v4, "statusCode":I
    const/16 v8, 0xc8

    if-ne v4, v8, :cond_2

    .line 282
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .local v2, "inputStream":Ljava/io/InputStream;
    const/4 v9, 0x0

    .line 283
    :try_start_1
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 285
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    iget-object v10, p0, Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache$Task;->this$0:Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache;

    # getter for: Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache;->mIconSize:I
    invoke-static {v10}, Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache;->access$700(Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache;)I

    move-result v10

    if-eq v8, v10, :cond_1

    .line 286
    iget-object v8, p0, Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache$Task;->this$0:Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache;

    # getter for: Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache;->mIconSize:I
    invoke-static {v8}, Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache;->access$700(Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache;)I

    move-result v8

    iget-object v10, p0, Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache$Task;->this$0:Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache;

    # getter for: Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache;->mIconSize:I
    invoke-static {v10}, Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache;->access$700(Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache;)I

    move-result v10

    const/4 v11, 0x0

    invoke-static {v3, v8, v10, v11}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v3

    .line 289
    :cond_1
    if-eqz v2, :cond_2

    if-eqz v9, :cond_4

    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 296
    .end local v2    # "inputStream":Ljava/io/InputStream;
    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    .line 297
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 300
    .end local v4    # "statusCode":I
    .end local v6    # "url":Ljava/net/URL;
    :cond_3
    :goto_1
    return-object v3

    .line 289
    .restart local v2    # "inputStream":Ljava/io/InputStream;
    .restart local v4    # "statusCode":I
    .restart local v6    # "url":Ljava/net/URL;
    :catch_0
    move-exception v7

    .local v7, "x2":Ljava/lang/Throwable;
    :try_start_3
    invoke-virtual {v9, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 291
    .end local v2    # "inputStream":Ljava/io/InputStream;
    .end local v4    # "statusCode":I
    .end local v6    # "url":Ljava/net/URL;
    .end local v7    # "x2":Ljava/lang/Throwable;
    :catch_1
    move-exception v8

    .line 296
    if-eqz v1, :cond_3

    .line 297
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_1

    .line 289
    .restart local v2    # "inputStream":Ljava/io/InputStream;
    .restart local v4    # "statusCode":I
    .restart local v6    # "url":Ljava/net/URL;
    :cond_4
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 296
    .end local v2    # "inputStream":Ljava/io/InputStream;
    .end local v4    # "statusCode":I
    .end local v6    # "url":Ljava/net/URL;
    :catchall_0
    move-exception v8

    if-eqz v1, :cond_5

    .line 297
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_5
    throw v8

    .line 282
    .restart local v2    # "inputStream":Ljava/io/InputStream;
    .restart local v4    # "statusCode":I
    .restart local v6    # "url":Ljava/net/URL;
    :catch_2
    move-exception v8

    :try_start_5
    throw v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 289
    :catchall_1
    move-exception v9

    move-object v12, v9

    move-object v9, v8

    move-object v8, v12

    :goto_2
    if-eqz v2, :cond_6

    if-eqz v9, :cond_7

    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_6
    :goto_3
    :try_start_7
    throw v8

    :catch_3
    move-exception v7

    .restart local v7    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v9, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    .end local v7    # "x2":Ljava/lang/Throwable;
    :cond_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_3

    :catchall_2
    move-exception v8

    goto :goto_2
.end method

.method private loadBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 258
    const/4 v0, 0x0

    .line 260
    .local v0, "result":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache$Task;->this$0:Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache;

    # getter for: Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache;->mStorageCache:Lcom/sonymobile/home/search/suggest/SuggestionCache;
    invoke-static {v1}, Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache;->access$400(Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache;)Lcom/sonymobile/home/search/suggest/SuggestionCache;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 261
    iget-object v1, p0, Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache$Task;->this$0:Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache;

    # getter for: Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache;->mStorageCache:Lcom/sonymobile/home/search/suggest/SuggestionCache;
    invoke-static {v1}, Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache;->access$400(Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache;)Lcom/sonymobile/home/search/suggest/SuggestionCache;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sonymobile/home/search/suggest/SuggestionCache;->loadIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 264
    :cond_0
    return-object v0
.end method

.method private storeIcon(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "icon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 246
    iget-object v0, p0, Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache$Task;->this$0:Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache;

    # getter for: Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache;->mStorageCache:Lcom/sonymobile/home/search/suggest/SuggestionCache;
    invoke-static {v0}, Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache;->access$400(Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache;)Lcom/sonymobile/home/search/suggest/SuggestionCache;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache$Task;->this$0:Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache;

    # getter for: Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache;->mMainThreadHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache;->access$200(Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache$Task$2;

    invoke-direct {v1, p0, p1}, Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache$Task$2;-><init>(Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache$Task;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 254
    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 217
    iget-object v2, p0, Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache$Task;->mPackageName:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache$Task;->loadBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 219
    .local v0, "icon":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 220
    iget-object v2, p0, Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache$Task;->mUrl:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache$Task;->downloadBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 222
    if-eqz v0, :cond_0

    .line 223
    invoke-direct {p0, v0}, Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache$Task;->storeIcon(Landroid/graphics/Bitmap;)V

    .line 227
    :cond_0
    if-eqz v0, :cond_1

    .line 228
    iget-object v2, p0, Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache$Task;->this$0:Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache;

    # getter for: Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache;->mMemoryCache:Landroid/util/LruCache;
    invoke-static {v2}, Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache;->access$000(Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache;)Landroid/util/LruCache;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache$Task;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    :cond_1
    iget-object v2, p0, Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache$Task;->mSetter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache$DownloadListener;

    .line 232
    .local v1, "setter":Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache$DownloadListener;
    if-eqz v1, :cond_2

    .line 233
    iget-object v2, p0, Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache$Task;->this$0:Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache;

    # getter for: Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache;->mMainThreadHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache;->access$200(Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache$Task$1;

    invoke-direct {v3, p0, v1}, Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache$Task$1;-><init>(Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache$Task;Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache$DownloadListener;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 240
    :cond_2
    iget-object v2, p0, Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache$Task;->this$0:Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache;

    # getter for: Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache;->mRunningTasks:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache;->access$300(Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache;)Ljava/util/HashMap;

    move-result-object v3

    monitor-enter v3

    .line 241
    :try_start_0
    iget-object v2, p0, Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache$Task;->this$0:Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache;

    # getter for: Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache;->mRunningTasks:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache;->access$300(Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v4, p0, Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache$Task;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    monitor-exit v3

    .line 243
    return-void

    .line 242
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
