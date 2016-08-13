.class public final Lcom/sonymobile/home/cui/CuiGridHandler;
.super Ljava/lang/Object;
.source "CuiGridHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/home/cui/CuiGridHandler$1;,
        Lcom/sonymobile/home/cui/CuiGridHandler$CuiGridType;
    }
.end annotation


# direct methods
.method public static getGrid(Lcom/sonymobile/home/cui/CuiGridHandler$CuiGridType;Landroid/content/Context;)Lcom/sonymobile/grid/Grid;
    .locals 7
    .param p0, "gridType"    # Lcom/sonymobile/home/cui/CuiGridHandler$CuiGridType;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    invoke-static {p1}, Lcom/sonymobile/home/HomeApplication;->getResourceManager(Landroid/content/Context;)Lcom/sonymobile/home/resources/ResourceManager;

    move-result-object v3

    .line 33
    .local v3, "rm":Lcom/sonymobile/home/resources/ResourceManager;
    sget-object v5, Lcom/sonymobile/home/cui/CuiGridHandler$1;->$SwitchMap$com$sonymobile$home$cui$CuiGridHandler$CuiGridType:[I

    invoke-virtual {p0}, Lcom/sonymobile/home/cui/CuiGridHandler$CuiGridType;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 55
    const v5, 0x7f0d0006

    invoke-virtual {v3, v5}, Lcom/sonymobile/home/resources/ResourceManager;->getInteger(I)I

    move-result v4

    .line 56
    .local v4, "rows":I
    const v5, 0x7f0d0005

    invoke-virtual {v3, v5}, Lcom/sonymobile/home/resources/ResourceManager;->getInteger(I)I

    move-result v2

    .line 57
    .local v2, "cols":I
    const v5, 0x7f0b0012

    invoke-virtual {v3, v5}, Lcom/sonymobile/home/resources/ResourceManager;->getDimensionPixelSize(I)I

    move-result v1

    .line 58
    .local v1, "cellWidth":I
    const v5, 0x7f0b0011

    invoke-virtual {v3, v5}, Lcom/sonymobile/home/resources/ResourceManager;->getDimensionPixelSize(I)I

    move-result v0

    .line 62
    .local v0, "cellHeight":I
    :goto_0
    new-instance v5, Lcom/sonymobile/grid/Grid;

    invoke-direct {v5, v4, v2, v1, v0}, Lcom/sonymobile/grid/Grid;-><init>(IIII)V

    return-object v5

    .line 36
    .end local v0    # "cellHeight":I
    .end local v1    # "cellWidth":I
    .end local v2    # "cols":I
    .end local v4    # "rows":I
    :pswitch_0
    const v5, 0x7f0d0004

    invoke-virtual {v3, v5}, Lcom/sonymobile/home/resources/ResourceManager;->getInteger(I)I

    move-result v4

    .line 37
    .restart local v4    # "rows":I
    const v5, 0x7f0d0003

    invoke-virtual {v3, v5}, Lcom/sonymobile/home/resources/ResourceManager;->getInteger(I)I

    move-result v2

    .line 38
    .restart local v2    # "cols":I
    const v5, 0x7f0b000e

    invoke-virtual {v3, v5}, Lcom/sonymobile/home/resources/ResourceManager;->getDimensionPixelSize(I)I

    move-result v1

    .line 39
    .restart local v1    # "cellWidth":I
    const v5, 0x7f0b000d

    invoke-virtual {v3, v5}, Lcom/sonymobile/home/resources/ResourceManager;->getDimensionPixelSize(I)I

    move-result v0

    .line 40
    .restart local v0    # "cellHeight":I
    goto :goto_0

    .line 42
    .end local v0    # "cellHeight":I
    .end local v1    # "cellWidth":I
    .end local v2    # "cols":I
    .end local v4    # "rows":I
    :pswitch_1
    const v5, 0x7f0d000a

    invoke-virtual {v3, v5}, Lcom/sonymobile/home/resources/ResourceManager;->getInteger(I)I

    move-result v4

    .line 43
    .restart local v4    # "rows":I
    const v5, 0x7f0d0009

    invoke-virtual {v3, v5}, Lcom/sonymobile/home/resources/ResourceManager;->getInteger(I)I

    move-result v2

    .line 44
    .restart local v2    # "cols":I
    const v5, 0x7f0b0016

    invoke-virtual {v3, v5}, Lcom/sonymobile/home/resources/ResourceManager;->getDimensionPixelSize(I)I

    move-result v1

    .line 45
    .restart local v1    # "cellWidth":I
    const v5, 0x7f0b0015

    invoke-virtual {v3, v5}, Lcom/sonymobile/home/resources/ResourceManager;->getDimensionPixelSize(I)I

    move-result v0

    .line 46
    .restart local v0    # "cellHeight":I
    goto :goto_0

    .line 48
    .end local v0    # "cellHeight":I
    .end local v1    # "cellWidth":I
    .end local v2    # "cols":I
    .end local v4    # "rows":I
    :pswitch_2
    const v5, 0x7f0d0008

    invoke-virtual {v3, v5}, Lcom/sonymobile/home/resources/ResourceManager;->getInteger(I)I

    move-result v4

    .line 49
    .restart local v4    # "rows":I
    const v5, 0x7f0d0007

    invoke-virtual {v3, v5}, Lcom/sonymobile/home/resources/ResourceManager;->getInteger(I)I

    move-result v2

    .line 50
    .restart local v2    # "cols":I
    const v5, 0x7f0b0014

    invoke-virtual {v3, v5}, Lcom/sonymobile/home/resources/ResourceManager;->getDimensionPixelSize(I)I

    move-result v1

    .line 51
    .restart local v1    # "cellWidth":I
    const v5, 0x7f0b0013

    invoke-virtual {v3, v5}, Lcom/sonymobile/home/resources/ResourceManager;->getDimensionPixelSize(I)I

    move-result v0

    .line 52
    .restart local v0    # "cellHeight":I
    goto :goto_0

    .line 33
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
