.class Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache$Task$2;
.super Ljava/lang/Object;
.source "SelfUpdatingIconBitmapCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache$Task;->storeIcon(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache$Task;

.field final synthetic val$icon:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache$Task;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 247
    iput-object p1, p0, Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache$Task$2;->this$1:Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache$Task;

    iput-object p2, p0, Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache$Task$2;->val$icon:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 250
    iget-object v0, p0, Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache$Task$2;->this$1:Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache$Task;

    iget-object v0, v0, Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache$Task;->this$0:Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache;

    # getter for: Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache;->mStorageCache:Lcom/sonymobile/home/search/suggest/SuggestionCache;
    invoke-static {v0}, Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache;->access$400(Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache;)Lcom/sonymobile/home/search/suggest/SuggestionCache;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache$Task$2;->this$1:Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache$Task;

    # getter for: Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache$Task;->mPackageName:Ljava/lang/String;
    invoke-static {v1}, Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache$Task;->access$100(Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache$Task;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache$Task$2;->val$icon:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/home/search/suggest/SuggestionCache;->writeIcon(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 251
    return-void
.end method
