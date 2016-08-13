.class public Lcom/sonymobile/home/desktop/ExpandBoundsPageView;
.super Lcom/sonymobile/home/desktop/BackplatePageView;
.source "ExpandBoundsPageView.java"

# interfaces
.implements Lcom/sonymobile/home/ui/pageview/PageViewTouchAreaListener;


# instance fields
.field private mSelectionListener:Lcom/sonymobile/home/ui/pageview/PageViewSelectionListener;

.field private final mTouchArea:Lcom/sonymobile/home/ui/pageview/PageViewTouchArea;


# direct methods
.method public constructor <init>(Lcom/sonymobile/flix/components/Scene;IFFF)V
    .locals 6
    .param p1, "scene"    # Lcom/sonymobile/flix/components/Scene;
    .param p2, "pageIndex"    # I
    .param p3, "backplateWidth"    # F
    .param p4, "backplateHeight"    # F
    .param p5, "backplateTopOffset"    # F

    .prologue
    const/high16 v1, 0x3f000000    # 0.5f

    .line 46
    new-instance v2, Lcom/sonymobile/flix/components/NinePatchImage;

    const v4, 0x7f020060

    invoke-direct {v2, p1, v4}, Lcom/sonymobile/flix/components/NinePatchImage;-><init>(Lcom/sonymobile/flix/components/Scene;I)V

    invoke-direct {p0, p1, p2, v2}, Lcom/sonymobile/home/desktop/BackplatePageView;-><init>(Lcom/sonymobile/flix/components/Scene;ILcom/sonymobile/flix/components/NinePatchImage;)V

    .line 48
    new-instance v2, Lcom/sonymobile/home/ui/pageview/PageViewTouchArea;

    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/ExpandBoundsPageView;->getScene()Lcom/sonymobile/flix/components/Scene;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/sonymobile/home/ui/pageview/PageViewTouchArea;-><init>(Lcom/sonymobile/flix/components/Scene;)V

    iput-object v2, p0, Lcom/sonymobile/home/desktop/ExpandBoundsPageView;->mTouchArea:Lcom/sonymobile/home/ui/pageview/PageViewTouchArea;

    .line 49
    iget-object v2, p0, Lcom/sonymobile/home/desktop/ExpandBoundsPageView;->mTouchArea:Lcom/sonymobile/home/ui/pageview/PageViewTouchArea;

    const-string v4, "DesktopPageView touch area"

    invoke-virtual {v2, v4}, Lcom/sonymobile/home/ui/pageview/PageViewTouchArea;->setName(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/ExpandBoundsPageView;->getContent()Lcom/sonymobile/flix/components/Component;

    move-result-object v2

    iget-object v4, p0, Lcom/sonymobile/home/desktop/ExpandBoundsPageView;->mTouchArea:Lcom/sonymobile/home/ui/pageview/PageViewTouchArea;

    invoke-virtual {v2, v4}, Lcom/sonymobile/flix/components/Component;->addChild(Lcom/sonymobile/flix/components/Component;)V

    .line 52
    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/ExpandBoundsPageView;->getBackplate()Lcom/sonymobile/flix/components/NinePatchImage;

    move-result-object v3

    .line 53
    .local v3, "backplate":Lcom/sonymobile/flix/components/NinePatchImage;
    const-string v2, "Expand bounds page view"

    invoke-virtual {v3, v2}, Lcom/sonymobile/flix/components/NinePatchImage;->setName(Ljava/lang/String;)V

    .line 54
    invoke-virtual {v3, p3, p4}, Lcom/sonymobile/flix/components/NinePatchImage;->setContentSize(FF)V

    .line 55
    const/4 v2, 0x0

    invoke-virtual {v3, v2, p5}, Lcom/sonymobile/flix/components/NinePatchImage;->move(FF)V

    .line 57
    new-instance v0, Lcom/sonymobile/home/desktop/AddPageButton;

    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/ExpandBoundsPageView;->getScene()Lcom/sonymobile/flix/components/Scene;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/sonymobile/home/desktop/AddPageButton;-><init>(Lcom/sonymobile/flix/components/Scene;)V

    .line 60
    .local v0, "addPageButton":Lcom/sonymobile/home/desktop/AddPageButton;
    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/ExpandBoundsPageView;->getContent()Lcom/sonymobile/flix/components/Component;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/sonymobile/flix/components/Component;->addChild(Lcom/sonymobile/flix/components/Component;)V

    .line 62
    new-instance v2, Lcom/sonymobile/home/desktop/ExpandBoundsPageView$1;

    invoke-direct {v2, p0}, Lcom/sonymobile/home/desktop/ExpandBoundsPageView$1;-><init>(Lcom/sonymobile/home/desktop/ExpandBoundsPageView;)V

    invoke-virtual {v0, v2}, Lcom/sonymobile/home/desktop/AddPageButton;->setListener(Lcom/sonymobile/flix/components/ButtonListener;)V

    move v2, v1

    move v4, v1

    move v5, v1

    .line 71
    invoke-static/range {v0 .. v5}, Lcom/sonymobile/flix/components/util/Layouter;->place(Lcom/sonymobile/flix/components/Component;FFLcom/sonymobile/flix/components/Component;FF)V

    .line 72
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/home/desktop/ExpandBoundsPageView;)Lcom/sonymobile/home/ui/pageview/PageViewSelectionListener;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/ExpandBoundsPageView;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/sonymobile/home/desktop/ExpandBoundsPageView;->mSelectionListener:Lcom/sonymobile/home/ui/pageview/PageViewSelectionListener;

    return-object v0
