.class public Lcom/sonymobile/home/presenter/DropHintHelper;
.super Ljava/lang/Object;
.source "DropHintHelper.java"


# instance fields
.field private mDropHintBitmap:Landroid/graphics/Bitmap;

.field private final mHintAnimListener:Lcom/sonymobile/home/desktop/HintView$HintAnimationListener;

.field private mHintHeight:I

.field private mHintImageX:F

.field private mHintImageY:F

.field private final mHintLocation:Lcom/sonymobile/home/data/ItemLocation;

.field private final mHintViewPool:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/home/desktop/HintView;",
            ">;"
        }
    .end annotation
.end field

.field private final mHintViews:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/sonymobile/home/data/ItemLocation;",
            "Lcom/sonymobile/home/desktop/HintView;",
            ">;"
        }
    .end annotation
.end field

.field private mHintWidth:I

.field private final mModel:Lcom/sonymobile/home/model/Model;

.field private mPageViewGroup:Lcom/sonymobile/home/ui/pageview/PageViewGroup;

.field private final mPageViewName:Ljava/lang/String;

.field private mRecycleViews:Z

.field private mScene:Lcom/sonymobile/flix/components/Scene;

.field private final mViewFactory:Lcom/sonymobile/home/ui/pageview/PageItemViewFactory;


# direct methods
.method public constructor <init>(Lcom/sonymobile/home/model/Model;Lcom/sonymobile/home/ui/pageview/PageItemViewFactory;Ljava/lang/String;)V
    .locals 3
    .param p1, "model"    # Lcom/sonymobile/home/model/Model;
    .param p2, "viewFactory"    # Lcom/sonymobile/home/ui/pageview/PageItemViewFactory;
    .param p3, "pageViewName"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Lcom/sonymobile/home/data/ItemLocation;

    const/high16 v1, -0x80000000

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/home/data/ItemLocation;-><init>(II)V

    iput-object v0, p0, Lcom/sonymobile/home/presenter/DropHintHelper;->mHintLocation:Lcom/sonymobile/home/data/ItemLocation;

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/home/presenter/DropHintHelper;->mHintViews:Ljava/util/HashMap;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/home/presenter/DropHintHelper;->mHintViewPool:Ljava/util/ArrayList;

    .line 61
    new-instance v0, Lcom/sonymobile/home/presenter/DropHintHelper$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/home/presenter/DropHintHelper$1;-><init>(Lcom/sonymobile/home/presenter/DropHintHelper;)V

    iput-object v0, p0, Lcom/sonymobile/home/presenter/DropHintHelper;->mHintAnimListener:Lcom/sonymobile/home/desktop/HintView$HintAnimationListener;

    .line 72
    iput-object p1, p0, Lcom/sonymobile/home/presenter/DropHintHelper;->mModel:Lcom/sonymobile/home/model/Model;

    .line 73
    iput-object p2, p0, Lcom/sonymobile/home/presenter/DropHintHelper;->mViewFactory:Lcom/sonymobile/home/ui/pageview/PageItemViewFactory;

    .line 74
    iput-object p3, p0, Lcom/sonymobile/home/presenter/DropHintHelper;->mPageViewName:Ljava/lang/String;

    .line 75
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/home/presenter/DropHintHelper;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/presenter/DropHintHelper;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/sonymobile/home/presenter/DropHintHelper;->mHintViews:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonymobile/home/presenter/DropHintHelper;Lcom/sonymobile/home/desktop/HintView;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/presenter/DropHintHelper;
    .param p1, "x1"    # Lcom/sonymobile/home/desktop/HintView;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/sonymobile/home/presenter/DropHintHelper;->recycleView(Lcom/sonymobile/home/desktop/HintView;)V

    return-void
.end method

