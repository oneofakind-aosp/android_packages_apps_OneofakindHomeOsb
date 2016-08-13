.class public Lcom/sonymobile/home/presenter/view/WidgetItemViewCreator$FindBlockingContainer;
.super Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper$ViewWrapperContainer;
.source "WidgetItemViewCreator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/home/presenter/view/WidgetItemViewCreator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FindBlockingContainer"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper$ViewWrapperContainer;-><init>(Landroid/content/Context;)V

    .line 100
    return-void
.end method