.end method


# virtual methods
.method public onClick(FFFF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "rawX"    # F
    .param p4, "rawY"    # F

    .prologue
    .line 116
    iget-object v0, p0, Lcom/sonymobile/home/desktop/ExpandBoundsPageView;->mSelectionListener:Lcom/sonymobile/home/ui/pageview/PageViewSelectionListener;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/sonymobile/home/desktop/ExpandBoundsPageView;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v0}, Lcom/sonymobile/flix/components/Scene;->getAccessibility()Lcom/sonymobile/flix/components/accessibility/Accessibility;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/accessibility/Accessibility;->performAction(I)V

    .line 118
    iget-object v0, p0, Lcom/sonymobile/home/desktop/ExpandBoundsPageView;->mSelectionListener:Lcom/sonymobile/home/ui/pageview/PageViewSelectionListener;

    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/ExpandBoundsPageView;->getPageIndex()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sonymobile/home/ui/pageview/PageViewSelectionListener;->onPageViewSelected(I)V

    .line 120
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 136
    invoke-super {p0}, Lcom/sonymobile/home/desktop/BackplatePageView;->onDestroy()V

    .line 137
    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/ExpandBoundsPageView;->removePageViewSelectionListener()V

    .line 138
    return-void
.end method

.method public onLongPress(FFFF)Z
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "rawX"    # F
    .param p4, "rawY"    # F

    .prologue
    .line 108
    iget-object v0, p0, Lcom/sonymobile/home/desktop/ExpandBoundsPageView;->mSelectionListener:Lcom/sonymobile/home/ui/pageview/PageViewSelectionListener;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/sonymobile/home/desktop/ExpandBoundsPageView;->mSelectionListener:Lcom/sonymobile/home/ui/pageview/PageViewSelectionListener;

    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/ExpandBoundsPageView;->getPageIndex()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sonymobile/home/ui/pageview/PageViewSelectionListener;->onPageViewSelected(I)V

    .line 111
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onRemovedFrom(Lcom/sonymobile/flix/components/Component;)V
    .locals 0
    .param p1, "parent"    # Lcom/sonymobile/flix/components/Component;

    .prologue
    .line 96
    invoke-super {p0, p1}, Lcom/sonymobile/home/desktop/BackplatePageView;->onRemovedFrom(Lcom/sonymobile/flix/components/Component;)V

    .line 97
    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/ExpandBoundsPageView;->removePageViewSelectionListener()V

    .line 98
    return-void
