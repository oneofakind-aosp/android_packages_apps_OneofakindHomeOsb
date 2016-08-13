.class Lcom/sonymobile/home/desktop/cui/CuiPresenter$2;
.super Ljava/lang/Object;
.source "CuiPresenter.java"

# interfaces
.implements Lcom/sonymobile/home/transfer/DragSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/home/desktop/cui/CuiPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/desktop/cui/CuiPresenter;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/desktop/cui/CuiPresenter;)V
    .locals 0

    .prologue
    .line 684
    iput-object p1, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter$2;->this$0:Lcom/sonymobile/home/desktop/cui/CuiPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private announceItemAddedToDesktop()V
    .locals 4

    .prologue
    .line 745
    iget-object v1, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter$2;->this$0:Lcom/sonymobile/home/desktop/cui/CuiPresenter;

    # getter for: Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mScene:Lcom/sonymobile/flix/components/Scene;
    invoke-static {v1}, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->access$300(Lcom/sonymobile/home/desktop/cui/CuiPresenter;)Lcom/sonymobile/flix/components/Scene;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/flix/components/Scene;->getAccessibility()Lcom/sonymobile/flix/components/accessibility/Accessibility;

    move-result-object v0

    .line 746
    .local v0, "accessibility":Lcom/sonymobile/flix/components/accessibility/Accessibility;
    invoke-virtual {v0}, Lcom/sonymobile/flix/components/accessibility/Accessibility;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 748
    const/16 v1, 0x4000

    iget-object v2, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter$2;->this$0:Lcom/sonymobile/home/desktop/cui/CuiPresenter;

    # getter for: Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->access$400(Lcom/sonymobile/home/desktop/cui/CuiPresenter;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f080052

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/flix/components/accessibility/Accessibility;->sendEvent(ILjava/lang/String;)V

    .line 751
    :cond_0
    return-void
.end method


# virtual methods
.method public onTransferCanceled(Lcom/sonymobile/home/transfer/Transferable;)V
    .locals 0
    .param p1, "transferable"    # Lcom/sonymobile/home/transfer/Transferable;

    .prologue
    .line 688
    return-void
.end method

