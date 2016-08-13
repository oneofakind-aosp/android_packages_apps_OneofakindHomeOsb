.class public Lcom/sonymobile/home/ActivityResultHandler;
.super Ljava/lang/Object;
.source "ActivityResultHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/home/ActivityResultHandler$ActivityResultListener;
    }
.end annotation


# instance fields
.field private final mDynamicStartRequestCode:I

.field private final mListeners:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/sonymobile/home/ActivityResultHandler$ActivityResultListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/home/ActivityResultHandler;->mListeners:Landroid/util/SparseArray;

    .line 39
    const/16 v0, 0x64

    iput v0, p0, Lcom/sonymobile/home/ActivityResultHandler;->mDynamicStartRequestCode:I

    .line 40
    return-void
.end method


# virtual methods
.method public addListener(ILcom/sonymobile/home/ActivityResultHandler$ActivityResultListener;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "listener"    # Lcom/sonymobile/home/ActivityResultHandler$ActivityResultListener;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sonymobile/home/ActivityResultHandler;->mListeners:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 51
    return-void
.end method

.method handleActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 70
    iget-object v1, p0, Lcom/sonymobile/home/ActivityResultHandler;->mListeners:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/home/ActivityResultHandler$ActivityResultListener;

    .line 72
    .local v0, "listener":Lcom/sonymobile/home/ActivityResultHandler$ActivityResultListener;
    if-eqz v0, :cond_0

    .line 73
    invoke-interface {v0, p1, p2, p3}, Lcom/sonymobile/home/ActivityResultHandler$ActivityResultListener;->onActivityResult(IILandroid/content/Intent;)V

    .line 76
    iget v1, p0, Lcom/sonymobile/home/ActivityResultHandler;->mDynamicStartRequestCode:I

    if-lt p1, v1, :cond_0

    .line 77
    iget-object v1, p0, Lcom/sonymobile/home/ActivityResultHandler;->mListeners:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 80
    :cond_0
    return-void
.end method

.method public removeAllListeners()V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sonymobile/home/ActivityResultHandler;->mListeners:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 67
    return-void
.end method