.end method

.method public onSecondaryClick(FFFF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "rawX"    # F
    .param p4, "rawY"    # F

    .prologue
    .line 125
    return-void
.end method

.method public release(Lcom/sonymobile/home/ui/pageview/PageViewAdapter;)V
    .locals 2
    .param p1, "adapter"    # Lcom/sonymobile/home/ui/pageview/PageViewAdapter;

    .prologue
    .line 129
    invoke-super {p0, p1}, Lcom/sonymobile/home/desktop/BackplatePageView;->release(Lcom/sonymobile/home/ui/pageview/PageViewAdapter;)V

    .line 130
    iget-object v0, p0, Lcom/sonymobile/home/desktop/ExpandBoundsPageView;->mTouchArea:Lcom/sonymobile/home/ui/pageview/PageViewTouchArea;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/ui/pageview/PageViewTouchArea;->setTouchListener(Lcom/sonymobile/home/ui/pageview/PageViewTouchAreaListener;)V

    .line 131
    iget-object v0, p0, Lcom/sonymobile/home/desktop/ExpandBoundsPageView;->mTouchArea:Lcom/sonymobile/home/ui/pageview/PageViewTouchArea;

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/desktop/ExpandBoundsPageView;->removeChild(Lcom/sonymobile/flix/components/Component;)I

    .line 132
    return-void
.end method

.method public removePageViewSelectionListener()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 90
    iput-object v1, p0, Lcom/sonymobile/home/desktop/ExpandBoundsPageView;->mSelectionListener:Lcom/sonymobile/home/ui/pageview/PageViewSelectionListener;

    .line 91
    iget-object v0, p0, Lcom/sonymobile/home/desktop/ExpandBoundsPageView;->mTouchArea:Lcom/sonymobile/home/ui/pageview/PageViewTouchArea;

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/ui/pageview/PageViewTouchArea;->setTouchListener(Lcom/sonymobile/home/ui/pageview/PageViewTouchAreaListener;)V

    .line 92
    return-void
.end method

.method public setPageViewSelectionListener(Lcom/sonymobile/home/ui/pageview/PageViewSelectionListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sonymobile/home/ui/pageview/PageViewSelectionListener;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/sonymobile/home/desktop/ExpandBoundsPageView;->mSelectionListener:Lcom/sonymobile/home/ui/pageview/PageViewSelectionListener;

    .line 81
    iget-object v0, p0, Lcom/sonymobile/home/desktop/ExpandBoundsPageView;->mSelectionListener:Lcom/sonymobile/home/ui/pageview/PageViewSelectionListener;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/sonymobile/home/desktop/ExpandBoundsPageView;->mTouchArea:Lcom/sonymobile/home/ui/pageview/PageViewTouchArea;

    invoke-virtual {v0, p0}, Lcom/sonymobile/home/ui/pageview/PageViewTouchArea;->setTouchListener(Lcom/sonymobile/home/ui/pageview/PageViewTouchAreaListener;)V

    .line 84
    :cond_0
    return-void
.end method

.method public setSize(FF)V
    .locals 1
    .param p1, "width"    # F
    .param p2, "height"    # F

    .prologue
    .line 102
    invoke-super {p0, p1, p2}, Lcom/sonymobile/home/desktop/BackplatePageView;->setSize(FF)V

    .line 103
    iget-object v0, p0, Lcom/sonymobile/home/desktop/ExpandBoundsPageView;->mTouchArea:Lcom/sonymobile/home/ui/pageview/PageViewTouchArea;

    invoke-virtual {v0, p1, p2}, Lcom/sonymobile/home/ui/pageview/PageViewTouchArea;->setSize(FF)V

    .line 104
    return-void
.end method
