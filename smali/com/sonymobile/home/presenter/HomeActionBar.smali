.class public abstract Lcom/sonymobile/home/presenter/HomeActionBar;
.super Lcom/sonymobile/flix/components/Component;
.source "HomeActionBar.java"

# interfaces
.implements Lcom/sonymobile/flix/components/Scene$Touchable$Dispatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/home/presenter/HomeActionBar$ActionBarButton;,
        Lcom/sonymobile/home/presenter/HomeActionBar$ActionButtonListener;
    }
.end annotation


# instance fields
.field private mActionBarAnimation:Lcom/sonymobile/flix/components/util/ComponentAnimation;

.field protected mActionBarHeight:F

.field protected mActionBarIconHorizontalPadding:I

.field private mBackButtonListener:Lcom/sonymobile/home/presenter/HomeActionBar$ActionButtonListener;

.field protected final mContainer:Lcom/sonymobile/flix/components/Component;

.field protected mGridWidth:F

.field protected mOptionsButton:Lcom/sonymobile/home/presenter/HomeActionBar$ActionBarButton;

.field private mOptionsButtonListener:Lcom/sonymobile/home/presenter/HomeActionBar$ActionButtonListener;

.field private mOptionsMenuAnchorView:Landroid/view/View;

.field protected mOptionsMenuAnchorViewWrapper:Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;

.field private mOptionsMenuId:I

.field private mPressedColor:I

.field protected mRtlLanguage:Z

.field private mShowAnimationDelay:J

.field private mShowing:Z

.field protected mSideMargin:F

.field private mUseVerticalMode:Z


# direct methods
.method public constructor <init>(Lcom/sonymobile/flix/components/Scene;)V
    .locals 1
    .param p1, "scene"    # Lcom/sonymobile/flix/components/Scene;

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/sonymobile/flix/components/Component;-><init>(Lcom/sonymobile/flix/components/Scene;)V

    .line 107
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/home/presenter/HomeActionBar;->mRtlLanguage:Z

    .line 117
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/home/presenter/HomeActionBar;->mShowing:Z

    .line 118
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/presenter/HomeActionBar;->setCameraProjection(I)V

    .line 120
    invoke-virtual {p0}, Lcom/sonymobile/home/presenter/HomeActionBar;->updateResourceValues()V

    .line 122
    new-instance v0, Lcom/sonymobile/flix/components/Component;

    invoke-direct {v0, p1}, Lcom/sonymobile/flix/components/Component;-><init>(Lcom/sonymobile/flix/components/Scene;)V

    iput-object v0, p0, Lcom/sonymobile/home/presenter/HomeActionBar;->mContainer:Lcom/sonymobile/flix/components/Component;

    .line 123
    iget-object v0, p0, Lcom/sonymobile/home/presenter/HomeActionBar;->mContainer:Lcom/sonymobile/flix/components/Component;

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/presenter/HomeActionBar;->addChild(Lcom/sonymobile/flix/components/Component;)V

    .line 124
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/home/presenter/HomeActionBar;)Lcom/sonymobile/home/presenter/HomeActionBar$ActionButtonListener;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/presenter/HomeActionBar;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sonymobile/home/presenter/HomeActionBar;->mOptionsButtonListener:Lcom/sonymobile/home/presenter/HomeActionBar$ActionButtonListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonymobile/home/presenter/HomeActionBar;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/presenter/HomeActionBar;

    .prologue
    .line 35
    iget v0, p0, Lcom/sonymobile/home/presenter/HomeActionBar;->mPressedColor:I

    return v0
.end method