.method private calculateIconPosition(Lcom/sonymobile/home/data/Item;)V
    .locals 9
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    const/4 v8, 0x0

    .line 113
    invoke-virtual {p1}, Lcom/sonymobile/home/data/Item;->getPageViewName()Ljava/lang/String;

    move-result-object v3

    .line 114
    .local v3, "savedPageViewName":Ljava/lang/String;
    iget-object v4, p0, Lcom/sonymobile/home/presenter/DropHintHelper;->mPageViewName:Ljava/lang/String;

    invoke-virtual {p1, v4}, Lcom/sonymobile/home/data/Item;->setPageViewName(Ljava/lang/String;)V

    .line 115
    iget-object v4, p0, Lcom/sonymobile/home/presenter/DropHintHelper;->mViewFactory:Lcom/sonymobile/home/ui/pageview/PageItemViewFactory;

    iget-object v5, p0, Lcom/sonymobile/home/presenter/DropHintHelper;->mModel:Lcom/sonymobile/home/model/Model;

    invoke-virtual {v5, p1}, Lcom/sonymobile/home/model/Model;->getResource(Lcom/sonymobile/home/data/Item;)Lcom/sonymobile/home/model/ResourceItem;

    move-result-object v5

    iget-object v6, p0, Lcom/sonymobile/home/presenter/DropHintHelper;->mScene:Lcom/sonymobile/flix/components/Scene;

    const/4 v7, 0x0

    invoke-virtual {v4, p1, v5, v6, v7}, Lcom/sonymobile/home/ui/pageview/PageItemViewFactory;->createPageItemView(Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/model/ResourceItem;Lcom/sonymobile/flix/components/Scene;Lcom/sonymobile/home/ui/pageview/PageItemViewListener;)Lcom/sonymobile/home/ui/pageview/PageItemView;

    move-result-object v2

    .line 117
    .local v2, "itemViewLayout":Lcom/sonymobile/home/ui/pageview/PageItemView;
    invoke-virtual {p1, v3}, Lcom/sonymobile/home/data/Item;->setPageViewName(Ljava/lang/String;)V

    .line 118
    instance-of v4, v2, Lcom/sonymobile/home/presenter/view/IconLabelView;

    if-eqz v4, :cond_0

    move-object v1, v2

    .line 119
    check-cast v1, Lcom/sonymobile/home/presenter/view/IconLabelView;

    .line 120
    .local v1, "iconLabelView":Lcom/sonymobile/home/presenter/view/IconLabelView;
    const-string v4, ""

    invoke-virtual {v1, v4}, Lcom/sonymobile/home/presenter/view/IconLabelView;->setLabel(Ljava/lang/String;)V

    .line 121
    iget v4, p0, Lcom/sonymobile/home/presenter/DropHintHelper;->mHintWidth:I

    int-to-float v4, v4

    iget v5, p0, Lcom/sonymobile/home/presenter/DropHintHelper;->mHintHeight:I

    int-to-float v5, v5

    invoke-virtual {v1, v4, v5}, Lcom/sonymobile/home/presenter/view/IconLabelView;->setSize(FF)V

    .line 122
    iget v4, p0, Lcom/sonymobile/home/presenter/DropHintHelper;->mHintWidth:I

    iget v5, p0, Lcom/sonymobile/home/presenter/DropHintHelper;->mHintHeight:I

    invoke-virtual {v1, v4, v5}, Lcom/sonymobile/home/presenter/view/IconLabelView;->onLayout(II)V

    .line 123
    invoke-virtual {v1}, Lcom/sonymobile/home/presenter/view/IconLabelView;->getImage()Lcom/sonymobile/flix/components/Image;

    move-result-object v0

    .line 124
    .local v0, "icon":Lcom/sonymobile/flix/components/Image;
    invoke-virtual {v0}, Lcom/sonymobile/flix/components/Image;->getX()F

    move-result v4

    iput v4, p0, Lcom/sonymobile/home/presenter/DropHintHelper;->mHintImageX:F

    .line 125
    invoke-virtual {v0}, Lcom/sonymobile/flix/components/Image;->getY()F

    move-result v4

    iput v4, p0, Lcom/sonymobile/home/presenter/DropHintHelper;->mHintImageY:F

    .line 130
    .end local v0    # "icon":Lcom/sonymobile/flix/components/Image;
    .end local v1    # "iconLabelView":Lcom/sonymobile/home/presenter/view/IconLabelView;
    :goto_0
    return-void

    .line 127
    :cond_0
    iput v8, p0, Lcom/sonymobile/home/presenter/DropHintHelper;->mHintImageX:F

    .line 128
    iput v8, p0, Lcom/sonymobile/home/presenter/DropHintHelper;->mHintImageY:F

    goto :goto_0
