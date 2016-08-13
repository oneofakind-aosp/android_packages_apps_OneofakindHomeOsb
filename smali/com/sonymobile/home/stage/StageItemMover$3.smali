.class final enum Lcom/sonymobile/home/stage/StageItemMover$3;
.super Lcom/sonymobile/home/stage/StageItemMover;
.source "StageItemMover.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/home/stage/StageItemMover;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sonymobile/home/stage/StageItemMover;-><init>(Ljava/lang/String;ILcom/sonymobile/home/stage/StageItemMover$1;)V

    return-void
.end method


# virtual methods
.method public performMove(Lcom/sonymobile/home/data/ItemLocation;Lcom/sonymobile/home/stage/StageModel;)Z
    .locals 1
    .param p1, "location"    # Lcom/sonymobile/home/data/ItemLocation;
    .param p2, "stageModel"    # Lcom/sonymobile/home/stage/StageModel;

    .prologue
    .line 45
    # invokes: Lcom/sonymobile/home/stage/StageItemMover;->incrementPosition(Lcom/sonymobile/home/data/ItemLocation;Lcom/sonymobile/home/stage/StageModel;)Z
    invoke-static {p1, p2}, Lcom/sonymobile/home/stage/StageItemMover;->access$200(Lcom/sonymobile/home/data/ItemLocation;Lcom/sonymobile/home/stage/StageModel;)Z

    move-result v0

    return v0
.end method
