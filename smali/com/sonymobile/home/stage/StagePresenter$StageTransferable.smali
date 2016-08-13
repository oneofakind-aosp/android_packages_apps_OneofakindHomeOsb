.class Lcom/sonymobile/home/stage/StagePresenter$StageTransferable;
.super Lcom/sonymobile/home/ui/pageview/PageItemViewTransferable;
.source "StagePresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/home/stage/StagePresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StageTransferable"
.end annotation


# direct methods
.method public constructor <init>(Lcom/sonymobile/home/ui/pageview/PageItemView;)V
    .locals 0
    .param p1, "pageItemView"    # Lcom/sonymobile/home/ui/pageview/PageItemView;

    .prologue
    .line 193
    invoke-direct {p0, p1}, Lcom/sonymobile/home/ui/pageview/PageItemViewTransferable;-><init>(Lcom/sonymobile/home/ui/pageview/PageItemView;)V

    .line 194
    return-void
.end method


# virtual methods
.method public getColSpan()I
    .locals 1

    .prologue
    .line 203
    const/4 v0, 0x1

    return v0
.end method

.method public getRowSpan()I
    .locals 1

    .prologue
    .line 198
    const/4 v0, 0x1

    return v0
.end method