.end method

.method private isHintShowing(Lcom/sonymobile/home/desktop/HintView;)Z
    .locals 1
    .param p1, "hintView"    # Lcom/sonymobile/home/desktop/HintView;

    .prologue
    .line 181
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/sonymobile/home/desktop/HintView;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private obtainView()Lcom/sonymobile/home/desktop/HintView;
    .locals 5

    .prologue
    .line 220
    iget-object v2, p0, Lcom/sonymobile/home/presenter/DropHintHelper;->mHintViewPool:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 221
    .local v1, "size":I
    if-lez v1, :cond_0

    .line 222
    iget-object v2, p0, Lcom/sonymobile/home/presenter/DropHintHelper;->mHintViewPool:Ljava/util/ArrayList;

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/home/desktop/HintView;

    .line 227
    .local v0, "hintView":Lcom/sonymobile/home/desktop/HintView;
    :goto_0
    return-object v0

    .line 224
    .end local v0    # "hintView":Lcom/sonymobile/home/desktop/HintView;
    :cond_0
    new-instance v0, Lcom/sonymobile/home/desktop/HintView;

    iget-object v2, p0, Lcom/sonymobile/home/presenter/DropHintHelper;->mScene:Lcom/sonymobile/flix/components/Scene;

    iget v3, p0, Lcom/sonymobile/home/presenter/DropHintHelper;->mHintWidth:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sonymobile/home/presenter/DropHintHelper;->mHintHeight:I

    int-to-float v4, v4

    invoke-direct {v0, v2, v3, v4}, Lcom/sonymobile/home/desktop/HintView;-><init>(Lcom/sonymobile/flix/components/Scene;FF)V

    .restart local v0    # "hintView":Lcom/sonymobile/home/desktop/HintView;
    goto :goto_0
.end method

.method private recycleView(Lcom/sonymobile/home/desktop/HintView;)V
    .locals 1
    .param p1, "hintView"    # Lcom/sonymobile/home/desktop/HintView;

    .prologue
    .line 231
    invoke-virtual {p1}, Lcom/sonymobile/home/desktop/HintView;->reset()V

    .line 232
    invoke-virtual {p1}, Lcom/sonymobile/home/desktop/HintView;->removeFromScene()Z

    .line 233
    iget-boolean v0, p0, Lcom/sonymobile/home/presenter/DropHintHelper;->mRecycleViews:Z

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/sonymobile/home/presenter/DropHintHelper;->mHintViewPool:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    :cond_0
    return-void
.end method


# virtual methods
.method public hideHint(Lcom/sonymobile/home/data/ItemLocation;)V
    .locals 2
    .param p1, "location"    # Lcom/sonymobile/home/data/ItemLocation;

    .prologue
    .line 190
    iget-object v1, p0, Lcom/sonymobile/home/presenter/DropHintHelper;->mHintViews:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/home/desktop/HintView;

    .line 191
    .local v0, "previousHintView":Lcom/sonymobile/home/desktop/HintView;
    if-eqz v0, :cond_0

    .line 192
    invoke-virtual {v0}, Lcom/sonymobile/home/desktop/HintView;->animateOut()V

    .line 194
    :cond_0
    return-void
.end method

