.class Lcom/sonymobile/home/ui/pageview/PageViewGroup$CurrentItemViewData;
.super Ljava/lang/Object;
.source "PageViewGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/home/ui/pageview/PageViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CurrentItemViewData"
.end annotation


# instance fields
.field public final mItemView:Lcom/sonymobile/home/ui/pageview/PageItemView;

.field public final mWorldX:F

.field public final mWorldY:F

.field public final mWorldZ:F


# direct methods
.method public constructor <init>(Lcom/sonymobile/home/ui/pageview/PageItemView;FFF)V
    .locals 0
    .param p1, "itemView"    # Lcom/sonymobile/home/ui/pageview/PageItemView;
    .param p2, "worldX"    # F
    .param p3, "worldY"    # F
    .param p4, "worldZ"    # F

    .prologue
    .line 786
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 787
    iput-object p1, p0, Lcom/sonymobile/home/ui/pageview/PageViewGroup$CurrentItemViewData;->mItemView:Lcom/sonymobile/home/ui/pageview/PageItemView;

    .line 788
    iput p2, p0, Lcom/sonymobile/home/ui/pageview/PageViewGroup$CurrentItemViewData;->mWorldX:F

    .line 789
    iput p3, p0, Lcom/sonymobile/home/ui/pageview/PageViewGroup$CurrentItemViewData;->mWorldY:F

    .line 790
    iput p4, p0, Lcom/sonymobile/home/ui/pageview/PageViewGroup$CurrentItemViewData;->mWorldZ:F

    .line 791
    return-void
.end method
