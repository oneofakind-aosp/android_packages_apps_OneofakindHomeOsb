.class Lcom/sonymobile/home/HomeApplication$1;
.super Ljava/lang/Object;
.source "HomeApplication.java"

# interfaces
.implements Lcom/sonymobile/home/desktop/AutomaticDesktopModel$CallbackForStageItems;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/HomeApplication;->createDesktopAndStageModels()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/HomeApplication;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/HomeApplication;)V
    .locals 0

    .prologue
    .line 567
    iput-object p1, p0, Lcom/sonymobile/home/HomeApplication$1;->this$0:Lcom/sonymobile/home/HomeApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;"
        }
    .end annotation

    .prologue
    .line 570
    iget-object v0, p0, Lcom/sonymobile/home/HomeApplication$1;->this$0:Lcom/sonymobile/home/HomeApplication;

    # getter for: Lcom/sonymobile/home/HomeApplication;->mStageDynamicModel:Lcom/sonymobile/home/stage/StageModel;
    invoke-static {v0}, Lcom/sonymobile/home/HomeApplication;->access$000(Lcom/sonymobile/home/HomeApplication;)Lcom/sonymobile/home/stage/StageModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/home/stage/StageModel;->getItems()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