.method public hint(Lcom/sonymobile/home/data/ItemLocation;FFFF)V
    .locals 4
    .param p1, "location"    # Lcom/sonymobile/home/data/ItemLocation;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "pivotX"    # F
    .param p5, "pivotY"    # F

    .prologue
    .line 144
    iget-object v2, p0, Lcom/sonymobile/home/presenter/DropHintHelper;->mHintViews:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/desktop/HintView;

    .line 145
    .local v1, "hintView":Lcom/sonymobile/home/desktop/HintView;
    if-nez v1, :cond_0

    .line 146
    iget-object v2, p0, Lcom/sonymobile/home/presenter/DropHintHelper;->mPageViewGroup:Lcom/sonymobile/home/ui/pageview/PageViewGroup;

    invoke-virtual {v2}, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->getCurrentPageView()Lcom/sonymobile/home/ui/pageview/PageView;

    move-result-object v0

    .line 147
    .local v0, "currentPageView":Lcom/sonymobile/home/ui/pageview/PageView;
    if-eqz v0, :cond_0

    .line 148
    invoke-direct {p0}, Lcom/sonymobile/home/presenter/DropHintHelper;->obtainView()Lcom/sonymobile/home/desktop/HintView;

    move-result-object v1

    .line 149
    iget-object v2, p0, Lcom/sonymobile/home/presenter/DropHintHelper;->mDropHintBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Lcom/sonymobile/home/desktop/HintView;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 150
    iget-object v2, p0, Lcom/sonymobile/home/presenter/DropHintHelper;->mHintAnimListener:Lcom/sonymobile/home/desktop/HintView$HintAnimationListener;

    invoke-virtual {v1, v2}, Lcom/sonymobile/home/desktop/HintView;->setAnimationListener(Lcom/sonymobile/home/desktop/HintView$HintAnimationListener;)V

    .line 151
    invoke-virtual {v1}, Lcom/sonymobile/home/desktop/HintView;->getImage()Lcom/sonymobile/flix/components/Component;

    move-result-object v2

    iget v3, p0, Lcom/sonymobile/home/presenter/DropHintHelper;->mHintImageX:F

    invoke-virtual {v2, v3}, Lcom/sonymobile/flix/components/Component;->setX(F)V

    .line 152
    invoke-virtual {v1}, Lcom/sonymobile/home/desktop/HintView;->getImage()Lcom/sonymobile/flix/components/Component;

    move-result-object v2

    iget v3, p0, Lcom/sonymobile/home/presenter/DropHintHelper;->mHintImageY:F

    invoke-virtual {v2, v3}, Lcom/sonymobile/flix/components/Component;->setY(F)V

    .line 153
    invoke-virtual {v0, v1}, Lcom/sonymobile/home/ui/pageview/PageView;->addChild(Lcom/sonymobile/flix/components/Component;)V

    .line 154
    iget-object v2, p0, Lcom/sonymobile/home/presenter/DropHintHelper;->mHintViews:Ljava/util/HashMap;

    invoke-static {p1}, Lcom/sonymobile/home/data/ItemLocation;->copy(Lcom/sonymobile/home/data/ItemLocation;)Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    .end local v0    # "currentPageView":Lcom/sonymobile/home/ui/pageview/PageView;
    :cond_0
    if-eqz v1, :cond_1

    .line 159
    invoke-virtual {v1, p2, p3, p4, p5}, Lcom/sonymobile/home/desktop/HintView;->setPosition(FFFF)V

    .line 160
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sonymobile/home/desktop/HintView;->setVisible(Z)V

    .line 161
    invoke-virtual {v1}, Lcom/sonymobile/home/desktop/HintView;->animateIn()V

    .line 162
    iget-object v2, p0, Lcom/sonymobile/home/presenter/DropHintHelper;->mHintLocation:Lcom/sonymobile/home/data/ItemLocation;

    invoke-virtual {p1, v2}, Lcom/sonymobile/home/data/ItemLocation;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 164
    iget-object v2, p0, Lcom/sonymobile/home/presenter/DropHintHelper;->mHintLocation:Lcom/sonymobile/home/data/ItemLocation;

    invoke-virtual {p0, v2}, Lcom/sonymobile/home/presenter/DropHintHelper;->hideHint(Lcom/sonymobile/home/data/ItemLocation;)V

    .line 165
    iget-object v2, p0, Lcom/sonymobile/home/presenter/DropHintHelper;->mHintLocation:Lcom/sonymobile/home/data/ItemLocation;

    invoke-virtual {v2, p1}, Lcom/sonymobile/home/data/ItemLocation;->set(Lcom/sonymobile/home/data/ItemLocation;)V

    .line 168
    :cond_1
    return-void
.end method

