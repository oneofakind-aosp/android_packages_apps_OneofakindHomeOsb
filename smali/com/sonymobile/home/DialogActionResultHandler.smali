.class public Lcom/sonymobile/home/DialogActionResultHandler;
.super Ljava/lang/Object;
.source "DialogActionResultHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/home/DialogActionResultHandler$DialogActionListener;
    }
.end annotation


# instance fields
.field private final mListeners:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/sonymobile/home/DialogActionResultHandler$DialogActionListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/home/DialogActionResultHandler;->mListeners:Landroid/util/SparseArray;

    .line 21
    return-void
.end method


# virtual methods
.method public addListener(ILcom/sonymobile/home/DialogActionResultHandler$DialogActionListener;)V
    .locals 1
    .param p1, "actionCode"    # I
    .param p2, "listener"    # Lcom/sonymobile/home/DialogActionResultHandler$DialogActionListener;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/sonymobile/home/DialogActionResultHandler;->mListeners:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 33
    return-void
.end method

.method handleDialogAction(ILandroid/os/Bundle;)V
    .locals 2
    .param p1, "actionCode"    # I
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 52
    iget-object v1, p0, Lcom/sonymobile/home/DialogActionResultHandler;->mListeners:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/home/DialogActionResultHandler$DialogActionListener;

    .line 54
    .local v0, "listener":Lcom/sonymobile/home/DialogActionResultHandler$DialogActionListener;
    if-eqz v0, :cond_0

    .line 55
    invoke-interface {v0, p1, p2}, Lcom/sonymobile/home/DialogActionResultHandler$DialogActionListener;->onDialogActionPerformed(ILandroid/os/Bundle;)V

    .line 57
    :cond_0
    return-void
.end method

.method public removeAllListeners()V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/sonymobile/home/DialogActionResultHandler;->mListeners:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 49
    return-void
.end method

.method public removeListener(I)V
    .locals 1
    .param p1, "actionCode"    # I

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sonymobile/home/DialogActionResultHandler;->mListeners:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 42
    return-void
.end method
