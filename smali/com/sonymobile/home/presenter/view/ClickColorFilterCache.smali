.class public Lcom/sonymobile/home/presenter/view/ClickColorFilterCache;
.super Ljava/lang/Object;
.source "ClickColorFilterCache.java"


# static fields
.field private static final sColorFilterCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/ColorFilter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/sonymobile/home/presenter/view/ClickColorFilterCache;->sColorFilterCache:Landroid/util/SparseArray;

    return-void
.end method

.method public static getColorFilter(I)Landroid/graphics/ColorFilter;
    .locals 3
    .param p0, "alpha"    # I

    .prologue
    .line 24
    sget-object v1, Lcom/sonymobile/home/presenter/view/ClickColorFilterCache;->sColorFilterCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/ColorFilter;

    .line 25
    .local v0, "filter":Landroid/graphics/ColorFilter;
    if-nez v0, :cond_0

    .line 26
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    .end local v0    # "filter":Landroid/graphics/ColorFilter;
    shl-int/lit8 v1, p0, 0x18

    const v2, 0x333333

    or-int/2addr v1, v2

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 27
    .restart local v0    # "filter":Landroid/graphics/ColorFilter;
    sget-object v1, Lcom/sonymobile/home/presenter/view/ClickColorFilterCache;->sColorFilterCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p0, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 30
    :cond_0
    return-object v0
.end method