.method public isHintingAtLocation(Lcom/sonymobile/home/data/ItemLocation;)Z
    .locals 1
    .param p1, "location"    # Lcom/sonymobile/home/data/ItemLocation;

    .prologue
    .line 177
    iget-object v0, p0, Lcom/sonymobile/home/presenter/DropHintHelper;->mHintViews:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/home/desktop/HintView;

    invoke-direct {p0, v0}, Lcom/sonymobile/home/presenter/DropHintHelper;->isHintShowing(Lcom/sonymobile/home/desktop/HintView;)Z

    move-result v0

    return v0
.end method

.method public setView(Lcom/sonymobile/home/ui/pageview/PageViewGroup;)V
    .locals 1
    .param p1, "pageViewGroup"    # Lcom/sonymobile/home/ui/pageview/PageViewGroup;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/sonymobile/home/presenter/DropHintHelper;->mPageViewGroup:Lcom/sonymobile/home/ui/pageview/PageViewGroup;

    .line 79
    invoke-virtual {p1}, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->getScene()Lcom/sonymobile/flix/components/Scene;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/home/presenter/DropHintHelper;->mScene:Lcom/sonymobile/flix/components/Scene;

    .line 80
    return-void
.end method

.method public setupHint(Lcom/sonymobile/home/transfer/Transferable;II)V
    .locals 2
    .param p1, "transferable"    # Lcom/sonymobile/home/transfer/Transferable;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v1, 0x0

    .line 90
    iput p2, p0, Lcom/sonymobile/home/presenter/DropHintHelper;->mHintWidth:I

    .line 91
    iput p3, p0, Lcom/sonymobile/home/presenter/DropHintHelper;->mHintHeight:I

    .line 92
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/home/presenter/DropHintHelper;->mRecycleViews:Z

    .line 94
    invoke-interface {p1}, Lcom/sonymobile/home/transfer/Transferable;->bitmapContainsIconOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    invoke-interface {p1}, Lcom/sonymobile/home/transfer/Transferable;->getItem()Lcom/sonymobile/home/data/Item;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonymobile/home/presenter/DropHintHelper;->calculateIconPosition(Lcom/sonymobile/home/data/Item;)V

    .line 103
    :goto_0
    invoke-interface {p1}, Lcom/sonymobile/home/transfer/Transferable;->getDropHintBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/home/presenter/DropHintHelper;->mDropHintBitmap:Landroid/graphics/Bitmap;

    .line 104
    return-void

    .line 99
    :cond_0
    iput v1, p0, Lcom/sonymobile/home/presenter/DropHintHelper;->mHintImageX:F

    .line 100
    iput v1, p0, Lcom/sonymobile/home/presenter/DropHintHelper;->mHintImageY:F

    goto :goto_0
.end method

.method public stopHinting(Z)V
    .locals 4
    .param p1, "animateTransition"    # Z

    .prologue
    const/4 v3, 0x0

    .line 204
    iget-object v2, p0, Lcom/sonymobile/home/presenter/DropHintHelper;->mHintViews:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/desktop/HintView;

    .line 205
    .local v1, "view":Lcom/sonymobile/home/desktop/HintView;
    if-eqz p1, :cond_0

    .line 206
    invoke-virtual {v1}, Lcom/sonymobile/home/desktop/HintView;->animateOut()V

    goto :goto_0

    .line 208
    :cond_0
    invoke-virtual {v1, v3}, Lcom/sonymobile/home/desktop/HintView;->setVisible(Z)V

    goto :goto_0

    .line 211
    .end local v1    # "view":Lcom/sonymobile/home/desktop/HintView;
    :cond_1
    iput-boolean v3, p0, Lcom/sonymobile/home/presenter/DropHintHelper;->mRecycleViews:Z

    .line 212
    iget-object v2, p0, Lcom/sonymobile/home/presenter/DropHintHelper;->mHintViews:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 213
    iget-object v2, p0, Lcom/sonymobile/home/presenter/DropHintHelper;->mHintViewPool:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 214
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sonymobile/home/presenter/DropHintHelper;->mDropHintBitmap:Landroid/graphics/Bitmap;

    .line 215
    return-void
.end method
