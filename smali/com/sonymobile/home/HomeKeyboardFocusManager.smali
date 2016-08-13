.class public Lcom/sonymobile/home/HomeKeyboardFocusManager;
.super Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;
.source "HomeKeyboardFocusManager.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/home/HomeKeyboardFocusManager$ViewInteractionConnector;
    }
.end annotation


# static fields
.field private static sKeyboardEventCount:I


# instance fields
.field private final mBoundsChangeListener:Lcom/sonymobile/flix/components/ComponentListeners$BoundsChangeListener;

.field private final mFocusHighlight:Lcom/sonymobile/flix/components/NinePatchImage;

.field private final mHierarchyChangeListener:Lcom/sonymobile/flix/components/ComponentListeners$HierarchyChangeListener;

.field protected mIsFocusingViewWrapper:Z

.field private mLandscape:Z

.field private mPrevFrom:Lcom/sonymobile/flix/components/Component;

.field private mPrevGroup:Ljava/lang/String;

.field private final mScene:Lcom/sonymobile/flix/components/Scene;

.field private final mViewInteractionConnector:Lcom/sonymobile/home/HomeKeyboardFocusManager$ViewInteractionConnector;


# direct methods
.method public constructor <init>(Lcom/sonymobile/flix/components/Scene;Lcom/sonymobile/home/HomeKeyboardFocusManager$ViewInteractionConnector;)V
    .locals 2
    .param p1, "scene"    # Lcom/sonymobile/flix/components/Scene;
    .param p2, "viewInteractionConnector"    # Lcom/sonymobile/home/HomeKeyboardFocusManager$ViewInteractionConnector;

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;-><init>()V

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lcom/sonymobile/home/HomeKeyboardFocusManager;->mPrevGroup:Ljava/lang/String;

    .line 48
    new-instance v0, Lcom/sonymobile/home/HomeKeyboardFocusManager$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/home/HomeKeyboardFocusManager$1;-><init>(Lcom/sonymobile/home/HomeKeyboardFocusManager;)V

    iput-object v0, p0, Lcom/sonymobile/home/HomeKeyboardFocusManager;->mBoundsChangeListener:Lcom/sonymobile/flix/components/ComponentListeners$BoundsChangeListener;

    .line 57
    new-instance v0, Lcom/sonymobile/home/HomeKeyboardFocusManager$2;

    invoke-direct {v0, p0}, Lcom/sonymobile/home/HomeKeyboardFocusManager$2;-><init>(Lcom/sonymobile/home/HomeKeyboardFocusManager;)V

    iput-object v0, p0, Lcom/sonymobile/home/HomeKeyboardFocusManager;->mHierarchyChangeListener:Lcom/sonymobile/flix/components/ComponentListeners$HierarchyChangeListener;

    .line 78
    iput-object p1, p0, Lcom/sonymobile/home/HomeKeyboardFocusManager;->mScene:Lcom/sonymobile/flix/components/Scene;

    .line 79
    iput-object p2, p0, Lcom/sonymobile/home/HomeKeyboardFocusManager;->mViewInteractionConnector:Lcom/sonymobile/home/HomeKeyboardFocusManager$ViewInteractionConnector;

    .line 80
    new-instance v0, Lcom/sonymobile/flix/components/NinePatchImage;

    const v1, 0x7f020067

    invoke-direct {v0, p1, v1}, Lcom/sonymobile/flix/components/NinePatchImage;-><init>(Lcom/sonymobile/flix/components/Scene;I)V

    iput-object v0, p0, Lcom/sonymobile/home/HomeKeyboardFocusManager;->mFocusHighlight:Lcom/sonymobile/flix/components/NinePatchImage;

    .line 81
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/HomeKeyboardFocusManager;->setAllowFocus(Z)V

    .line 84
    new-instance v0, Lcom/sonymobile/home/HomeKeyboardFocusManager$3;

    invoke-direct {v0, p0}, Lcom/sonymobile/home/HomeKeyboardFocusManager$3;-><init>(Lcom/sonymobile/home/HomeKeyboardFocusManager;)V

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/HomeKeyboardFocusManager;->setDefaultFocusHandler(Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager$FocusHandler;)V

    .line 187
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/home/HomeKeyboardFocusManager;)Lcom/sonymobile/flix/components/NinePatchImage;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/HomeKeyboardFocusManager;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/sonymobile/home/HomeKeyboardFocusManager;->mFocusHighlight:Lcom/sonymobile/flix/components/NinePatchImage;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonymobile/home/HomeKeyboardFocusManager;)Lcom/sonymobile/flix/components/Scene;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/HomeKeyboardFocusManager;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/sonymobile/home/HomeKeyboardFocusManager;->mScene:Lcom/sonymobile/flix/components/Scene;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonymobile/home/HomeKeyboardFocusManager;)Lcom/sonymobile/flix/components/ComponentListeners$BoundsChangeListener;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/HomeKeyboardFocusManager;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/sonymobile/home/HomeKeyboardFocusManager;->mBoundsChangeListener:Lcom/sonymobile/flix/components/ComponentListeners$BoundsChangeListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonymobile/home/HomeKeyboardFocusManager;)Lcom/sonymobile/flix/components/ComponentListeners$HierarchyChangeListener;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/HomeKeyboardFocusManager;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/sonymobile/home/HomeKeyboardFocusManager;->mHierarchyChangeListener:Lcom/sonymobile/flix/components/ComponentListeners$HierarchyChangeListener;

    return-object v0
