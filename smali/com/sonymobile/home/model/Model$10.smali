.class final Lcom/sonymobile/home/model/Model$10;
.super Ljava/lang/Object;
.source "Model.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/model/Model;->waitForModelsToBeLoaded(Ljava/util/List;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$nbrOfModelsToWaitFor:Landroid/util/MutableInt;

.field final synthetic val$onModelsLoadedCallback:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Landroid/util/MutableInt;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 1540
    iput-object p1, p0, Lcom/sonymobile/home/model/Model$10;->val$nbrOfModelsToWaitFor:Landroid/util/MutableInt;

    iput-object p2, p0, Lcom/sonymobile/home/model/Model$10;->val$onModelsLoadedCallback:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1543
    iget-object v0, p0, Lcom/sonymobile/home/model/Model$10;->val$nbrOfModelsToWaitFor:Landroid/util/MutableInt;

    iget v1, v0, Landroid/util/MutableInt;->value:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Landroid/util/MutableInt;->value:I

    .line 1544
    iget-object v0, p0, Lcom/sonymobile/home/model/Model$10;->val$nbrOfModelsToWaitFor:Landroid/util/MutableInt;

    iget v0, v0, Landroid/util/MutableInt;->value:I

    if-nez v0, :cond_0

    .line 1545
    iget-object v0, p0, Lcom/sonymobile/home/model/Model$10;->val$onModelsLoadedCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1547
    :cond_0
    return-void
.end method
