.class Lcom/sonymobile/home/stage/StageDropTarget$2;
.super Lcom/sonymobile/home/stage/StageDropTarget$1ResultBase;
.source "StageDropTarget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/stage/StageDropTarget;->drop(Lcom/sonymobile/home/transfer/Transferable;ILcom/sonymobile/flix/components/Image;Lcom/sonymobile/home/transfer/DropTarget$DropCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/stage/StageDropTarget;

.field final synthetic val$dropCallback:Lcom/sonymobile/home/transfer/DropTarget$DropCallback;

.field final synthetic val$overlappedItem:Lcom/sonymobile/home/data/Item;

.field final synthetic val$resultCallback:Lcom/sonymobile/home/stage/StageDropTarget$1ResultBase;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/stage/StageDropTarget;Lcom/sonymobile/home/transfer/DropTarget$DropCallback;Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/stage/StageDropTarget$1ResultBase;)V
    .locals 0

    .prologue
    .line 306
    iput-object p1, p0, Lcom/sonymobile/home/stage/StageDropTarget$2;->this$0:Lcom/sonymobile/home/stage/StageDropTarget;

    iput-object p2, p0, Lcom/sonymobile/home/stage/StageDropTarget$2;->val$dropCallback:Lcom/sonymobile/home/transfer/DropTarget$DropCallback;

    iput-object p3, p0, Lcom/sonymobile/home/stage/StageDropTarget$2;->val$overlappedItem:Lcom/sonymobile/home/data/Item;

    iput-object p4, p0, Lcom/sonymobile/home/stage/StageDropTarget$2;->val$resultCallback:Lcom/sonymobile/home/stage/StageDropTarget$1ResultBase;

    invoke-direct {p0, p1, p2}, Lcom/sonymobile/home/stage/StageDropTarget$1ResultBase;-><init>(Lcom/sonymobile/home/stage/StageDropTarget;Lcom/sonymobile/home/transfer/DropTarget$DropCallback;)V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/sonymobile/home/data/Item;)V
    .locals 4
    .param p1, "newItem"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 309
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 311
    .local v0, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/home/data/Item;>;"
    iget-object v1, p0, Lcom/sonymobile/home/stage/StageDropTarget$2;->val$overlappedItem:Lcom/sonymobile/home/data/Item;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 312
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 313
    iget-object v1, p0, Lcom/sonymobile/home/stage/StageDropTarget$2;->this$0:Lcom/sonymobile/home/stage/StageDropTarget;

    # getter for: Lcom/sonymobile/home/stage/StageDropTarget;->mItemCreator:Lcom/sonymobile/home/data/ItemCreator;
    invoke-static {v1}, Lcom/sonymobile/home/stage/StageDropTarget;->access$1300(Lcom/sonymobile/home/stage/StageDropTarget;)Lcom/sonymobile/home/data/ItemCreator;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/home/stage/StageDropTarget$2;->val$resultCallback:Lcom/sonymobile/home/stage/StageDropTarget$1ResultBase;

    iget-object v3, p0, Lcom/sonymobile/home/stage/StageDropTarget$2;->this$0:Lcom/sonymobile/home/stage/StageDropTarget;

    # getter for: Lcom/sonymobile/home/stage/StageDropTarget;->mMainThreadHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/sonymobile/home/stage/StageDropTarget;->access$000(Lcom/sonymobile/home/stage/StageDropTarget;)Landroid/os/Handler;

    move-result-object v3

    invoke-interface {v1, v0, v2, v3}, Lcom/sonymobile/home/data/ItemCreator;->createFolder(Ljava/util/List;Lcom/sonymobile/home/data/ItemCreator$ResultListener;Landroid/os/Handler;)Z

    .line 314
    return-void
.end method
