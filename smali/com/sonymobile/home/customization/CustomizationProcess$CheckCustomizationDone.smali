.class public Lcom/sonymobile/home/customization/CustomizationProcess$CheckCustomizationDone;
.super Ljava/lang/Object;
.source "CustomizationProcess.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/home/customization/CustomizationProcess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CheckCustomizationDone"
.end annotation


# instance fields
.field private final mCheckCustomizations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/home/customization/Customization;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;

.field final synthetic this$0:Lcom/sonymobile/home/customization/CustomizationProcess;


# direct methods
.method public constructor <init>(Lcom/sonymobile/home/customization/CustomizationProcess;Landroid/content/Context;Lcom/sonymobile/home/model/PackageHandler;Ljava/util/List;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "packageHandler"    # Lcom/sonymobile/home/model/PackageHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/sonymobile/home/model/PackageHandler;",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/customization/Customization;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 417
    .local p4, "custs":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/customization/Customization;>;"
    iput-object p1, p0, Lcom/sonymobile/home/customization/CustomizationProcess$CheckCustomizationDone;->this$0:Lcom/sonymobile/home/customization/CustomizationProcess;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 408
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/home/customization/CustomizationProcess$CheckCustomizationDone;->mCheckCustomizations:Ljava/util/ArrayList;

    .line 423
    iput-object p2, p0, Lcom/sonymobile/home/customization/CustomizationProcess$CheckCustomizationDone;->mContext:Landroid/content/Context;

    .line 424
    iput-object p3, p0, Lcom/sonymobile/home/customization/CustomizationProcess$CheckCustomizationDone;->mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;

    .line 425
    iget-object v0, p0, Lcom/sonymobile/home/customization/CustomizationProcess$CheckCustomizationDone;->mCheckCustomizations:Ljava/util/ArrayList;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 426
    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 430
    iget-object v9, p0, Lcom/sonymobile/home/customization/CustomizationProcess$CheckCustomizationDone;->this$0:Lcom/sonymobile/home/customization/CustomizationProcess;

    iget-object v10, p0, Lcom/sonymobile/home/customization/CustomizationProcess$CheckCustomizationDone;->mContext:Landroid/content/Context;

    # invokes: Lcom/sonymobile/home/customization/CustomizationProcess;->getCustomizationsCompleted(Landroid/content/Context;)I
    invoke-static {v9, v10}, Lcom/sonymobile/home/customization/CustomizationProcess;->access$100(Lcom/sonymobile/home/customization/CustomizationProcess;Landroid/content/Context;)I

    move-result v1

    .line 432
    .local v1, "custsExecuted":I
    invoke-static {}, Lcom/sonymobile/home/HomeConfigStateHandler;->hasConfigChanged()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 433
    iget-object v9, p0, Lcom/sonymobile/home/customization/CustomizationProcess$CheckCustomizationDone;->this$0:Lcom/sonymobile/home/customization/CustomizationProcess;

    # getter for: Lcom/sonymobile/home/customization/CustomizationProcess;->mCustomizations:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/sonymobile/home/customization/CustomizationProcess;->access$200(Lcom/sonymobile/home/customization/CustomizationProcess;)Ljava/util/ArrayList;

    move-result-object v9

    iget-object v10, p0, Lcom/sonymobile/home/customization/CustomizationProcess$CheckCustomizationDone;->mCheckCustomizations:Ljava/util/ArrayList;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 477
    :cond_0
    :goto_0
    iget-object v9, p0, Lcom/sonymobile/home/customization/CustomizationProcess$CheckCustomizationDone;->this$0:Lcom/sonymobile/home/customization/CustomizationProcess;

    # getter for: Lcom/sonymobile/home/customization/CustomizationProcess;->mCustomizations:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/sonymobile/home/customization/CustomizationProcess;->access$200(Lcom/sonymobile/home/customization/CustomizationProcess;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 479
    iget-object v9, p0, Lcom/sonymobile/home/customization/CustomizationProcess$CheckCustomizationDone;->this$0:Lcom/sonymobile/home/customization/CustomizationProcess;

    # invokes: Lcom/sonymobile/home/customization/CustomizationProcess;->notifyListenersComplete(ZZ)V
    invoke-static {v9, v11, v12}, Lcom/sonymobile/home/customization/CustomizationProcess;->access$700(Lcom/sonymobile/home/customization/CustomizationProcess;ZZ)V

    .line 491
    :goto_1
    return-void

    .line 435
    :cond_1
    if-nez v1, :cond_2

    .line 437
    iget-object v9, p0, Lcom/sonymobile/home/customization/CustomizationProcess$CheckCustomizationDone;->this$0:Lcom/sonymobile/home/customization/CustomizationProcess;

    # getter for: Lcom/sonymobile/home/customization/CustomizationProcess;->mCustomizations:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/sonymobile/home/customization/CustomizationProcess;->access$200(Lcom/sonymobile/home/customization/CustomizationProcess;)Ljava/util/ArrayList;

    move-result-object v9

    iget-object v10, p0, Lcom/sonymobile/home/customization/CustomizationProcess$CheckCustomizationDone;->mCheckCustomizations:Ljava/util/ArrayList;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 438
    iget-object v9, p0, Lcom/sonymobile/home/customization/CustomizationProcess$CheckCustomizationDone;->this$0:Lcom/sonymobile/home/customization/CustomizationProcess;

    iget-object v10, p0, Lcom/sonymobile/home/customization/CustomizationProcess$CheckCustomizationDone;->mContext:Landroid/content/Context;

    # invokes: Lcom/sonymobile/home/customization/CustomizationProcess;->setStageAddedDuringUpgrade(Landroid/content/Context;Z)V
    invoke-static {v9, v10, v12}, Lcom/sonymobile/home/customization/CustomizationProcess;->access$300(Lcom/sonymobile/home/customization/CustomizationProcess;Landroid/content/Context;Z)V

    goto :goto_0

    .line 444
    :cond_2
    iget-object v9, p0, Lcom/sonymobile/home/customization/CustomizationProcess$CheckCustomizationDone;->this$0:Lcom/sonymobile/home/customization/CustomizationProcess;

    iget-object v10, p0, Lcom/sonymobile/home/customization/CustomizationProcess$CheckCustomizationDone;->mContext:Landroid/content/Context;

    # invokes: Lcom/sonymobile/home/customization/CustomizationProcess;->initStageAddedDuringUpgrade(Landroid/content/Context;)V
    invoke-static {v9, v10}, Lcom/sonymobile/home/customization/CustomizationProcess;->access$400(Lcom/sonymobile/home/customization/CustomizationProcess;Landroid/content/Context;)V

    .line 446
    const/4 v6, 0x0

    .line 447
    .local v6, "stageCustomization":Lcom/sonymobile/home/customization/Customization;
    const/4 v2, 0x0

    .line 448
    .local v2, "desktopWithAppTrayCustomizationCompleted":Z
    const/4 v7, 0x0

    .line 449
    .local v7, "stageFixedCustomizationCompleted":Z
    iget-object v9, p0, Lcom/sonymobile/home/customization/CustomizationProcess$CheckCustomizationDone;->mCheckCustomizations:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/home/customization/Customization;

    .line 450
    .local v0, "cust":Lcom/sonymobile/home/customization/Customization;
    iget-object v9, p0, Lcom/sonymobile/home/customization/CustomizationProcess$CheckCustomizationDone;->this$0:Lcom/sonymobile/home/customization/CustomizationProcess;

    iget-object v10, p0, Lcom/sonymobile/home/customization/CustomizationProcess$CheckCustomizationDone;->mContext:Landroid/content/Context;

    # invokes: Lcom/sonymobile/home/customization/CustomizationProcess;->isCustomizationCompleted(Landroid/content/Context;Lcom/sonymobile/home/customization/Customization;)Z
    invoke-static {v9, v10, v0}, Lcom/sonymobile/home/customization/CustomizationProcess;->access$500(Lcom/sonymobile/home/customization/CustomizationProcess;Landroid/content/Context;Lcom/sonymobile/home/customization/Customization;)Z

    move-result v4

    .line 452
    .local v4, "isCustDone":Z
    instance-of v9, v0, Lcom/sonymobile/home/desktop/ManualDesktopCustomization;

    if-eqz v9, :cond_5

    .line 453
    move v2, v4

    .line 458
    :cond_4
    :goto_3
    if-nez v4, :cond_3

    .line 459
    iget-object v9, p0, Lcom/sonymobile/home/customization/CustomizationProcess$CheckCustomizationDone;->this$0:Lcom/sonymobile/home/customization/CustomizationProcess;

    # getter for: Lcom/sonymobile/home/customization/CustomizationProcess;->mCustomizations:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/sonymobile/home/customization/CustomizationProcess;->access$200(Lcom/sonymobile/home/customization/CustomizationProcess;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 454
    :cond_5
    instance-of v9, v0, Lcom/sonymobile/home/stage/StageFixedCustomization;

    if-eqz v9, :cond_4

    .line 455
    move v7, v4

    .line 456
    move-object v6, v0

    goto :goto_3

    .line 462
    .end local v0    # "cust":Lcom/sonymobile/home/customization/Customization;
    .end local v4    # "isCustDone":Z
    :cond_6
    if-eqz v2, :cond_0

    if-nez v7, :cond_0

    .line 464
    iget-object v9, p0, Lcom/sonymobile/home/customization/CustomizationProcess$CheckCustomizationDone;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a0024

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    .line 465
    .local v8, "tryToMoveItemsFromDesktopToStage":Z
    if-eqz v8, :cond_7

    if-eqz v6, :cond_7

    .line 467
    iget-object v9, p0, Lcom/sonymobile/home/customization/CustomizationProcess$CheckCustomizationDone;->this$0:Lcom/sonymobile/home/customization/CustomizationProcess;

    # getter for: Lcom/sonymobile/home/customization/CustomizationProcess;->mCustomizations:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/sonymobile/home/customization/CustomizationProcess;->access$200(Lcom/sonymobile/home/customization/CustomizationProcess;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 469
    iget-object v9, p0, Lcom/sonymobile/home/customization/CustomizationProcess$CheckCustomizationDone;->this$0:Lcom/sonymobile/home/customization/CustomizationProcess;

    iget-object v10, p0, Lcom/sonymobile/home/customization/CustomizationProcess$CheckCustomizationDone;->mContext:Landroid/content/Context;

    # invokes: Lcom/sonymobile/home/customization/CustomizationProcess;->setCustomizationComplete(Landroid/content/Context;ZLcom/sonymobile/home/customization/Customization;)V
    invoke-static {v9, v10, v11, v6}, Lcom/sonymobile/home/customization/CustomizationProcess;->access$600(Lcom/sonymobile/home/customization/CustomizationProcess;Landroid/content/Context;ZLcom/sonymobile/home/customization/Customization;)V

    .line 471
    :cond_7
    iget-object v9, p0, Lcom/sonymobile/home/customization/CustomizationProcess$CheckCustomizationDone;->this$0:Lcom/sonymobile/home/customization/CustomizationProcess;

    iget-object v10, p0, Lcom/sonymobile/home/customization/CustomizationProcess$CheckCustomizationDone;->mContext:Landroid/content/Context;

    # invokes: Lcom/sonymobile/home/customization/CustomizationProcess;->setStageAddedDuringUpgrade(Landroid/content/Context;Z)V
    invoke-static {v9, v10, v11}, Lcom/sonymobile/home/customization/CustomizationProcess;->access$300(Lcom/sonymobile/home/customization/CustomizationProcess;Landroid/content/Context;Z)V

    goto/16 :goto_0

    .line 481
    .end local v2    # "desktopWithAppTrayCustomizationCompleted":Z
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v6    # "stageCustomization":Lcom/sonymobile/home/customization/Customization;
    .end local v7    # "stageFixedCustomizationCompleted":Z
    .end local v8    # "tryToMoveItemsFromDesktopToStage":Z
    :cond_8
    new-instance v5, Lcom/sonymobile/home/customization/CustomizationProcess$CustomizationRunner;

    iget-object v9, p0, Lcom/sonymobile/home/customization/CustomizationProcess$CheckCustomizationDone;->this$0:Lcom/sonymobile/home/customization/CustomizationProcess;

    iget-object v10, p0, Lcom/sonymobile/home/customization/CustomizationProcess$CheckCustomizationDone;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/sonymobile/home/customization/CustomizationProcess$CheckCustomizationDone;->this$0:Lcom/sonymobile/home/customization/CustomizationProcess;

    # getter for: Lcom/sonymobile/home/customization/CustomizationProcess;->mCustomizations:Ljava/util/ArrayList;
    invoke-static {v11}, Lcom/sonymobile/home/customization/CustomizationProcess;->access$200(Lcom/sonymobile/home/customization/CustomizationProcess;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-direct {v5, v9, v10, v11}, Lcom/sonymobile/home/customization/CustomizationProcess$CustomizationRunner;-><init>(Lcom/sonymobile/home/customization/CustomizationProcess;Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 485
    .local v5, "runner":Lcom/sonymobile/home/customization/CustomizationProcess$CustomizationRunner;
    iget-object v9, p0, Lcom/sonymobile/home/customization/CustomizationProcess$CheckCustomizationDone;->this$0:Lcom/sonymobile/home/customization/CustomizationProcess;

    # invokes: Lcom/sonymobile/home/customization/CustomizationProcess;->notifyListenersStarting()V
    invoke-static {v9}, Lcom/sonymobile/home/customization/CustomizationProcess;->access$800(Lcom/sonymobile/home/customization/CustomizationProcess;)V

    .line 488
    iget-object v9, p0, Lcom/sonymobile/home/customization/CustomizationProcess$CheckCustomizationDone;->mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;

    invoke-virtual {v9}, Lcom/sonymobile/home/model/PackageHandler;->load()V

    .line 489
    iget-object v9, p0, Lcom/sonymobile/home/customization/CustomizationProcess$CheckCustomizationDone;->mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;

    iget-object v10, p0, Lcom/sonymobile/home/customization/CustomizationProcess$CheckCustomizationDone;->this$0:Lcom/sonymobile/home/customization/CustomizationProcess;

    # getter for: Lcom/sonymobile/home/customization/CustomizationProcess;->mBackgroundHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/sonymobile/home/customization/CustomizationProcess;->access$900(Lcom/sonymobile/home/customization/CustomizationProcess;)Landroid/os/Handler;

    move-result-object v10

    invoke-virtual {v9, v5, v10}, Lcom/sonymobile/home/model/PackageHandler;->addOnPackagesLoadedListener(Lcom/sonymobile/home/model/PackageHandler$OnPackagesLoadedListener;Landroid/os/Handler;)V

    goto/16 :goto_1
.end method