.end method

.method private focusSpecialCaseComponent(I)Z
    .locals 6
    .param p1, "direction"    # I

    .prologue
    const/4 v3, 0x0

    .line 306
    invoke-virtual {p0}, Lcom/sonymobile/home/HomeKeyboardFocusManager;->getFocused()Lcom/sonymobile/flix/components/Component;

    move-result-object v0

    .line 307
    .local v0, "focusedComponent":Lcom/sonymobile/flix/components/Component;
    if-eqz v0, :cond_1

    .line 308
    const-string v4, "KeyboardFocusGroup"

    const-string v5, ""

    invoke-virtual {v0, v4, v5}, Lcom/sonymobile/flix/components/Component;->getProperty(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 310
    .local v1, "fromGroup":Ljava/lang/String;
    const-string v4, "OpenFolderViewGroup"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 320
    .end local v1    # "fromGroup":Ljava/lang/String;
    :cond_0
    :goto_0
    return v3

    .line 315
    :cond_1
    iget-object v4, p0, Lcom/sonymobile/home/HomeKeyboardFocusManager;->mViewInteractionConnector:Lcom/sonymobile/home/HomeKeyboardFocusManager$ViewInteractionConnector;

    invoke-interface {v4, p1}, Lcom/sonymobile/home/HomeKeyboardFocusManager$ViewInteractionConnector;->getSpecialCaseFocusComponent(I)Lcom/sonymobile/flix/components/Component;

    move-result-object v2

    .line 317
    .local v2, "specialCaseComponent":Lcom/sonymobile/flix/components/Component;
    if-eqz v2, :cond_0

    .line 318
    invoke-virtual {p0, v2, p1}, Lcom/sonymobile/home/HomeKeyboardFocusManager;->focus(Lcom/sonymobile/flix/components/Component;I)Z

    move-result v3

    goto :goto_0
.end method


# virtual methods
.method public focusNextComponent(I)Z
    .locals 2
    .param p1, "direction"    # I

    .prologue
    .line 284
    invoke-virtual {p0}, Lcom/sonymobile/home/HomeKeyboardFocusManager;->getFocused()Lcom/sonymobile/flix/components/Component;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 285
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/HomeKeyboardFocusManager;->focusNext(I)Z

    move-result v0

    .line 287
    .local v0, "consumed":Z
    if-eqz v0, :cond_0

    .line 288
    const/4 v1, 0x1

    .line 293
    .end local v0    # "consumed":Z
    :goto_0
    return v1

    .line 290
    .restart local v0    # "consumed":Z
    :cond_0
    invoke-direct {p0, p1}, Lcom/sonymobile/home/HomeKeyboardFocusManager;->focusSpecialCaseComponent(I)Z

    move-result v1

    goto :goto_0

    .line 293
    .end local v0    # "consumed":Z
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/home/HomeKeyboardFocusManager;->mViewInteractionConnector:Lcom/sonymobile/home/HomeKeyboardFocusManager$ViewInteractionConnector;

    invoke-interface {v1}, Lcom/sonymobile/home/HomeKeyboardFocusManager$ViewInteractionConnector;->focusView()Z

    move-result v1

    goto :goto_0
.end method

.method protected onChangeDistance(ILcom/sonymobile/flix/components/Component;Lcom/sonymobile/flix/components/Component;F)F
    .locals 5
    .param p1, "dir"    # I
    .param p2, "from"    # Lcom/sonymobile/flix/components/Component;
    .param p3, "to"    # Lcom/sonymobile/flix/components/Component;
    .param p4, "normalDistance"    # F

    .prologue
    const/high16 v2, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 191
    if-nez p2, :cond_1

    .line 233
    .end local p4    # "normalDistance":F
    :cond_0
    :goto_0
    return p4

    .line 197
    .restart local p4    # "normalDistance":F
    :cond_1
    iget-object v3, p0, Lcom/sonymobile/home/HomeKeyboardFocusManager;->mPrevFrom:Lcom/sonymobile/flix/components/Component;

    if-ne p2, v3, :cond_2

    .line 198
    iget-object v0, p0, Lcom/sonymobile/home/HomeKeyboardFocusManager;->mPrevGroup:Ljava/lang/String;

    .line 206
    .local v0, "fromGroup":Ljava/lang/String;
    :goto_1
    const-string v3, "KeyboardFocusGroup"

    const-string v4, ""

    invoke-virtual {p3, v3, v4}, Lcom/sonymobile/flix/components/Component;->getProperty(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 210
    .local v1, "toGroup":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 213
    const-string v3, "OpenFolderViewGroup"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move p4, v2

    .line 214
    goto :goto_0

    .line 200
    .end local v0    # "fromGroup":Ljava/lang/String;
    .end local v1    # "toGroup":Ljava/lang/String;
    :cond_2
    const-string v3, "KeyboardFocusGroup"

    const-string v4, ""

    invoke-virtual {p2, v3, v4}, Lcom/sonymobile/flix/components/Component;->getProperty(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 202
    .restart local v0    # "fromGroup":Ljava/lang/String;
    iput-object p2, p0, Lcom/sonymobile/home/HomeKeyboardFocusManager;->mPrevFrom:Lcom/sonymobile/flix/components/Component;

    .line 203
    iput-object v0, p0, Lcom/sonymobile/home/HomeKeyboardFocusManager;->mPrevGroup:Ljava/lang/String;

    goto :goto_1

    .line 220
    .restart local v1    # "toGroup":Ljava/lang/String;
    :cond_3
    const-string v3, "CuiGridViewGroup"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "CuiGridViewGroup"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 222
    :cond_4
    iget-boolean v3, p0, Lcom/sonymobile/home/HomeKeyboardFocusManager;->mLandscape:Z

    if-eqz v3, :cond_6

    .line 223
    const/16 v3, 0x21

    if-eq p1, v3, :cond_5

    const/16 v3, 0x82

    if-ne p1, v3, :cond_0

    :cond_5
    move p4, v2

    .line 224
    goto :goto_0

    .line 227
    :cond_6
    const/16 v3, 0x11

    if-eq p1, v3, :cond_7

    const/16 v3, 0x42

    if-ne p1, v3, :cond_0

    :cond_7
    move p4, v2

    .line 228
    goto :goto_0
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "focusGained"    # Z

    .prologue
    .line 326
    if-eqz p2, :cond_2

    iget-object v1, p0, Lcom/sonymobile/home/HomeKeyboardFocusManager;->mViewInteractionConnector:Lcom/sonymobile/home/HomeKeyboardFocusManager$ViewInteractionConnector;

    invoke-interface {v1}, Lcom/sonymobile/home/HomeKeyboardFocusManager$ViewInteractionConnector;->isInTouchMode()Z

    move-result v1

    if-nez v1, :cond_2

    .line 327
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sonymobile/home/HomeKeyboardFocusManager;->setAllowFocus(Z)V

    .line 328
    invoke-virtual {p0}, Lcom/sonymobile/home/HomeKeyboardFocusManager;->getFocused()Lcom/sonymobile/flix/components/Component;

    move-result-object v1

    if-nez v1, :cond_0

    .line 329
    invoke-virtual {p0}, Lcom/sonymobile/home/HomeKeyboardFocusManager;->getLastFocused()Lcom/sonymobile/flix/components/Component;

    move-result-object v0

    .line 330
    .local v0, "lastFocused":Lcom/sonymobile/flix/components/Component;
    if-eqz v0, :cond_1

    .line 331
    invoke-virtual {p0, v0}, Lcom/sonymobile/home/HomeKeyboardFocusManager;->focus(Lcom/sonymobile/flix/components/Component;)Z

    .line 346
    .end local v0    # "lastFocused":Lcom/sonymobile/flix/components/Component;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/sonymobile/home/HomeKeyboardFocusManager;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v1}, Lcom/sonymobile/flix/components/Scene;->invalidate()V

    .line 347
    return-void

    .line 333
    .restart local v0    # "lastFocused":Lcom/sonymobile/flix/components/Component;
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/home/HomeKeyboardFocusManager;->mViewInteractionConnector:Lcom/sonymobile/home/HomeKeyboardFocusManager$ViewInteractionConnector;

    invoke-interface {v1}, Lcom/sonymobile/home/HomeKeyboardFocusManager$ViewInteractionConnector;->focusView()Z

    goto :goto_0

    .line 339
    .end local v0    # "lastFocused":Lcom/sonymobile/flix/components/Component;
    :cond_2
    iget-boolean v1, p0, Lcom/sonymobile/home/HomeKeyboardFocusManager;->mIsFocusingViewWrapper:Z

    if-nez v1, :cond_0

    .line 342
    invoke-virtual {p0}, Lcom/sonymobile/home/HomeKeyboardFocusManager;->clearFocus()V

    .line 343
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sonymobile/home/HomeKeyboardFocusManager;->setAllowFocus(Z)V

    goto :goto_0
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v2, 0x42

    const/4 v3, 0x1

    .line 238
    const/4 v0, 0x0

    .line 239
    .local v0, "consumed":Z
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_2

    .line 240
    sparse-switch p2, :sswitch_data_0

    .line 267
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 268
    iget-object v1, p0, Lcom/sonymobile/home/HomeKeyboardFocusManager;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v1}, Lcom/sonymobile/flix/components/Scene;->invalidate()V

    .line 269
    sget v1, Lcom/sonymobile/home/HomeKeyboardFocusManager;->sKeyboardEventCount:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/sonymobile/home/HomeKeyboardFocusManager;->sKeyboardEventCount:I

    .line 270
    sget v1, Lcom/sonymobile/home/HomeKeyboardFocusManager;->sKeyboardEventCount:I

    rem-int/lit8 v1, v1, 0x14

    if-ne v1, v3, :cond_1

    .line 275
    const-string v1, "General"

    const-string v4, "HighlightNavigation"

    const-string v5, ""

    sget v2, Lcom/sonymobile/home/HomeKeyboardFocusManager;->sKeyboardEventCount:I

    if-le v2, v3, :cond_4

    const-wide/16 v2, 0x14

    :goto_1
    invoke-static {v1, v4, v5, v2, v3}, Lcom/sonymobile/home/statistics/TrackingUtil;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 280
    :cond_1
    return v0

    .line 243
    :sswitch_0
    invoke-virtual {p0}, Lcom/sonymobile/home/HomeKeyboardFocusManager;->select()V

    .line 244
    const/4 v0, 0x1

    .line 245
    goto :goto_0

    .line 247
    :sswitch_1
    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Lcom/sonymobile/home/HomeKeyboardFocusManager;->focusNextComponent(I)Z

    move-result v0

    .line 248
    goto :goto_0

    .line 250
    :sswitch_2
    invoke-virtual {p0, v2}, Lcom/sonymobile/home/HomeKeyboardFocusManager;->focusNextComponent(I)Z

    move-result v0

    .line 251
    goto :goto_0

    .line 253
    :sswitch_3
    const/16 v1, 0x21

    invoke-virtual {p0, v1}, Lcom/sonymobile/home/HomeKeyboardFocusManager;->focusNextComponent(I)Z

    move-result v0

    .line 254
    goto :goto_0

    .line 256
    :sswitch_4
    const/16 v1, 0x82

    invoke-virtual {p0, v1}, Lcom/sonymobile/home/HomeKeyboardFocusManager;->focusNextComponent(I)Z

    move-result v0

    .line 257
    goto :goto_0

    .line 261
    :cond_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 262
    const/16 v1, 0x17

    if-eq p2, v1, :cond_3

    if-ne p2, v2, :cond_0

    .line 263
    :cond_3
    invoke-virtual {p0}, Lcom/sonymobile/home/HomeKeyboardFocusManager;->activate()V

    goto :goto_0

    .line 275
    :cond_4
    const-wide/16 v2, 0x1

    goto :goto_1

    .line 240
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_3
        0x14 -> :sswitch_4
        0x15 -> :sswitch_1
        0x16 -> :sswitch_2
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public setLandscape(Z)V
    .locals 0
    .param p1, "landscape"    # Z

    .prologue
    .line 350
    iput-boolean p1, p0, Lcom/sonymobile/home/HomeKeyboardFocusManager;->mLandscape:Z

    .line 351
    return-void
.end method
