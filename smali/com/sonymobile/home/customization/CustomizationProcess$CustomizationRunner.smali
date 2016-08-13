.class public Lcom/sonymobile/home/customization/CustomizationProcess$CustomizationRunner;
.super Ljava/lang/Object;
.source "CustomizationProcess.java"

# interfaces
.implements Lcom/sonymobile/home/model/PackageHandler$OnPackagesLoadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/home/customization/CustomizationProcess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CustomizationRunner"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mCustomizations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/home/customization/Customization;",
            ">;"
        }
    .end annotation
.end field

.field private final mCustomizationsCompletedMask:I

.field final synthetic this$0:Lcom/sonymobile/home/customization/CustomizationProcess;


# direct methods
.method public constructor <init>(Lcom/sonymobile/home/customization/CustomizationProcess;Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/home/customization/Customization;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 510
    .local p3, "customizations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/home/customization/Customization;>;"
    iput-object p1, p0, Lcom/sonymobile/home/customization/CustomizationProcess$CustomizationRunner;->this$0:Lcom/sonymobile/home/customization/CustomizationProcess;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 511
    iput-object p2, p0, Lcom/sonymobile/home/customization/CustomizationProcess$CustomizationRunner;->mContext:Landroid/content/Context;

    .line 512
    iput-object p3, p0, Lcom/sonymobile/home/customization/CustomizationProcess$CustomizationRunner;->mCustomizations:Ljava/util/ArrayList;

    .line 513
    # invokes: Lcom/sonymobile/home/customization/CustomizationProcess;->getCustomizationsCompleted(Landroid/content/Context;)I
    invoke-static {p1, p2}, Lcom/sonymobile/home/customization/CustomizationProcess;->access$100(Lcom/sonymobile/home/customization/CustomizationProcess;Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/home/customization/CustomizationProcess$CustomizationRunner;->mCustomizationsCompletedMask:I

    .line 514
    return-void
.end method

.method private updateHomeConfigurationState()V
    .locals 4

    .prologue
    .line 561
    iget-object v3, p0, Lcom/sonymobile/home/customization/CustomizationProcess$CustomizationRunner;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sonymobile/home/HomeApplication;->getResourceManager(Landroid/content/Context;)Lcom/sonymobile/home/resources/ResourceManager;

    move-result-object v2

    .line 562
    .local v2, "rm":Lcom/sonymobile/home/resources/ResourceManager;
    invoke-virtual {v2}, Lcom/sonymobile/home/resources/ResourceManager;->getLoadedConfiguration()Ljava/lang/String;

    move-result-object v1

    .line 563
    .local v1, "grid":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 564
    new-instance v0, Lcom/sonymobile/home/ConfigPreferenceManager;

    iget-object v3, p0, Lcom/sonymobile/home/customization/CustomizationProcess$CustomizationRunner;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/sonymobile/home/ConfigPreferenceManager;-><init>(Landroid/content/Context;)V

    .line 566
    .local v0, "configManager":Lcom/sonymobile/home/ConfigPreferenceManager;
    invoke-virtual {v0, v1}, Lcom/sonymobile/home/ConfigPreferenceManager;->setWantedGrid(Ljava/lang/String;)V

    .line 567
    invoke-virtual {v0, v1}, Lcom/sonymobile/home/ConfigPreferenceManager;->setCurrentGrid(Ljava/lang/String;)V

    .line 569
    .end local v0    # "configManager":Lcom/sonymobile/home/ConfigPreferenceManager;
    :cond_0
    sget-object v3, Lcom/sonymobile/home/HomeConfigStateHandler$ConfigState;->UNCHANGED:Lcom/sonymobile/home/HomeConfigStateHandler$ConfigState;

    invoke-static {v3}, Lcom/sonymobile/home/HomeConfigStateHandler;->setState(Lcom/sonymobile/home/HomeConfigStateHandler$ConfigState;)V

    .line 570
    return-void
.end method


# virtual methods
.method public onPackagesLoaded()V
    .locals 8

    .prologue
    .line 518
    const/4 v3, 0x1

    .line 525
    .local v3, "success":Z
    :try_start_0
    iget-object v5, p0, Lcom/sonymobile/home/customization/CustomizationProcess$CustomizationRunner;->mCustomizations:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/home/customization/Customization;

    .line 526
    .local v0, "customization":Lcom/sonymobile/home/customization/Customization;
    iget v5, p0, Lcom/sonymobile/home/customization/CustomizationProcess$CustomizationRunner;->mCustomizationsCompletedMask:I

    invoke-interface {v0, v5}, Lcom/sonymobile/home/customization/Customization;->preCustomization(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 550
    .end local v0    # "customization":Lcom/sonymobile/home/customization/Customization;
    .end local v2    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v4

    .line 551
    .local v4, "t":Ljava/lang/Throwable;
    const/4 v3, 0x0

    .line 552
    :try_start_1
    const-string v5, "CustomizationProcess"

    const-string v6, "Couldn\'t execute customization"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 556
    iget-object v5, p0, Lcom/sonymobile/home/customization/CustomizationProcess$CustomizationRunner;->this$0:Lcom/sonymobile/home/customization/CustomizationProcess;

    # invokes: Lcom/sonymobile/home/customization/CustomizationProcess;->notifyListenersComplete(ZZ)V
    invoke-static {v5, v3, v3}, Lcom/sonymobile/home/customization/CustomizationProcess;->access$700(Lcom/sonymobile/home/customization/CustomizationProcess;ZZ)V

    .line 558
    .end local v4    # "t":Ljava/lang/Throwable;
    :goto_1
    return-void

    .line 529
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_2
    iget-object v5, p0, Lcom/sonymobile/home/customization/CustomizationProcess$CustomizationRunner;->mCustomizations:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/home/customization/Customization;

    .line 530
    .restart local v0    # "customization":Lcom/sonymobile/home/customization/Customization;
    invoke-interface {v0}, Lcom/sonymobile/home/customization/Customization;->clearData()V

    .line 532
    invoke-interface {v0}, Lcom/sonymobile/home/customization/Customization;->applyCustomization()Z

    move-result v1

    .line 533
    .local v1, "customizationOk":Z
    if-nez v1, :cond_1

    .line 534
    const-string v5, "CustomizationProcess"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Couldn\'t customize "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v0}, Lcom/sonymobile/home/customization/Customization;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    :cond_1
    invoke-interface {v0}, Lcom/sonymobile/home/customization/Customization;->storeData()V

    .line 539
    iget-object v5, p0, Lcom/sonymobile/home/customization/CustomizationProcess$CustomizationRunner;->this$0:Lcom/sonymobile/home/customization/CustomizationProcess;

    iget-object v6, p0, Lcom/sonymobile/home/customization/CustomizationProcess$CustomizationRunner;->mContext:Landroid/content/Context;

    const/4 v7, 0x1

    # invokes: Lcom/sonymobile/home/customization/CustomizationProcess;->setCustomizationComplete(Landroid/content/Context;ZLcom/sonymobile/home/customization/Customization;)V
    invoke-static {v5, v6, v7, v0}, Lcom/sonymobile/home/customization/CustomizationProcess;->access$600(Lcom/sonymobile/home/customization/CustomizationProcess;Landroid/content/Context;ZLcom/sonymobile/home/customization/Customization;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 556
    .end local v0    # "customization":Lcom/sonymobile/home/customization/Customization;
    .end local v1    # "customizationOk":Z
    .end local v2    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v5

    iget-object v6, p0, Lcom/sonymobile/home/customization/CustomizationProcess$CustomizationRunner;->this$0:Lcom/sonymobile/home/customization/CustomizationProcess;

    # invokes: Lcom/sonymobile/home/customization/CustomizationProcess;->notifyListenersComplete(ZZ)V
    invoke-static {v6, v3, v3}, Lcom/sonymobile/home/customization/CustomizationProcess;->access$700(Lcom/sonymobile/home/customization/CustomizationProcess;ZZ)V

    throw v5

    .line 542
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_2
    :try_start_3
    iget-object v5, p0, Lcom/sonymobile/home/customization/CustomizationProcess$CustomizationRunner;->mCustomizations:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/home/customization/Customization;

    .line 543
    .restart local v0    # "customization":Lcom/sonymobile/home/customization/Customization;
    invoke-interface {v0}, Lcom/sonymobile/home/customization/Customization;->postCustomization()V

    goto :goto_3

    .line 546
    .end local v0    # "customization":Lcom/sonymobile/home/customization/Customization;
    :cond_3
    invoke-static {}, Lcom/sonymobile/home/HomeConfigStateHandler;->getState()Lcom/sonymobile/home/HomeConfigStateHandler$ConfigState;

    move-result-object v5

    sget-object v6, Lcom/sonymobile/home/HomeConfigStateHandler$ConfigState;->UNCHANGED:Lcom/sonymobile/home/HomeConfigStateHandler$ConfigState;

    if-eq v5, v6, :cond_4

    .line 547
    invoke-direct {p0}, Lcom/sonymobile/home/customization/CustomizationProcess$CustomizationRunner;->updateHomeConfigurationState()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 556
    :cond_4
    iget-object v5, p0, Lcom/sonymobile/home/customization/CustomizationProcess$CustomizationRunner;->this$0:Lcom/sonymobile/home/customization/CustomizationProcess;

    # invokes: Lcom/sonymobile/home/customization/CustomizationProcess;->notifyListenersComplete(ZZ)V
    invoke-static {v5, v3, v3}, Lcom/sonymobile/home/customization/CustomizationProcess;->access$700(Lcom/sonymobile/home/customization/CustomizationProcess;ZZ)V

    goto :goto_1
.end method
