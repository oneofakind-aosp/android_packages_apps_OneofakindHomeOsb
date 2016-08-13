.class public Lcom/sonymobile/flix/debug/FlixUsageWarnings$LayouterWarnings;
.super Ljava/lang/Object;
.source "FlixUsageWarnings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/flix/debug/FlixUsageWarnings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayouterWarnings"
.end annotation


# static fields
.field private static sDisableAll:Z

.field private static sDisablePlaceBeforeAddingToParent:Z


# direct methods
.method public static placeBeforeAddingToParent(Lcom/sonymobile/flix/components/Component;)V
    .locals 2
    .param p0, "component"    # Lcom/sonymobile/flix/components/Component;

    .prologue
    .line 484
    sget-boolean v0, Lcom/sonymobile/flix/debug/FlixUsageWarnings$LayouterWarnings;->sDisablePlaceBeforeAddingToParent:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/sonymobile/flix/debug/FlixUsageWarnings$LayouterWarnings;->sDisableAll:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/sonymobile/flix/debug/FlixUsageWarnings;->sEnabled:Z

    if-nez v0, :cond_1

    .line 497
    :cond_0
    :goto_0
    return-void

    .line 486
    :cond_1
    sget-boolean v0, Lcom/sonymobile/flix/debug/FlixUsageWarnings;->sNotifyOnlyOnce:Z

    if-eqz v0, :cond_2

    .line 487
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sonymobile/flix/debug/FlixUsageWarnings$LayouterWarnings;->sDisablePlaceBeforeAddingToParent:Z

    .line 489
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Layout was performed on a component before adding it to another\ncomponent. This may lead to confusion. When later adding the\ncomponent to another, it will be moved based on its new parent\'s\nposition. (If the component is placed against a future sibling,\nit shouldn\'t be any problem though.)\nAny unexpected placement of components may be an effect of this.\nIf so, simply add the component to its designated parent before\nplacing it.\n"

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