# virtual methods
.method protected varargs alignMirroringForAssets([Lcom/sonymobile/flix/components/Component;)V
    .locals 6
    .param p1, "components"    # [Lcom/sonymobile/flix/components/Component;

    .prologue
    .line 213
    iget-boolean v5, p0, Lcom/sonymobile/home/presenter/HomeActionBar;->mRtlLanguage:Z

    if-eqz v5, :cond_0

    const/high16 v4, -0x40800000    # -1.0f

    .line 214
    .local v4, "xScaling":F
    :goto_0
    move-object v0, p1

    .local v0, "arr$":[Lcom/sonymobile/flix/components/Component;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 215
    .local v1, "component":Lcom/sonymobile/flix/components/Component;
    invoke-virtual {v1}, Lcom/sonymobile/flix/components/Component;->getScalingY()F

    move-result v5

    invoke-virtual {v1, v4, v5}, Lcom/sonymobile/flix/components/Component;->setScaling(FF)V

    .line 214
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 213
    .end local v0    # "arr$":[Lcom/sonymobile/flix/components/Component;
    .end local v1    # "component":Lcom/sonymobile/flix/components/Component;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "xScaling":F
    :cond_0
    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_0

    .line 217
    .restart local v0    # "arr$":[Lcom/sonymobile/flix/components/Component;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    .restart local v4    # "xScaling":F
    :cond_1
    return-void
.end method

.method protected createOptionsButton(I)V
    .locals 5
    .param p1, "optionsMenuId"    # I

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    .line 132
    iput p1, p0, Lcom/sonymobile/home/presenter/HomeActionBar;->mOptionsMenuId:I

    .line 133
    new-instance v0, Lcom/sonymobile/home/presenter/HomeActionBar$ActionBarButton;

    iget-object v1, p0, Lcom/sonymobile/home/presenter/HomeActionBar;->mScene:Lcom/sonymobile/flix/components/Scene;

    const v2, 0x7f020047

    invoke-direct {v0, p0, v1, v2}, Lcom/sonymobile/home/presenter/HomeActionBar$ActionBarButton;-><init>(Lcom/sonymobile/home/presenter/HomeActionBar;Lcom/sonymobile/flix/components/Scene;I)V

    iput-object v0, p0, Lcom/sonymobile/home/presenter/HomeActionBar;->mOptionsButton:Lcom/sonymobile/home/presenter/HomeActionBar$ActionBarButton;

    .line 134
    iget-object v0, p0, Lcom/sonymobile/home/presenter/HomeActionBar;->mOptionsButton:Lcom/sonymobile/home/presenter/HomeActionBar$ActionBarButton;

    iget v1, p0, Lcom/sonymobile/home/presenter/HomeActionBar;->mActionBarIconHorizontalPadding:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/presenter/HomeActionBar$ActionBarButton;->setPadding(F)V

    .line 135
    iget-object v0, p0, Lcom/sonymobile/home/presenter/HomeActionBar;->mOptionsButton:Lcom/sonymobile/home/presenter/HomeActionBar$ActionBarButton;

    new-instance v1, Lcom/sonymobile/home/presenter/HomeActionBar$1;

    invoke-direct {v1, p0}, Lcom/sonymobile/home/presenter/HomeActionBar$1;-><init>(Lcom/sonymobile/home/presenter/HomeActionBar;)V

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/presenter/HomeActionBar$ActionBarButton;->addButtonListener(Lcom/sonymobile/flix/components/ButtonListener;)V

    .line 143
    iget-object v0, p0, Lcom/sonymobile/home/presenter/HomeActionBar;->mContainer:Lcom/sonymobile/flix/components/Component;

    iget-object v1, p0, Lcom/sonymobile/home/presenter/HomeActionBar;->mOptionsButton:Lcom/sonymobile/home/presenter/HomeActionBar$ActionBarButton;

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/Component;->addChild(Lcom/sonymobile/flix/components/Component;)V

    .line 146
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/sonymobile/home/presenter/HomeActionBar;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v1}, Lcom/sonymobile/flix/components/Scene;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonymobile/home/presenter/HomeActionBar;->mOptionsMenuAnchorView:Landroid/view/View;

    .line 147
    iget-object v0, p0, Lcom/sonymobile/home/presenter/HomeActionBar;->mOptionsMenuAnchorView:Landroid/view/View;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 148
    iget-object v0, p0, Lcom/sonymobile/home/presenter/HomeActionBar;->mOptionsMenuAnchorView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setMinimumWidth(I)V

    .line 149
    iget-object v0, p0, Lcom/sonymobile/home/presenter/HomeActionBar;->mOptionsMenuAnchorView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setMinimumHeight(I)V

    .line 150
    new-instance v0, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;

    iget-object v1, p0, Lcom/sonymobile/home/presenter/HomeActionBar;->mScene:Lcom/sonymobile/flix/components/Scene;

    iget-object v2, p0, Lcom/sonymobile/home/presenter/HomeActionBar;->mOptionsMenuAnchorView:Landroid/view/View;

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;-><init>(Lcom/sonymobile/flix/components/Scene;Landroid/view/View;)V

    iput-object v0, p0, Lcom/sonymobile/home/presenter/HomeActionBar;->mOptionsMenuAnchorViewWrapper:Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;

    .line 151
    iget-object v0, p0, Lcom/sonymobile/home/presenter/HomeActionBar;->mOptionsMenuAnchorViewWrapper:Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;

    invoke-virtual {v0, v4, v4}, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;->setSize(FF)V

    .line 152
    iget-object v0, p0, Lcom/sonymobile/home/presenter/HomeActionBar;->mOptionsMenuAnchorViewWrapper:Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;

    invoke-virtual {v0, v3}, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;->setAutoUpdateViewBounds(Z)V

    .line 153
    iget-object v0, p0, Lcom/sonymobile/home/presenter/HomeActionBar;->mOptionsMenuAnchorViewWrapper:Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;

    invoke-virtual {v0, v3}, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;->setVisible(Z)V

    .line 154
    iget-object v0, p0, Lcom/sonymobile/home/presenter/HomeActionBar;->mContainer:Lcom/sonymobile/flix/components/Component;

    iget-object v1, p0, Lcom/sonymobile/home/presenter/HomeActionBar;->mOptionsMenuAnchorViewWrapper:Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/Component;->addChild(Lcom/sonymobile/flix/components/Component;)V

    .line 155
    return-void
.end method

.method public hide(Z)V
    .locals 7
    .param p1, "withAnimation"    # Z

    .prologue
    const/4 v6, 0x0

    .line 275
    iget-boolean v0, p0, Lcom/sonymobile/home/presenter/HomeActionBar;->mShowing:Z

    if-eqz v0, :cond_1

    .line 277
    iget-object v0, p0, Lcom/sonymobile/home/presenter/HomeActionBar;->mActionBarAnimation:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/sonymobile/home/presenter/HomeActionBar;->mScene:Lcom/sonymobile/flix/components/Scene;

    iget-object v1, p0, Lcom/sonymobile/home/presenter/HomeActionBar;->mActionBarAnimation:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/Scene;->removeTask(Lcom/sonymobile/flix/util/Scheduler$Task;)Z

    .line 279
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/home/presenter/HomeActionBar;->mActionBarAnimation:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 282
    :cond_0
    if-eqz p1, :cond_2

    .line 283
    new-instance v0, Lcom/sonymobile/flix/components/util/ComponentAnimation;

    iget-object v1, p0, Lcom/sonymobile/home/presenter/HomeActionBar;->mContainer:Lcom/sonymobile/flix/components/Component;

    const-wide/16 v2, 0xc8

    const-wide/16 v4, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/flix/components/util/ComponentAnimation;-><init>(Lcom/sonymobile/flix/components/Component;JJ)V

    iput-object v0, p0, Lcom/sonymobile/home/presenter/HomeActionBar;->mActionBarAnimation:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 285
    iget-object v0, p0, Lcom/sonymobile/home/presenter/HomeActionBar;->mActionBarAnimation:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setDescendantAlpha(FF)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 286
    iget-object v0, p0, Lcom/sonymobile/home/presenter/HomeActionBar;->mActionBarAnimation:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setInvisibleOnEnd(Z)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 287
    iget-object v0, p0, Lcom/sonymobile/home/presenter/HomeActionBar;->mScene:Lcom/sonymobile/flix/components/Scene;

    iget-object v1, p0, Lcom/sonymobile/home/presenter/HomeActionBar;->mActionBarAnimation:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/Scene;->addTask(Lcom/sonymobile/flix/util/Scheduler$Task;)Z

    .line 291
    :goto_0
    iput-boolean v6, p0, Lcom/sonymobile/home/presenter/HomeActionBar;->mShowing:Z

    .line 293
    :cond_1
    return-void

    .line 289
    :cond_2
    iget-object v0, p0, Lcom/sonymobile/home/presenter/HomeActionBar;->mContainer:Lcom/sonymobile/flix/components/Component;

    invoke-virtual {v0, v6}, Lcom/sonymobile/flix/components/Component;->setVisible(Z)V

    goto :goto_0
.end method

.method public layout()V
    .locals 2

    .prologue
    .line 198
    iget-boolean v0, p0, Lcom/sonymobile/home/presenter/HomeActionBar;->mUseVerticalMode:Z

    if-eqz v0, :cond_1

    .line 199
    invoke-static {}, Lcom/sonymobile/home/DisplayData;->getTopOffset()I

    move-result v0

    invoke-static {}, Lcom/sonymobile/home/DisplayData;->getBottomOffset()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/presenter/HomeActionBar;->layoutVerticalActionBar(F)V

    .line 204
    :goto_0
    iget-boolean v0, p0, Lcom/sonymobile/home/presenter/HomeActionBar;->mRtlLanguage:Z

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/sonymobile/home/presenter/HomeActionBar;->mContainer:Lcom/sonymobile/flix/components/Component;

    invoke-virtual {v0}, Lcom/sonymobile/flix/components/Component;->mirrorLayout()V

    .line 207
    :cond_0
    return-void

    .line 201
    :cond_1
    invoke-static {}, Lcom/sonymobile/home/DisplayData;->getRightOffset()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/presenter/HomeActionBar;->layoutHorizontalActionBar(F)V

    goto :goto_0
.end method

.method protected abstract layoutHorizontalActionBar(F)V
.end method

.method protected abstract layoutVerticalActionBar(F)V
.end method

.method public onAddedTo(Lcom/sonymobile/flix/components/Component;)V
    .locals 0
    .param p1, "parent"    # Lcom/sonymobile/flix/components/Component;

    .prologue
    .line 176
    invoke-virtual {p0}, Lcom/sonymobile/home/presenter/HomeActionBar;->layout()V

    .line 177
    return-void
.end method

.method public onDispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 333
    iget-object v0, p0, Lcom/sonymobile/home/presenter/HomeActionBar;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v0, p0, p1}, Lcom/sonymobile/flix/components/Scene;->dispatchHoverEventToChildren(Lcom/sonymobile/flix/components/Component;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onDispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 328
    iget-object v0, p0, Lcom/sonymobile/home/presenter/HomeActionBar;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v0, p0, p1}, Lcom/sonymobile/flix/components/Scene;->dispatchTouchEventToChildren(Lcom/sonymobile/flix/components/Component;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setBackButtonListener(Lcom/sonymobile/home/presenter/HomeActionBar$ActionButtonListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sonymobile/home/presenter/HomeActionBar$ActionButtonListener;

    .prologue
    .line 248
    iput-object p1, p0, Lcom/sonymobile/home/presenter/HomeActionBar;->mBackButtonListener:Lcom/sonymobile/home/presenter/HomeActionBar$ActionButtonListener;

    .line 249
    return-void
.end method

.method public setOptionsButtonListener(Lcom/sonymobile/home/presenter/HomeActionBar$ActionButtonListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sonymobile/home/presenter/HomeActionBar$ActionButtonListener;

    .prologue
    .line 239
    iput-object p1, p0, Lcom/sonymobile/home/presenter/HomeActionBar;->mOptionsButtonListener:Lcom/sonymobile/home/presenter/HomeActionBar$ActionButtonListener;

    .line 240
    return-void
.end method

.method protected setShowAnimationDelay(J)V
    .locals 1
    .param p1, "delay"    # J

    .prologue
    .line 323
    iput-wide p1, p0, Lcom/sonymobile/home/presenter/HomeActionBar;->mShowAnimationDelay:J

    .line 324
    return-void
.end method

.method public show(Z)V
    .locals 8
    .param p1, "withAnimation"    # Z

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, 0x1

    .line 302
    iget-boolean v0, p0, Lcom/sonymobile/home/presenter/HomeActionBar;->mShowing:Z

    if-nez v0, :cond_1

    .line 303
    iget-object v0, p0, Lcom/sonymobile/home/presenter/HomeActionBar;->mActionBarAnimation:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/sonymobile/home/presenter/HomeActionBar;->mScene:Lcom/sonymobile/flix/components/Scene;

    iget-object v1, p0, Lcom/sonymobile/home/presenter/HomeActionBar;->mActionBarAnimation:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/Scene;->removeTask(Lcom/sonymobile/flix/util/Scheduler$Task;)Z

    .line 305
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/home/presenter/HomeActionBar;->mActionBarAnimation:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 308
    :cond_0
    if-eqz p1, :cond_2

    .line 309
    new-instance v0, Lcom/sonymobile/flix/components/util/ComponentAnimation;

    iget-object v1, p0, Lcom/sonymobile/home/presenter/HomeActionBar;->mContainer:Lcom/sonymobile/flix/components/Component;

    const-wide/16 v2, 0xc8

    iget-wide v4, p0, Lcom/sonymobile/home/presenter/HomeActionBar;->mShowAnimationDelay:J

    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/flix/components/util/ComponentAnimation;-><init>(Lcom/sonymobile/flix/components/Component;JJ)V

    iput-object v0, p0, Lcom/sonymobile/home/presenter/HomeActionBar;->mActionBarAnimation:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 311
    iget-object v0, p0, Lcom/sonymobile/home/presenter/HomeActionBar;->mActionBarAnimation:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v7}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setDescendantAlpha(FF)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 312
    iget-object v0, p0, Lcom/sonymobile/home/presenter/HomeActionBar;->mActionBarAnimation:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    invoke-virtual {v0, v6}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setVisibleOnStart(Z)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 313
    iget-object v0, p0, Lcom/sonymobile/home/presenter/HomeActionBar;->mScene:Lcom/sonymobile/flix/components/Scene;

    iget-object v1, p0, Lcom/sonymobile/home/presenter/HomeActionBar;->mActionBarAnimation:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/Scene;->addTask(Lcom/sonymobile/flix/util/Scheduler$Task;)Z

    .line 318
    :goto_0
    iput-boolean v6, p0, Lcom/sonymobile/home/presenter/HomeActionBar;->mShowing:Z

    .line 320
    :cond_1
    return-void

    .line 315
    :cond_2
    iget-object v0, p0, Lcom/sonymobile/home/presenter/HomeActionBar;->mContainer:Lcom/sonymobile/flix/components/Component;

    invoke-virtual {v0, v7}, Lcom/sonymobile/flix/components/Component;->setDescendantAlpha(F)V

    .line 316
    iget-object v0, p0, Lcom/sonymobile/home/presenter/HomeActionBar;->mContainer:Lcom/sonymobile/flix/components/Component;

    invoke-virtual {v0, v6}, Lcom/sonymobile/flix/components/Component;->setVisible(Z)V

    goto :goto_0
.end method

.method public showOptionsMenu(Landroid/content/Context;Landroid/widget/PopupMenu$OnMenuItemClickListener;)Landroid/widget/PopupMenu;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menuItemListener"    # Landroid/widget/PopupMenu$OnMenuItemClickListener;

    .prologue
    .line 260
    new-instance v0, Landroid/widget/PopupMenu;

    iget-object v1, p0, Lcom/sonymobile/home/presenter/HomeActionBar;->mOptionsMenuAnchorView:Landroid/view/View;

    invoke-direct {v0, p1, v1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 261
    .local v0, "popupMenu":Landroid/widget/PopupMenu;
    invoke-virtual {v0, p2}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 262
    iget v1, p0, Lcom/sonymobile/home/presenter/HomeActionBar;->mOptionsMenuId:I

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->inflate(I)V

    .line 263
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    .line 264
    iget-object v1, p0, Lcom/sonymobile/home/presenter/HomeActionBar;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v1}, Lcom/sonymobile/flix/components/Scene;->invalidate()V

    .line 265
    return-object v0
.end method

.method public updateConfiguration(Lcom/sonymobile/grid/Grid;)V
    .locals 2
    .param p1, "grid"    # Lcom/sonymobile/grid/Grid;

    .prologue
    .line 180
    invoke-virtual {p1}, Lcom/sonymobile/grid/Grid;->getCellWidth()I

    move-result v0

    invoke-virtual {p1}, Lcom/sonymobile/grid/Grid;->getNumCols()I

    move-result v1

    mul-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/sonymobile/home/presenter/HomeActionBar;->mGridWidth:F

    .line 181
    invoke-virtual {p0}, Lcom/sonymobile/home/presenter/HomeActionBar;->updateResourceValues()V

    .line 182
    return-void
.end method

.method protected updateResourceValues()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 185
    iget-object v2, p0, Lcom/sonymobile/home/presenter/HomeActionBar;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v2}, Lcom/sonymobile/flix/components/Scene;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 186
    .local v0, "res":Landroid/content/res/Resources;
    const v2, 0x7f0b0005

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/sonymobile/home/presenter/HomeActionBar;->mActionBarHeight:F

    .line 187
    const v2, 0x7f0b005d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/sonymobile/home/presenter/HomeActionBar;->mSideMargin:F

    .line 188
    const v2, 0x7f0b0069

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/sonymobile/home/presenter/HomeActionBar;->mActionBarIconHorizontalPadding:I

    .line 189
    const v2, 0x7f0e0006

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/sonymobile/home/presenter/HomeActionBar;->mPressedColor:I

    .line 190
    const v2, 0x7f0a0003

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sonymobile/home/presenter/HomeActionBar;->mUseVerticalMode:Z

    .line 191
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v2

    if-ne v2, v1, :cond_0

    :goto_0
    iput-boolean v1, p0, Lcom/sonymobile/home/presenter/HomeActionBar;->mRtlLanguage:Z

    .line 192
    return-void

    .line 191
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
