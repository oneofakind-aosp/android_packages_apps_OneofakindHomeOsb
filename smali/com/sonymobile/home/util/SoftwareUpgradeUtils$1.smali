.class final Lcom/sonymobile/home/util/SoftwareUpgradeUtils$1;
.super Ljava/lang/Object;
.source "SoftwareUpgradeUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/util/SoftwareUpgradeUtils;->registerForUpgrades(Landroid/content/Context;Lcom/sonymobile/home/model/Model;Lcom/sonymobile/home/desktop/DesktopModel;Lcom/sonymobile/home/stage/StageModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$desktopModel:Lcom/sonymobile/home/desktop/DesktopModel;

.field final synthetic val$stageModel:Lcom/sonymobile/home/stage/StageModel;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/sonymobile/home/desktop/DesktopModel;Lcom/sonymobile/home/stage/StageModel;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/sonymobile/home/util/SoftwareUpgradeUtils$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/sonymobile/home/util/SoftwareUpgradeUtils$1;->val$desktopModel:Lcom/sonymobile/home/desktop/DesktopModel;

    iput-object p3, p0, Lcom/sonymobile/home/util/SoftwareUpgradeUtils$1;->val$stageModel:Lcom/sonymobile/home/stage/StageModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 131
    iget-object v0, p0, Lcom/sonymobile/home/util/SoftwareUpgradeUtils$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/sonymobile/home/util/SoftwareUpgradeUtils$1;->val$desktopModel:Lcom/sonymobile/home/desktop/DesktopModel;

    iget-object v2, p0, Lcom/sonymobile/home/util/SoftwareUpgradeUtils$1;->val$stageModel:Lcom/sonymobile/home/stage/StageModel;

    # invokes: Lcom/sonymobile/home/util/SoftwareUpgradeUtils;->updateStageIfNeeded(Landroid/content/Context;Lcom/sonymobile/home/desktop/DesktopModel;Lcom/sonymobile/home/stage/StageModel;)V
    invoke-static {v0, v1, v2}, Lcom/sonymobile/home/util/SoftwareUpgradeUtils;->access$000(Landroid/content/Context;Lcom/sonymobile/home/desktop/DesktopModel;Lcom/sonymobile/home/stage/StageModel;)V

    .line 132
    return-void
.end method
