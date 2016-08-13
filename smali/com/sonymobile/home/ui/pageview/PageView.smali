.class public Lcom/sonymobile/home/ui/pageview/PageView;
.super Lcom/sonymobile/flix/components/Component;
.source "PageView.java"

# interfaces
.implements Lcom/sonymobile/flix/components/Scene$LifeCycleListener;
.implements Lcom/sonymobile/flix/components/Scene$Touchable$Dispatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/home/ui/pageview/PageView$PageItemViewAddedListener;
    }
.end annotation


# instance fields
.field private final mContent:Lcom/sonymobile/flix/components/Component;

.field private final mIndex:I

.field private mOnScreen:Z

.field private mPageItemViewAddedListener:Lcom/sonymobile/home/ui/pageview/PageView$PageItemViewAddedListener;

.field private final mPageItems:Lcom/sonymobile/flix/components/Typed$Group;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sonymobile/flix/components/Typed$Group",
            "<",
            "Lcom/sonymobile/home/ui/pageview/PageItemView;",
            ">;"
        }
    .end annotation
.end field

.field private mPositionOffset:F


# direct methods
.method public constructor <init>(Lcom/sonymobile/flix/components/Scene;I)V
    .locals 3
    .param p1, "scene"    # Lcom/sonymobile/flix/components/Scene;
    .param p2, "pageIndex"    # I

    .prologue
    const/4 v2, 0x1

    .line 52
    invoke-direct {p0, p1}, Lcom/sonymobile/flix/components/Component;-><init>(Lcom/sonymobile/flix/components/Scene;)V

    .line 54
    iput p2, p0, Lcom/sonymobile/home/ui/pageview/PageView;->mIndex:I

    .line 55
    iput-boolean v2, p0, Lcom/sonymobile/home/ui/pageview/PageView;->mOnScreen:Z

    .line 57
    invoke-virtual {p0, v2}, Lcom/sonymobile/home/ui/pageview/PageView;->setCullingEnabled(Z)V

    .line 62
    new-instance v0, Lcom/sonymobile/flix/components/Component;

    invoke-direct {v0, p1}, Lcom/sonymobile/flix/components/Component;-><init>(Lcom/sonymobile/flix/components/Scene;)V

    iput-object v0, p0, Lcom/sonymobile/home/ui/pageview/PageView;->mContent:Lcom/sonymobile/flix/components/Component;

    .line 63
    iget-object v0, p0, Lcom/sonymobile/home/ui/pageview/PageView;->mContent:Lcom/sonymobile/flix/components/Component;

    const-string v1, "Content"

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/Component;->setName(Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/sonymobile/home/ui/pageview/PageView;->mContent:Lcom/sonymobile/flix/components/Component;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/Component;->setCameraProjection(I)V

    .line 65
    iget-object v0, p0, Lcom/sonymobile/home/ui/pageview/PageView;->mContent:Lcom/sonymobile/flix/components/Component;

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/ui/pageview/PageView;->addChild(Lcom/sonymobile/flix/components/Component;)V

    .line 70
    new-instance v0, Lcom/sonymobile/flix/components/Typed$Group;

    const-class v1, Lcom/sonymobile/home/ui/pageview/PageItemView;

    invoke-direct {v0, p1, v1}, Lcom/sonymobile/flix/components/Typed$Group;-><init>(Lcom/sonymobile/flix/components/Scene;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/sonymobile/home/ui/pageview/PageView;->mPageItems:Lcom/sonymobile/flix/components/Typed$Group;

    .line 71
    iget-object v0, p0, Lcom/sonymobile/home/ui/pageview/PageView;->mPageItems:Lcom/sonymobile/flix/components/Typed$Group;

    const-string v1, "PageItems"

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/Typed$Group;->setName(Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/sonymobile/home/ui/pageview/PageView;->mContent:Lcom/sonymobile/flix/components/Component;

    iget-object v1, p0, Lcom/sonymobile/home/ui/pageview/PageView;->mPageItems:Lcom/sonymobile/flix/components/Typed$Group;

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/Component;->addChild(Lcom/sonymobile/flix/components/Component;)V

    .line 74
    invoke-virtual {p0, v2}, Lcom/sonymobile/home/ui/pageview/PageView;->setKeepUpdatedTransformMatrix(Z)V

    .line 75
    return-void
.end method


# virtual methods
.method public add(Lcom/sonymobile/home/ui/pageview/PageItemView;)V
    .locals 1
    .param p1, "pageItem"    # Lcom/sonymobile/home/ui/pageview/PageItemView;

    .prologue
    .line 260
    iget-object v0, p0, Lcom/sonymobile/home/ui/pageview/PageView;->mPageItems:Lcom/sonymobile/flix/components/Typed$Group;

    invoke-virtual {v0, p1}, Lcom/sonymobile/flix/components/Typed$Group;->addChild(Lcom/sonymobile/flix/components/Component;)V

    .line 261
    iget-object v0, p0, Lcom/sonymobile/home/ui/pageview/PageView;->mPageItemViewAddedListener:Lcom/sonymobile/home/ui/pageview/PageView$PageItemViewAddedListener;

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/sonymobile/home/ui/pageview/PageView;->mPageItemViewAddedListener:Lcom/sonymobile/home/ui/pageview/PageView$PageItemViewAddedListener;

    invoke-interface {v0, p1, p0}, Lcom/sonymobile/home/ui/pageview/PageView$PageItemViewAddedListener;->onPageItemViewAdded(Lcom/sonymobile/home/ui/pageview/PageItemView;Lcom/sonymobile/home/ui/pageview/PageView;)V

    .line 264
    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;FFLcom/sonymobile/flix/components/Component$DrawingState;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "worldX"    # F
    .param p3, "worldY"    # F
    .param p4, "drawingState"    # Lcom/sonymobile/flix/components/Component$DrawingState;

    .prologue
    .line 359
    iget-boolean v0, p0, Lcom/sonymobile/home/ui/pageview/PageView;->mOnScreen:Z

    if-eqz v0, :cond_0

    .line 360
    invoke-super {p0, p1, p2, p3, p4}, Lcom/sonymobile/flix/components/Component;->draw(Landroid/graphics/Canvas;FFLcom/sonymobile/flix/components/Component$DrawingState;)V

    .line 362
    :cond_0
    return-void
.end method

.method public ensureAllPageItemsAreVisible()V
    .locals 4

    .prologue
    .line 351
    iget-object v2, p0, Lcom/sonymobile/home/ui/pageview/PageView;->mPageItems:Lcom/sonymobile/flix/components/Typed$Group;

    invoke-virtual {v2}, Lcom/sonymobile/flix/components/Typed$Group;->getNbrChildren()I

    move-result v1

    .line 352
    .local v1, "nbrPageItems":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 353
    iget-object v2, p0, Lcom/sonymobile/home/ui/pageview/PageView;->mPageItems:Lcom/sonymobile/flix/components/Typed$Group;

    invoke-virtual {v2, v0}, Lcom/sonymobile/flix/components/Typed$Group;->getChild(I)Lcom/sonymobile/flix/components/Component;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/home/ui/pageview/PageItemView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sonymobile/home/ui/pageview/PageItemView;->setVisible(Z)V

    .line 352
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 355
    :cond_0
    return-void
.end method

.method public getAllItemViews()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/ui/pageview/PageItemView;",
            ">;"
        }
    .end annotation

    .prologue
    .line 325
    iget-object v3, p0, Lcom/sonymobile/home/ui/pageview/PageView;->mPageItems:Lcom/sonymobile/flix/components/Typed$Group;

    invoke-virtual {v3}, Lcom/sonymobile/flix/components/Typed$Group;->getNbrChildren()I

    move-result v2

    .line 326
    .local v2, "nbrPageItems":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 327
    .local v1, "itemViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/home/ui/pageview/PageItemView;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 328
    iget-object v3, p0, Lcom/sonymobile/home/ui/pageview/PageView;->mPageItems:Lcom/sonymobile/flix/components/Typed$Group;

    invoke-virtual {v3, v0}, Lcom/sonymobile/flix/components/Typed$Group;->getChild(I)Lcom/sonymobile/flix/components/Component;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 327
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 330
    :cond_0
    return-object v1
.end method

.method public getContent()Lcom/sonymobile/flix/components/Component;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/sonymobile/home/ui/pageview/PageView;->mContent:Lcom/sonymobile/flix/components/Component;

    return-object v0
.end method

.method public getItem(Lcom/sonymobile/home/data/Item;)Lcom/sonymobile/home/ui/pageview/PageItemView;
    .locals 2
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 313
    if-nez p1, :cond_0

    .line 314
    const/4 v0, 0x0

    .line 316
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/sonymobile/home/data/Item;->getUniqueId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/home/ui/pageview/PageView;->getItemView(J)Lcom/sonymobile/home/ui/pageview/PageItemView;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemView(J)Lcom/sonymobile/home/ui/pageview/PageItemView;
    .locals 7
    .param p1, "uniqueId"    # J

    .prologue
    .line 296
    iget-object v3, p0, Lcom/sonymobile/home/ui/pageview/PageView;->mPageItems:Lcom/sonymobile/flix/components/Typed$Group;

    invoke-virtual {v3}, Lcom/sonymobile/flix/components/Typed$Group;->getNbrChildren()I

    move-result v1

    .line 297
    .local v1, "nbrPageItems":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 298
    iget-object v3, p0, Lcom/sonymobile/home/ui/pageview/PageView;->mPageItems:Lcom/sonymobile/flix/components/Typed$Group;

    invoke-virtual {v3, v0}, Lcom/sonymobile/flix/components/Typed$Group;->getChild(I)Lcom/sonymobile/flix/components/Component;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/home/ui/pageview/PageItemView;

    .line 299
    .local v2, "pageItemView":Lcom/sonymobile/home/ui/pageview/PageItemView;
    invoke-virtual {v2}, Lcom/sonymobile/home/ui/pageview/PageItemView;->getItem()Lcom/sonymobile/home/data/Item;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/home/data/Item;->getUniqueId()J

    move-result-wide v4

    cmp-long v3, p1, v4

    if-nez v3, :cond_0

    .line 303
    .end local v2    # "pageItemView":Lcom/sonymobile/home/ui/pageview/PageItemView;
    :goto_1
    return-object v2

    .line 297
    .restart local v2    # "pageItemView":Lcom/sonymobile/home/ui/pageview/PageItemView;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 303
    .end local v2    # "pageItemView":Lcom/sonymobile/home/ui/pageview/PageItemView;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getNumberOfPageViewItems()I
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lcom/sonymobile/home/ui/pageview/PageView;->mPageItems:Lcom/sonymobile/flix/components/Typed$Group;

    invoke-virtual {v0}, Lcom/sonymobile/flix/components/Typed$Group;->getNbrChildren()I

    move-result v0

    return v0
.end method

.method public getPageIndex()I
    .locals 1

    .prologue
    .line 286
    iget v0, p0, Lcom/sonymobile/home/ui/pageview/PageView;->mIndex:I

    return v0
.end method

.method public getPagePosition()F
    .locals 2

    .prologue
    .line 104
    iget v0, p0, Lcom/sonymobile/home/ui/pageview/PageView;->mIndex:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sonymobile/home/ui/pageview/PageView;->mPositionOffset:F

    add-float/2addr v0, v1

    return v0
.end method

.method public onConfigurationChanged(Lcom/sonymobile/flix/components/Scene;Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "components"    # Lcom/sonymobile/flix/components/Scene;
    .param p2, "configuration"    # Landroid/content/res/Configuration;

    .prologue
    .line 381
    return-void
.end method

.method public onDefocus()V
    .locals 3

    .prologue
    .line 177
    iget-object v2, p0, Lcom/sonymobile/home/ui/pageview/PageView;->mPageItems:Lcom/sonymobile/flix/components/Typed$Group;

    invoke-virtual {v2}, Lcom/sonymobile/flix/components/Typed$Group;->getNbrChildren()I

    move-result v1

    .line 178
    .local v1, "nbrPageItems":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 179
    iget-object v2, p0, Lcom/sonymobile/home/ui/pageview/PageView;->mPageItems:Lcom/sonymobile/flix/components/Typed$Group;

    invoke-virtual {v2, v0}, Lcom/sonymobile/flix/components/Typed$Group;->getChild(I)Lcom/sonymobile/flix/components/Component;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/home/ui/pageview/PageItemView;

    invoke-virtual {v2}, Lcom/sonymobile/home/ui/pageview/PageItemView;->defocus()Z

    .line 178
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 181
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 247
    iget-object v2, p0, Lcom/sonymobile/home/ui/pageview/PageView;->mPageItems:Lcom/sonymobile/flix/components/Typed$Group;

    invoke-virtual {v2}, Lcom/sonymobile/flix/components/Typed$Group;->getNbrChildren()I

    move-result v1

    .line 248
    .local v1, "nbrPageItems":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 249
    iget-object v2, p0, Lcom/sonymobile/home/ui/pageview/PageView;->mPageItems:Lcom/sonymobile/flix/components/Typed$Group;

    invoke-virtual {v2, v0}, Lcom/sonymobile/flix/components/Typed$Group;->getChild(I)Lcom/sonymobile/flix/components/Component;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/home/ui/pageview/PageItemView;

    invoke-virtual {v2}, Lcom/sonymobile/home/ui/pageview/PageItemView;->destroy()Z

    .line 248
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 251
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/home/ui/pageview/PageView;->mPageItems:Lcom/sonymobile/flix/components/Typed$Group;

    invoke-virtual {v2}, Lcom/sonymobile/flix/components/Typed$Group;->clearAllDescendants()V

    .line 252
    return-void
.end method

.method public onDetach()V
    .locals 3

    .prologue
    .line 237
    iget-object v2, p0, Lcom/sonymobile/home/ui/pageview/PageView;->mPageItems:Lcom/sonymobile/flix/components/Typed$Group;

    invoke-virtual {v2}, Lcom/sonymobile/flix/components/Typed$Group;->getNbrChildren()I

    move-result v1

    .line 238
    .local v1, "nbrPageItems":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 239
    iget-object v2, p0, Lcom/sonymobile/home/ui/pageview/PageView;->mPageItems:Lcom/sonymobile/flix/components/Typed$Group;

    invoke-virtual {v2, v0}, Lcom/sonymobile/flix/components/Typed$Group;->getChild(I)Lcom/sonymobile/flix/components/Component;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/home/ui/pageview/PageItemView;

    invoke-virtual {v2}, Lcom/sonymobile/home/ui/pageview/PageItemView;->release()V

    .line 238
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 241
    :cond_0
    return-void
.end method

.method public onDispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 136
    iget-boolean v0, p0, Lcom/sonymobile/home/ui/pageview/PageView;->mOnScreen:Z

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/sonymobile/home/ui/pageview/PageView;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v0, p0, p1}, Lcom/sonymobile/flix/components/Scene;->dispatchHoverEventToChildren(Lcom/sonymobile/flix/components/Component;Landroid/view/MotionEvent;)Z

    move-result v0

    .line 139
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/sonymobile/home/ui/pageview/PageView;->mOnScreen:Z

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/sonymobile/home/ui/pageview/PageView;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v0, p0, p1}, Lcom/sonymobile/flix/components/Scene;->dispatchTouchEventToChildren(Lcom/sonymobile/flix/components/Component;Landroid/view/MotionEvent;)Z

    move-result v0

    .line 130
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onFocus()V
    .locals 3

    .prologue
    .line 161
    iget-object v2, p0, Lcom/sonymobile/home/ui/pageview/PageView;->mPageItems:Lcom/sonymobile/flix/components/Typed$Group;

    invoke-virtual {v2}, Lcom/sonymobile/flix/components/Typed$Group;->getNbrChildren()I

    move-result v1

    .line 162
    .local v1, "nbrPageItems":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 169
    iget-object v2, p0, Lcom/sonymobile/home/ui/pageview/PageView;->mPageItems:Lcom/sonymobile/flix/components/Typed$Group;

    invoke-virtual {v2, v0}, Lcom/sonymobile/flix/components/Typed$Group;->getChild(I)Lcom/sonymobile/flix/components/Component;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/home/ui/pageview/PageItemView;

    invoke-virtual {v2}, Lcom/sonymobile/home/ui/pageview/PageItemView;->focus()Z

    .line 162
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 171
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 187
    iget-object v2, p0, Lcom/sonymobile/home/ui/pageview/PageView;->mPageItems:Lcom/sonymobile/flix/components/Typed$Group;

    invoke-virtual {v2}, Lcom/sonymobile/flix/components/Typed$Group;->getNbrChildren()I

    move-result v1

    .line 188
    .local v1, "nbrPageItems":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 189
    iget-object v2, p0, Lcom/sonymobile/home/ui/pageview/PageView;->mPageItems:Lcom/sonymobile/flix/components/Typed$Group;

    invoke-virtual {v2, v0}, Lcom/sonymobile/flix/components/Typed$Group;->getChild(I)Lcom/sonymobile/flix/components/Component;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/home/ui/pageview/PageItemView;

    invoke-virtual {v2}, Lcom/sonymobile/home/ui/pageview/PageItemView;->pause()Z

    .line 188
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 191
    :cond_0
    return-void
.end method

.method public onRemove()V
    .locals 3

    .prologue
    .line 227
    iget-object v2, p0, Lcom/sonymobile/home/ui/pageview/PageView;->mPageItems:Lcom/sonymobile/flix/components/Typed$Group;

    invoke-virtual {v2}, Lcom/sonymobile/flix/components/Typed$Group;->getNbrChildren()I

    move-result v1

    .line 228
    .local v1, "nbrPageItems":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 229
    iget-object v2, p0, Lcom/sonymobile/home/ui/pageview/PageView;->mPageItems:Lcom/sonymobile/flix/components/Typed$Group;

    invoke-virtual {v2, v0}, Lcom/sonymobile/flix/components/Typed$Group;->getChild(I)Lcom/sonymobile/flix/components/Component;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/home/ui/pageview/PageItemView;

    invoke-virtual {v2}, Lcom/sonymobile/home/ui/pageview/PageItemView;->remove()V

    .line 228
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 231
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 197
    iget-object v2, p0, Lcom/sonymobile/home/ui/pageview/PageView;->mPageItems:Lcom/sonymobile/flix/components/Typed$Group;

    invoke-virtual {v2}, Lcom/sonymobile/flix/components/Typed$Group;->getNbrChildren()I

    move-result v1

    .line 198
    .local v1, "nbrPageItems":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 199
    iget-object v2, p0, Lcom/sonymobile/home/ui/pageview/PageView;->mPageItems:Lcom/sonymobile/flix/components/Typed$Group;

    invoke-virtual {v2, v0}, Lcom/sonymobile/flix/components/Typed$Group;->getChild(I)Lcom/sonymobile/flix/components/Component;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/home/ui/pageview/PageItemView;

    invoke-virtual {v2}, Lcom/sonymobile/home/ui/pageview/PageItemView;->resume()Z

    .line 198
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 201
    :cond_0
    return-void
.end method

.method public onSceneCreated(Lcom/sonymobile/flix/components/Scene;II)V
    .locals 0
    .param p1, "components"    # Lcom/sonymobile/flix/components/Scene;
    .param p2, "i"    # I
    .param p3, "i2"    # I

    .prologue
    .line 367
    return-void
.end method

.method public onSceneDraw(Lcom/sonymobile/flix/components/Scene;Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "components"    # Lcom/sonymobile/flix/components/Scene;
    .param p2, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 377
    return-void
.end method

.method public onSceneSizeChanged(Lcom/sonymobile/flix/components/Scene;IIII)V
    .locals 0
    .param p1, "components"    # Lcom/sonymobile/flix/components/Scene;
    .param p2, "i"    # I
    .param p3, "i2"    # I
    .param p4, "i3"    # I
    .param p5, "i4"    # I

    .prologue
    .line 372
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 217
    iget-object v2, p0, Lcom/sonymobile/home/ui/pageview/PageView;->mPageItems:Lcom/sonymobile/flix/components/Typed$Group;

    invoke-virtual {v2}, Lcom/sonymobile/flix/components/Typed$Group;->getNbrChildren()I

    move-result v1

    .line 218
    .local v1, "nbrPageItems":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 219
    iget-object v2, p0, Lcom/sonymobile/home/ui/pageview/PageView;->mPageItems:Lcom/sonymobile/flix/components/Typed$Group;

    invoke-virtual {v2, v0}, Lcom/sonymobile/flix/components/Typed$Group;->getChild(I)Lcom/sonymobile/flix/components/Component;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/home/ui/pageview/PageItemView;

    invoke-virtual {v2}, Lcom/sonymobile/home/ui/pageview/PageItemView;->start()Z

    .line 218
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 221
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 3

    .prologue
    .line 207
    iget-object v2, p0, Lcom/sonymobile/home/ui/pageview/PageView;->mPageItems:Lcom/sonymobile/flix/components/Typed$Group;

    invoke-virtual {v2}, Lcom/sonymobile/flix/components/Typed$Group;->getNbrChildren()I

    move-result v1

    .line 208
    .local v1, "nbrPageItems":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 209
    iget-object v2, p0, Lcom/sonymobile/home/ui/pageview/PageView;->mPageItems:Lcom/sonymobile/flix/components/Typed$Group;

    invoke-virtual {v2, v0}, Lcom/sonymobile/flix/components/Typed$Group;->getChild(I)Lcom/sonymobile/flix/components/Component;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/home/ui/pageview/PageItemView;

    invoke-virtual {v2}, Lcom/sonymobile/home/ui/pageview/PageItemView;->stop()Z

    .line 208
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 211
    :cond_0
    return-void
.end method

.method public release(Lcom/sonymobile/home/ui/pageview/PageViewAdapter;)V
    .locals 3
    .param p1, "adapter"    # Lcom/sonymobile/home/ui/pageview/PageViewAdapter;

    .prologue
    .line 273
    iget-object v2, p0, Lcom/sonymobile/home/ui/pageview/PageView;->mPageItems:Lcom/sonymobile/flix/components/Typed$Group;

    invoke-virtual {v2}, Lcom/sonymobile/flix/components/Typed$Group;->getNbrChildren()I

    move-result v1

    .line 274
    .local v1, "nbrPageItems":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 275
    iget-object v2, p0, Lcom/sonymobile/home/ui/pageview/PageView;->mPageItems:Lcom/sonymobile/flix/components/Typed$Group;

    invoke-virtual {v2, v0}, Lcom/sonymobile/flix/components/Typed$Group;->getChild(I)Lcom/sonymobile/flix/components/Component;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/home/ui/pageview/PageItemView;

    invoke-interface {p1, v2}, Lcom/sonymobile/home/ui/pageview/PageViewAdapter;->releaseView(Lcom/sonymobile/home/ui/pageview/PageItemView;)V

    .line 274
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 277
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/home/ui/pageview/PageView;->mPageItems:Lcom/sonymobile/flix/components/Typed$Group;

    invoke-virtual {v2}, Lcom/sonymobile/flix/components/Typed$Group;->clearAllDescendants()V

    .line 278
    return-void
.end method

.method public removeAllItems()V
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lcom/sonymobile/home/ui/pageview/PageView;->mPageItems:Lcom/sonymobile/flix/components/Typed$Group;

    invoke-virtual {v0}, Lcom/sonymobile/flix/components/Typed$Group;->clear()V

    .line 339
    return-void
.end method

.method public setContentVisible(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 154
    iget-object v0, p0, Lcom/sonymobile/home/ui/pageview/PageView;->mContent:Lcom/sonymobile/flix/components/Component;

    invoke-virtual {v0, p1}, Lcom/sonymobile/flix/components/Component;->setVisible(Z)V

    .line 155
    return-void
.end method

.method public setOnScreen(Z)V
    .locals 1
    .param p1, "onScreen"    # Z

    .prologue
    .line 114
    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/sonymobile/home/ui/pageview/PageView;->mOnScreen:Z

    if-nez v0, :cond_1

    .line 115
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/home/ui/pageview/PageView;->mOnScreen:Z

    .line 116
    invoke-virtual {p0}, Lcom/sonymobile/home/ui/pageview/PageView;->onStart()V

    .line 117
    invoke-virtual {p0}, Lcom/sonymobile/home/ui/pageview/PageView;->onResume()V

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/sonymobile/home/ui/pageview/PageView;->mOnScreen:Z

    if-eqz v0, :cond_0

    .line 119
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/home/ui/pageview/PageView;->mOnScreen:Z

    .line 120
    invoke-virtual {p0}, Lcom/sonymobile/home/ui/pageview/PageView;->onPause()V

    .line 121
    invoke-virtual {p0}, Lcom/sonymobile/home/ui/pageview/PageView;->onStop()V

    goto :goto_0
.end method

.method public setPageItemViewAddedListener(Lcom/sonymobile/home/ui/pageview/PageView$PageItemViewAddedListener;)V
    .locals 0
    .param p1, "pageItemViewAddedListener"    # Lcom/sonymobile/home/ui/pageview/PageView$PageItemViewAddedListener;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/sonymobile/home/ui/pageview/PageView;->mPageItemViewAddedListener:Lcom/sonymobile/home/ui/pageview/PageView$PageItemViewAddedListener;

    .line 86
    return-void
.end method

.method public setPagePositionOffset(F)V
    .locals 0
    .param p1, "positionOffset"    # F

    .prologue
    .line 94
    iput p1, p0, Lcom/sonymobile/home/ui/pageview/PageView;->mPositionOffset:F

    .line 95
    return-void
.end method
