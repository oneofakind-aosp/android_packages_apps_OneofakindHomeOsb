.class public Lcom/sonymobile/home/cui/CuiGridItem;
.super Ljava/lang/Object;
.source "CuiGridItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;
    }
.end annotation


# instance fields
.field private final mColSpan:I

.field private final mGridItemType:Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;

.field private final mItem:Lcom/sonymobile/home/data/Item;

.field private final mResolveInfo:Landroid/content/pm/ResolveInfo;

.field private mResource:Lcom/sonymobile/home/cui/CuiGridResource;

.field private final mRowSpan:I


# direct methods
.method public constructor <init>(Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;Lcom/sonymobile/home/cui/CuiGridResource;Lcom/sonymobile/home/data/Item;II)V
    .locals 7
    .param p1, "itemType"    # Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;
    .param p2, "resource"    # Lcom/sonymobile/home/cui/CuiGridResource;
    .param p3, "item"    # Lcom/sonymobile/home/data/Item;
    .param p4, "rowSpan"    # I
    .param p5, "colSpan"    # I

    .prologue
    .line 43
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/sonymobile/home/cui/CuiGridItem;-><init>(Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;Lcom/sonymobile/home/cui/CuiGridResource;Lcom/sonymobile/home/data/Item;Landroid/content/pm/ResolveInfo;II)V

    .line 44
    return-void
.end method

.method public constructor <init>(Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;Lcom/sonymobile/home/cui/CuiGridResource;Lcom/sonymobile/home/data/Item;Landroid/content/pm/ResolveInfo;II)V
    .locals 0
    .param p1, "itemType"    # Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;
    .param p2, "resource"    # Lcom/sonymobile/home/cui/CuiGridResource;
    .param p3, "item"    # Lcom/sonymobile/home/data/Item;
    .param p4, "resolveInfo"    # Landroid/content/pm/ResolveInfo;
    .param p5, "rowSpan"    # I
    .param p6, "colSpan"    # I

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/sonymobile/home/cui/CuiGridItem;->mGridItemType:Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;

    .line 49
    iput-object p2, p0, Lcom/sonymobile/home/cui/CuiGridItem;->mResource:Lcom/sonymobile/home/cui/CuiGridResource;

    .line 50
    iput-object p3, p0, Lcom/sonymobile/home/cui/CuiGridItem;->mItem:Lcom/sonymobile/home/data/Item;

    .line 51
    iput-object p4, p0, Lcom/sonymobile/home/cui/CuiGridItem;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    .line 52
    iput p5, p0, Lcom/sonymobile/home/cui/CuiGridItem;->mRowSpan:I

    .line 53
    iput p6, p0, Lcom/sonymobile/home/cui/CuiGridItem;->mColSpan:I

    .line 54
    return-void
.end method


# virtual methods
.method public getColSpan()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/sonymobile/home/cui/CuiGridItem;->mColSpan:I

    return v0
.end method

.method public getGridItemType()Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridItem;->mGridItemType:Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;

    return-object v0
.end method

.method public getItem()Lcom/sonymobile/home/data/Item;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridItem;->mItem:Lcom/sonymobile/home/data/Item;

    return-object v0
.end method

.method public getResolveInfo()Landroid/content/pm/ResolveInfo;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridItem;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    return-object v0
.end method

.method public getResource()Lcom/sonymobile/home/cui/CuiGridResource;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridItem;->mResource:Lcom/sonymobile/home/cui/CuiGridResource;

    return-object v0
.end method

.method public getRowSpan()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/sonymobile/home/cui/CuiGridItem;->mRowSpan:I

    return v0
.end method

.method public setResource(Lcom/sonymobile/home/cui/CuiGridResource;)V
    .locals 0
    .param p1, "resource"    # Lcom/sonymobile/home/cui/CuiGridResource;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/sonymobile/home/cui/CuiGridItem;->mResource:Lcom/sonymobile/home/cui/CuiGridResource;

    .line 66
    return-void
.end method
