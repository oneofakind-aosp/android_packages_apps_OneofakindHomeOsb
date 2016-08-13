.class public abstract Lcom/sonymobile/home/cui/CuiGridModel;
.super Ljava/lang/Object;
.source "CuiGridModel.java"

# interfaces
.implements Lcom/sonymobile/home/cui/AsyncBitmapLoader$BitmapLoadListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/home/cui/CuiGridModel$CuiGridModelListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sonymobile/home/cui/AsyncBitmapLoader$BitmapLoadListener",
        "<",
        "Lcom/sonymobile/home/cui/CuiGridItem;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sFont:Landroid/graphics/Typeface;


# instance fields
.field protected final mContext:Landroid/content/Context;

.field protected final mGrid:Lcom/sonymobile/grid/Grid;

.field protected final mGridItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/cui/CuiGridItem;",
            ">;"
        }
    .end annotation
.end field

.field protected final mGridModelListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/cui/CuiGridModel$CuiGridModelListener;",
            ">;"
        }
    .end annotation
.end field

.field protected final mIsLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mTextColor:I

.field private final mTextShadowColor:I

.field private final mTextSize:F

.field protected final mWorker:Lcom/sonymobile/flix/util/Worker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 81
    const-class v0, Lcom/sonymobile/home/cui/CuiGridModel;

    invoke-static {v0}, Lcom/sonymobile/home/util/HomeDebug;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/home/cui/CuiGridModel;->TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/sonymobile/grid/Grid;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "grid"    # Lcom/sonymobile/grid/Grid;

    .prologue
    const/4 v4, 0x0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/sonymobile/home/cui/CuiGridModel;->mGridItems:Ljava/util/List;

    .line 66
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/sonymobile/home/cui/CuiGridModel;->mIsLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 68
    new-instance v2, Lcom/sonymobile/flix/util/Worker;

    const-string v3, "CuiGridModelWorker"

    invoke-direct {v2, v3, v4}, Lcom/sonymobile/flix/util/Worker;-><init>(Ljava/lang/String;I)V

    iput-object v2, p0, Lcom/sonymobile/home/cui/CuiGridModel;->mWorker:Lcom/sonymobile/flix/util/Worker;

    .line 71
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/sonymobile/home/cui/CuiGridModel;->mGridModelListeners:Ljava/util/List;

    .line 84
    iput-object p1, p0, Lcom/sonymobile/home/cui/CuiGridModel;->mContext:Landroid/content/Context;

    .line 85
    iput-object p2, p0, Lcom/sonymobile/home/cui/CuiGridModel;->mGrid:Lcom/sonymobile/grid/Grid;

    .line 86
    sget-object v2, Lcom/sonymobile/home/cui/CuiGridModel;->sFont:Landroid/graphics/Typeface;

    if-nez v2, :cond_0

    .line 87
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080110

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, "fontName":Ljava/lang/String;
    invoke-static {v0, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    sput-object v2, Lcom/sonymobile/home/cui/CuiGridModel;->sFont:Landroid/graphics/Typeface;

    .line 90
    .end local v0    # "fontName":Ljava/lang/String;
    :cond_0
    invoke-static {p1}, Lcom/sonymobile/home/HomeApplication;->getResourceManager(Landroid/content/Context;)Lcom/sonymobile/home/resources/ResourceManager;

    move-result-object v1

    .line 91
    .local v1, "rm":Lcom/sonymobile/home/resources/ResourceManager;
    const v2, 0x7f0e0029

    invoke-virtual {v1, v2}, Lcom/sonymobile/home/resources/ResourceManager;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/sonymobile/home/cui/CuiGridModel;->mTextColor:I

    .line 92
    const v2, 0x7f0e002a

    invoke-virtual {v1, v2}, Lcom/sonymobile/home/resources/ResourceManager;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/sonymobile/home/cui/CuiGridModel;->mTextShadowColor:I

    .line 93
    const v2, 0x7f0b00ad

    invoke-virtual {v1, v2}, Lcom/sonymobile/home/resources/ResourceManager;->getDimensionPixelSize(I)I

    move-result v2

    const v3, 0x7f0b00ac

    invoke-virtual {v1, v3}, Lcom/sonymobile/home/resources/ResourceManager;->getDimensionPixelSize(I)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/sonymobile/home/cui/CuiGridModel;->mTextSize:F

    .line 95
    return-void
.end method


# virtual methods
.method public addModelListener(Lcom/sonymobile/home/cui/CuiGridModel$CuiGridModelListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sonymobile/home/cui/CuiGridModel$CuiGridModelListener;

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/sonymobile/home/cui/CuiGridModel;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    invoke-interface {p1}, Lcom/sonymobile/home/cui/CuiGridModel$CuiGridModelListener;->onModelLoaded()V

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridModel;->mGridModelListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    return-void
.end method

.method protected createBitmapFromLabel(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "numberOfRows"    # I

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 175
    iget-object v1, p0, Lcom/sonymobile/home/cui/CuiGridModel;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/sonymobile/home/cui/CuiGridModel;->mTextSize:F

    invoke-static {v1, v2, p2}, Lcom/sonymobile/home/textview/TextViewUtilities;->createTextView(Landroid/content/Context;FI)Landroid/widget/TextView;

    move-result-object v0

    .line 176
    .local v0, "textView":Landroid/widget/TextView;
    sget-object v1, Lcom/sonymobile/home/cui/CuiGridModel;->sFont:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 177
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    iget v1, p0, Lcom/sonymobile/home/cui/CuiGridModel;->mTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 180
    iget v1, p0, Lcom/sonymobile/home/cui/CuiGridModel;->mTextShadowColor:I

    if-eqz v1, :cond_0

    .line 181
    const/high16 v1, 0x40000000    # 2.0f

    iget v2, p0, Lcom/sonymobile/home/cui/CuiGridModel;->mTextShadowColor:I

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 184
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/home/cui/CuiGridModel;->mGrid:Lcom/sonymobile/grid/Grid;

    invoke-virtual {v1}, Lcom/sonymobile/grid/Grid;->getCellWidth()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3f666666    # 0.9f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    const/4 v2, -0x1

    const/4 v3, 0x1

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/sonymobile/flix/util/Utils;->createBitmapFromView(Landroid/view/View;IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public getCellHeight()I
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridModel;->mGrid:Lcom/sonymobile/grid/Grid;

    invoke-virtual {v0}, Lcom/sonymobile/grid/Grid;->getCellHeight()I

    move-result v0

    return v0
.end method

.method public getCellWidth()I
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridModel;->mGrid:Lcom/sonymobile/grid/Grid;

    invoke-virtual {v0}, Lcom/sonymobile/grid/Grid;->getCellWidth()I

    move-result v0

    return v0
.end method

.method public getGridItem(I)Lcom/sonymobile/home/cui/CuiGridItem;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 129
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridModel;->mGridItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/home/cui/CuiGridItem;

    return-object v0
.end method

.method public getGridItemCount()I
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridModel;->mGridItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getGridItemType(I)Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 133
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/cui/CuiGridModel;->getGridItem(I)Lcom/sonymobile/home/cui/CuiGridItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/home/cui/CuiGridItem;->getGridItemType()Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;

    move-result-object v0

    return-object v0
.end method

.method public getNumberOfColumns()I
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridModel;->mGrid:Lcom/sonymobile/grid/Grid;

    invoke-virtual {v0}, Lcom/sonymobile/grid/Grid;->getNumCols()I

    move-result v0

    return v0
.end method

.method public getNumberOfRows()I
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridModel;->mGrid:Lcom/sonymobile/grid/Grid;

    invoke-virtual {v0}, Lcom/sonymobile/grid/Grid;->getNumRows()I

    move-result v0

    return v0
.end method

.method public getResource(I)Lcom/sonymobile/home/cui/CuiGridResource;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/sonymobile/home/cui/CuiGridModel;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/cui/CuiGridModel;->getGridItem(I)Lcom/sonymobile/home/cui/CuiGridItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/home/cui/CuiGridItem;->getResource()Lcom/sonymobile/home/cui/CuiGridResource;

    move-result-object v0

    .line 140
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract getType()Lcom/sonymobile/home/cui/CuiGridHandler$CuiGridType;
.end method

.method public isLoaded()Z
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridModel;->mIsLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public abstract load()V
.end method

.method protected notifyGridItemChanged(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 169
    iget-object v2, p0, Lcom/sonymobile/home/cui/CuiGridModel;->mGridModelListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/cui/CuiGridModel$CuiGridModelListener;

    .line 170
    .local v1, "listener":Lcom/sonymobile/home/cui/CuiGridModel$CuiGridModelListener;
    invoke-interface {v1, p1}, Lcom/sonymobile/home/cui/CuiGridModel$CuiGridModelListener;->onModelItemChanged(I)V

    goto :goto_0

    .line 172
    .end local v1    # "listener":Lcom/sonymobile/home/cui/CuiGridModel$CuiGridModelListener;
    :cond_0
    return-void
.end method

.method public onBitmapLoaded(Lcom/sonymobile/home/cui/CuiGridItem;Lcom/sonymobile/home/cui/BitmapLoaderItem;)V
    .locals 7
    .param p1, "gridItem"    # Lcom/sonymobile/home/cui/CuiGridItem;
    .param p2, "bitmaps"    # Lcom/sonymobile/home/cui/BitmapLoaderItem;

    .prologue
    .line 190
    iget-object v4, p0, Lcom/sonymobile/home/cui/CuiGridModel;->mGridItems:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 192
    .local v1, "index":I
    if-ltz v1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 193
    invoke-virtual {p1}, Lcom/sonymobile/home/cui/CuiGridItem;->getResource()Lcom/sonymobile/home/cui/CuiGridResource;

    move-result-object v3

    .line 194
    .local v3, "resource":Lcom/sonymobile/home/cui/CuiGridResource;
    invoke-virtual {p2}, Lcom/sonymobile/home/cui/BitmapLoaderItem;->getIconBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 195
    .local v0, "iconBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p2}, Lcom/sonymobile/home/cui/BitmapLoaderItem;->getLabelBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 196
    .local v2, "labelBitmap":Landroid/graphics/Bitmap;
    new-instance v4, Lcom/sonymobile/home/cui/CuiGridLabelAndIconResource;

    invoke-interface {v3}, Lcom/sonymobile/home/cui/CuiGridResource;->getLabel()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3}, Lcom/sonymobile/home/cui/CuiGridResource;->getBitmap2()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-direct {v4, v2, v5, v0, v6}, Lcom/sonymobile/home/cui/CuiGridLabelAndIconResource;-><init>(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, v4}, Lcom/sonymobile/home/cui/CuiGridItem;->setResource(Lcom/sonymobile/home/cui/CuiGridResource;)V

    .line 199
    invoke-virtual {p0, v1}, Lcom/sonymobile/home/cui/CuiGridModel;->notifyGridItemChanged(I)V

    .line 204
    .end local v0    # "iconBitmap":Landroid/graphics/Bitmap;
    .end local v2    # "labelBitmap":Landroid/graphics/Bitmap;
    .end local v3    # "resource":Lcom/sonymobile/home/cui/CuiGridResource;
    :goto_0
    return-void

    .line 201
    :cond_0
    sget-object v4, Lcom/sonymobile/home/cui/CuiGridModel;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Loading bitmaps "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " for gridItem "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " with index "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " failed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public bridge synthetic onBitmapLoaded(Ljava/lang/Object;Lcom/sonymobile/home/cui/BitmapLoaderItem;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Lcom/sonymobile/home/cui/BitmapLoaderItem;

    .prologue
    .line 34
    check-cast p1, Lcom/sonymobile/home/cui/CuiGridItem;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/home/cui/CuiGridModel;->onBitmapLoaded(Lcom/sonymobile/home/cui/CuiGridItem;Lcom/sonymobile/home/cui/BitmapLoaderItem;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridModel;->mWorker:Lcom/sonymobile/flix/util/Worker;

    invoke-virtual {v0}, Lcom/sonymobile/flix/util/Worker;->cancelAll()V

    .line 99
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridModel;->mGridItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 100
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridModel;->mIsLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 101
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridModel;->mGridModelListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 102
    return-void
.end method

.method protected setLoaded()V
    .locals 4

    .prologue
    .line 155
    iget-object v2, p0, Lcom/sonymobile/home/cui/CuiGridModel;->mIsLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 157
    iget-object v2, p0, Lcom/sonymobile/home/cui/CuiGridModel;->mGridModelListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/cui/CuiGridModel$CuiGridModelListener;

    .line 158
    .local v1, "listener":Lcom/sonymobile/home/cui/CuiGridModel$CuiGridModelListener;
    invoke-interface {v1}, Lcom/sonymobile/home/cui/CuiGridModel$CuiGridModelListener;->onModelLoaded()V

    goto :goto_0

    .line 160
    .end local v1    # "listener":Lcom/sonymobile/home/cui/CuiGridModel$CuiGridModelListener;
    :cond_0
    return-void
.end method
