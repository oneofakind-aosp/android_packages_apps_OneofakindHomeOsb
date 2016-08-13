.class public Lcom/sonymobile/home/presenter/view/InternalFunctionView;
.super Lcom/sonymobile/home/presenter/view/IconLabelView;
.source "InternalFunctionView.java"


# direct methods
.method public constructor <init>(Lcom/sonymobile/flix/components/Scene;Lcom/sonymobile/home/data/InternalFunctionItem;ZLcom/sonymobile/home/ui/pageview/PageItemViewListener;)V
    .locals 0
    .param p1, "scene"    # Lcom/sonymobile/flix/components/Scene;
    .param p2, "item"    # Lcom/sonymobile/home/data/InternalFunctionItem;
    .param p3, "includeLabel"    # Z
    .param p4, "pageItemViewListener"    # Lcom/sonymobile/home/ui/pageview/PageItemViewListener;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sonymobile/home/presenter/view/IconLabelView;-><init>(Lcom/sonymobile/flix/components/Scene;Lcom/sonymobile/home/data/Item;ZLcom/sonymobile/home/ui/pageview/PageItemViewListener;)V

    .line 31
    return-void
.end method


# virtual methods
.method protected doHandleClick(Landroid/content/Context;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/sonymobile/home/presenter/view/InternalFunctionView;->getItem()Lcom/sonymobile/home/data/Item;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/home/data/InternalFunctionItem;

    .line 39
    .local v0, "internalFunctionItem":Lcom/sonymobile/home/data/InternalFunctionItem;
    invoke-virtual {v0}, Lcom/sonymobile/home/data/InternalFunctionItem;->doAction()V

    .line 40
    const/4 v1, 0x1

    return v1
.end method