.method public onTransferCompleted(Lcom/sonymobile/home/transfer/Transferable;Lcom/sonymobile/home/transfer/DropEvent;)V
    .locals 10
    .param p1, "transferable"    # Lcom/sonymobile/home/transfer/Transferable;
    .param p2, "event"    # Lcom/sonymobile/home/transfer/DropEvent;

    .prologue
    const-wide/16 v8, 0x0

    .line 692
    move-object v0, p1

    check-cast v0, Lcom/sonymobile/home/desktop/cui/CuiTransferable;

    .line 693
    .local v0, "cuiTransferable":Lcom/sonymobile/home/desktop/cui/CuiTransferable;
    invoke-virtual {v0}, Lcom/sonymobile/home/desktop/cui/CuiTransferable;->getCuiItem()Lcom/sonymobile/home/cui/CuiGridItem;

    move-result-object v1

    .line 695
    .local v1, "gridItem":Lcom/sonymobile/home/cui/CuiGridItem;
    if-eqz v1, :cond_0

    .line 697
    invoke-virtual {v1}, Lcom/sonymobile/home/cui/CuiGridItem;->getItem()Lcom/sonymobile/home/data/Item;

    move-result-object v3

    .line 699
    .local v3, "item":Lcom/sonymobile/home/data/Item;
    sget-object v4, Lcom/sonymobile/home/desktop/cui/CuiPresenter$12;->$SwitchMap$com$sonymobile$home$cui$CuiGridItem$CuiGridItemType:[I

    invoke-virtual {v1}, Lcom/sonymobile/home/cui/CuiGridItem;->getGridItemType()Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 738
    :pswitch_0
    invoke-direct {p0}, Lcom/sonymobile/home/desktop/cui/CuiPresenter$2;->announceItemAddedToDesktop()V

    .line 742
    .end local v1    # "gridItem":Lcom/sonymobile/home/cui/CuiGridItem;
    .end local v3    # "item":Lcom/sonymobile/home/data/Item;
    :cond_0
    :goto_0
    return-void

    .line 702
    .restart local v1    # "gridItem":Lcom/sonymobile/home/cui/CuiGridItem;
    .restart local v3    # "item":Lcom/sonymobile/home/data/Item;
    :pswitch_1
    iget-object v5, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter$2;->this$0:Lcom/sonymobile/home/desktop/cui/CuiPresenter;

    move-object v4, v1

    check-cast v4, Lcom/sonymobile/home/cui/CuiGridWallpaperItem;

    # setter for: Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mSelectedWallpaperItem:Lcom/sonymobile/home/cui/CuiGridWallpaperItem;
    invoke-static {v5, v4}, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->access$102(Lcom/sonymobile/home/desktop/cui/CuiPresenter;Lcom/sonymobile/home/cui/CuiGridWallpaperItem;)Lcom/sonymobile/home/cui/CuiGridWallpaperItem;

    .line 703
    iget-object v4, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter$2;->this$0:Lcom/sonymobile/home/desktop/cui/CuiPresenter;

    check-cast v1, Lcom/sonymobile/home/cui/CuiGridWallpaperItem;

    .end local v1    # "gridItem":Lcom/sonymobile/home/cui/CuiGridItem;
    # invokes: Lcom/sonymobile/home/desktop/cui/CuiPresenter;->setWallpaper(Lcom/sonymobile/home/cui/CuiGridWallpaperItem;)V
    invoke-static {v4, v1}, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->access$200(Lcom/sonymobile/home/desktop/cui/CuiPresenter;Lcom/sonymobile/home/cui/CuiGridWallpaperItem;)V

    .line 704
    iget-object v4, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter$2;->this$0:Lcom/sonymobile/home/desktop/cui/CuiPresenter;

    # getter for: Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mSelectedWallpaperItem:Lcom/sonymobile/home/cui/CuiGridWallpaperItem;
    invoke-static {v4}, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->access$100(Lcom/sonymobile/home/desktop/cui/CuiPresenter;)Lcom/sonymobile/home/cui/CuiGridWallpaperItem;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/home/cui/CuiGridWallpaperItem;->getImagePath()Ljava/lang/String;

    move-result-object v2

    .line 705
    .local v2, "imagePath":Ljava/lang/String;
    const-string v4, "CUI"

    const-string v5, "WallpaperChangedByDrag"

    if-eqz v2, :cond_1

    .end local v2    # "imagePath":Ljava/lang/String;
    :goto_1
    invoke-static {v4, v5, v2, v8, v9}, Lcom/sonymobile/home/statistics/TrackingUtil;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0

    .restart local v2    # "imagePath":Ljava/lang/String;
    :cond_1
    const-string v2, "unknown image path"

    goto :goto_1

    .line 711
    .end local v2    # "imagePath":Ljava/lang/String;
    .restart local v1    # "gridItem":Lcom/sonymobile/home/cui/CuiGridItem;
    :pswitch_2
    if-eqz v3, :cond_2

    instance-of v4, v3, Lcom/sonymobile/home/cui/CuiGridWidgetLeafItem;

    if-eqz v4, :cond_2

    .line 712
    const-string v4, "CUI"

    const-string v5, "WidgetAddedByDrag"

    invoke-static {v3}, Lcom/sonymobile/home/statistics/TrackingUtil;->getTrackingName(Lcom/sonymobile/home/data/Item;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6, v8, v9}, Lcom/sonymobile/home/statistics/TrackingUtil;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 716
    :cond_2
    invoke-direct {p0}, Lcom/sonymobile/home/desktop/cui/CuiPresenter$2;->announceItemAddedToDesktop()V

    goto :goto_0

    .line 720
    :pswitch_3
    instance-of v4, v3, Lcom/sonymobile/home/data/ActivityItem;

    if-eqz v4, :cond_3

    .line 721
    const-string v4, "CUI"

    const-string v5, "AppAddedByDrag"

    invoke-static {v3}, Lcom/sonymobile/home/statistics/TrackingUtil;->getTrackingName(Lcom/sonymobile/home/data/Item;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6, v8, v9}, Lcom/sonymobile/home/statistics/TrackingUtil;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 725
    :cond_3
    invoke-direct {p0}, Lcom/sonymobile/home/desktop/cui/CuiPresenter$2;->announceItemAddedToDesktop()V

    goto :goto_0

    .line 729
    :pswitch_4
    instance-of v4, v3, Lcom/sonymobile/home/data/ShortcutItem;

    if-eqz v4, :cond_4

    .line 730
    const-string v4, "CUI"

    const-string v5, "ShortcutAddedByDrag"

    invoke-static {v3}, Lcom/sonymobile/home/statistics/TrackingUtil;->getTrackingName(Lcom/sonymobile/home/data/Item;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6, v8, v9}, Lcom/sonymobile/home/statistics/TrackingUtil;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 734
    :cond_4
    invoke-direct {p0}, Lcom/sonymobile/home/desktop/cui/CuiPresenter$2;->announceItemAddedToDesktop()V

    goto :goto_0

    .line 699
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
