.class public Lcom/sonymobile/flix/debug/FlixUsageWarnings$ViewWrapperWarnings;
.super Ljava/lang/Object;
.source "FlixUsageWarnings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/flix/debug/FlixUsageWarnings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewWrapperWarnings"
.end annotation


# static fields
.field private static sDisableAll:Z

.field private static sDisableViewWrappersRootNotSetup:Z


# direct methods
.method public static viewWrappersRootNotSetUp(Lcom/sonymobile/flix/components/Component;)V
    .locals 2
    .param p0, "component"    # Lcom/sonymobile/flix/components/Component;

    .prologue
    .line 518
    sget-boolean v0, Lcom/sonymobile/flix/debug/FlixUsageWarnings$ViewWrapperWarnings;->sDisableViewWrappersRootNotSetup:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/sonymobile/flix/debug/FlixUsageWarnings$ViewWrapperWarnings;->sDisableAll:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/sonymobile/flix/debug/FlixUsageWarnings;->sEnabled:Z

    if-nez v0, :cond_1

    .line 531
    :cond_0
    :goto_0
    return-void

    .line 520
    :cond_1
    sget-boolean v0, Lcom/sonymobile/flix/debug/FlixUsageWarnings;->sNotifyOnlyOnce:Z

    if-eqz v0, :cond_2

    .line 521
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sonymobile/flix/debug/FlixUsageWarnings$ViewWrapperWarnings;->sDisableViewWrappersRootNotSetup:Z

    .line 523
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "A ViewWrapper was added to scene, but the ViewWrapperRoot has\nnot been set up. This means that the View within the ViewWrapper\nwill not get any updates or invalidates (because it\'s not\nconnected to the Android view hierarchy).\nFor static views, whose content does not change, this normally\ndoesn\'t matter. But if your view needs to get updates, call\nSceneView.setupViewWrappers() before creating any wrappers.\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/sonymobile/flix/debug/FlixUsageWarnings;->getAncestryTree(Lcom/sonymobile/flix/components/Component;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/sonymobile/flix/debug/FlixUsageWarnings;->usageWarn(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
