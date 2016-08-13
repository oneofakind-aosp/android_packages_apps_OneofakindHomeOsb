.class Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache$Task$1;
.super Ljava/lang/Object;
.source "SelfUpdatingIconBitmapCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache$Task;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache$Task;

.field final synthetic val$setter:Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache$DownloadListener;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache$Task;Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache$DownloadListener;)V
    .locals 0

    .prologue
    .line 233
    iput-object p1, p0, Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache$Task$1;->this$1:Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache$Task;

    iput-object p2, p0, Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache$Task$1;->val$setter:Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache$DownloadListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 236
    iget-object v0, p0, Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache$Task$1;->val$setter:Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache$DownloadListener;

    iget-object v1, p0, Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache$Task$1;->this$1:Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache$Task;

    # getter for: Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache$Task;->mPackageName:Ljava/lang/String;
    invoke-static {v1}, Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache$Task;->access$100(Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache$Task;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache$DownloadListener;->onIconDownloaded(Ljava/lang/String;)V

    .line 237
    return-void
.end method
