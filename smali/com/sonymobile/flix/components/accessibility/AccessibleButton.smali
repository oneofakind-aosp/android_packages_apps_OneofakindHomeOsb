.class public Lcom/sonymobile/flix/components/accessibility/AccessibleButton;
.super Lcom/sonymobile/flix/components/Button;
.source "AccessibleButton.java"

# interfaces
.implements Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager$Focusable;


# instance fields
.field protected mAccessibilityPaint:Landroid/graphics/Paint;

.field protected mDescription:Ljava/lang/String;

.field protected mDisabledKeyboardEvents:I

.field protected mFocusedInAccessibility:Z


# direct methods
.method public constructor <init>(Lcom/sonymobile/flix/components/Scene;)V
    .locals 0
    .param p1, "scene"    # Lcom/sonymobile/flix/components/Scene;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/sonymobile/flix/components/Button;-><init>(Lcom/sonymobile/flix/components/Scene;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Lcom/sonymobile/flix/components/Scene;FF)V
    .locals 0
    .param p1, "scene"    # Lcom/sonymobile/flix/components/Scene;
    .param p2, "width"    # F
    .param p3, "height"    # F

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3}, Lcom/sonymobile/flix/components/Button;-><init>(Lcom/sonymobile/flix/components/Scene;FF)V

    .line 57
    return-void
.end method

.method private clearFocusFromExternalViews()V
    .locals 2

    .prologue
    .line 187
    invoke-virtual {p0}, Lcom/sonymobile/flix/components/accessibility/AccessibleButton;->getAccessibility()Lcom/sonymobile/flix/components/accessibility/Accessibility;

    move-result-object v0

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/accessibility/Accessibility;->performAction(I)V

    .line 189
    invoke-virtual {p0}, Lcom/sonymobile/flix/components/accessibility/AccessibleButton;->getAccessibility()Lcom/sonymobile/flix/components/accessibility/Accessibility;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/accessibility/Accessibility;->performAction(I)V

    .line 191
    return-void
.end method


# virtual methods
.method public click(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 170
    invoke-virtual {p0}, Lcom/sonymobile/flix/components/accessibility/AccessibleButton;->makeClickSound()V

    .line 171
    invoke-super {p0, p1, p2}, Lcom/sonymobile/flix/components/Button;->click(FF)V

    .line 172
    return-void
.end method

.method protected getAccessibility()Lcom/sonymobile/flix/components/accessibility/Accessibility;
    .locals 3

    .prologue
    .line 225
    iget-object v1, p0, Lcom/sonymobile/flix/components/accessibility/AccessibleButton;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v1}, Lcom/sonymobile/flix/components/Scene;->getAccessibility()Lcom/sonymobile/flix/components/accessibility/Accessibility;

    move-result-object v0

    .line 226
    .local v0, "accessibility":Lcom/sonymobile/flix/components/accessibility/Accessibility;
    if-nez v0, :cond_0

    .line 227
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Accessibility not set up. Use SceneView.setupAccessibility()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 230
    :cond_0
    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/sonymobile/flix/components/accessibility/AccessibleButton;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public hoverEnter()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 196
    invoke-virtual {p0}, Lcom/sonymobile/flix/components/accessibility/AccessibleButton;->getAccessibility()Lcom/sonymobile/flix/components/accessibility/Accessibility;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sonymobile/flix/components/accessibility/AccessibleButton;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sonymobile/flix/components/accessibility/Accessibility;->announce(Ljava/lang/String;)V

    .line 197
    iget-object v3, p0, Lcom/sonymobile/flix/components/accessibility/AccessibleButton;->mAccessibilityPaint:Landroid/graphics/Paint;

    if-nez v3, :cond_0

    .line 198
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v7}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, p0, Lcom/sonymobile/flix/components/accessibility/AccessibleButton;->mAccessibilityPaint:Landroid/graphics/Paint;

    .line 199
    iget-object v3, p0, Lcom/sonymobile/flix/components/accessibility/AccessibleButton;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v3}, Lcom/sonymobile/flix/components/Scene;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 201
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    const/high16 v3, 0x40800000    # 4.0f

    invoke-static {v7, v3, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    .line 203
    .local v2, "size":F
    iget-object v3, p0, Lcom/sonymobile/flix/components/accessibility/AccessibleButton;->mAccessibilityPaint:Landroid/graphics/Paint;

    const v4, -0xff8100

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 204
    iget-object v3, p0, Lcom/sonymobile/flix/components/accessibility/AccessibleButton;->mAccessibilityPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 205
    iget-object v3, p0, Lcom/sonymobile/flix/components/accessibility/AccessibleButton;->mAccessibilityPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 206
    iget-object v3, p0, Lcom/sonymobile/flix/components/accessibility/AccessibleButton;->mAccessibilityPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 207
    iget-object v3, p0, Lcom/sonymobile/flix/components/accessibility/AccessibleButton;->mAccessibilityPaint:Landroid/graphics/Paint;

    new-instance v4, Landroid/graphics/DashPathEffect;

    const/4 v5, 0x2

    new-array v5, v5, [F

    aput v2, v5, v8

    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, v2, v6

    aput v6, v5, v7

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v4, v5, v6}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 211
    .end local v0    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v2    # "size":F
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/flix/components/accessibility/AccessibleButton;->getScene()Lcom/sonymobile/flix/components/Scene;

    move-result-object v3

    const-string v4, "AccessibleButton.CurrentlyFocusedInAccessibility"

    invoke-virtual {v3, v4}, Lcom/sonymobile/flix/components/Scene;->getProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 212
    .local v1, "focused":Ljava/lang/Object;
    instance-of v3, v1, Lcom/sonymobile/flix/components/accessibility/AccessibleButton;

    if-eqz v3, :cond_1

    .line 213
    check-cast v1, Lcom/sonymobile/flix/components/accessibility/AccessibleButton;

    .end local v1    # "focused":Ljava/lang/Object;
    iput-boolean v8, v1, Lcom/sonymobile/flix/components/accessibility/AccessibleButton;->mFocusedInAccessibility:Z

    .line 215
    :cond_1
    iput-boolean v7, p0, Lcom/sonymobile/flix/components/accessibility/AccessibleButton;->mFocusedInAccessibility:Z

    .line 216
    invoke-virtual {p0}, Lcom/sonymobile/flix/components/accessibility/AccessibleButton;->getScene()Lcom/sonymobile/flix/components/Scene;

    move-result-object v3

    const-string v4, "AccessibleButton.CurrentlyFocusedInAccessibility"

    invoke-virtual {v3, v4, p0}, Lcom/sonymobile/flix/components/Scene;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 217
    invoke-virtual {p0}, Lcom/sonymobile/flix/components/accessibility/AccessibleButton;->getScene()Lcom/sonymobile/flix/components/Scene;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/flix/components/Scene;->invalidate()V

    .line 219
    invoke-direct {p0}, Lcom/sonymobile/flix/components/accessibility/AccessibleButton;->clearFocusFromExternalViews()V

    .line 221
    invoke-super {p0}, Lcom/sonymobile/flix/components/Button;->hoverEnter()V

    .line 222
    return-void
.end method

.method protected makeClickSound()V
    .locals 2

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/sonymobile/flix/components/accessibility/AccessibleButton;->getAccessibility()Lcom/sonymobile/flix/components/accessibility/Accessibility;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/accessibility/Accessibility;->performAction(I)V

    .line 179
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    .line 236
    invoke-super {p0, p1}, Lcom/sonymobile/flix/components/Button;->onDraw(Landroid/graphics/Canvas;)V

    .line 238
    iget-boolean v0, p0, Lcom/sonymobile/flix/components/accessibility/AccessibleButton;->mFocusedInAccessibility:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sonymobile/flix/components/accessibility/AccessibleButton;->getAccessibility()Lcom/sonymobile/flix/components/accessibility/Accessibility;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/flix/components/accessibility/Accessibility;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    invoke-virtual {p0}, Lcom/sonymobile/flix/components/accessibility/AccessibleButton;->getWidth()F

    move-result v3

    invoke-virtual {p0}, Lcom/sonymobile/flix/components/accessibility/AccessibleButton;->getHeight()F

    move-result v4

    iget-object v5, p0, Lcom/sonymobile/flix/components/accessibility/AccessibleButton;->mAccessibilityPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 241
    :cond_0
    return-void
.end method

.method public onKeyboardFocusEvent(Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;ILcom/sonymobile/flix/components/Component;I)Z
    .locals 7
    .param p1, "source"    # Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;
    .param p2, "event"    # I
    .param p3, "component"    # Lcom/sonymobile/flix/components/Component;
    .param p4, "direction"    # I

    .prologue
    const/4 v5, 0x0

    .line 132
    const/4 v0, 0x0

    .line 133
    .local v0, "consumed":Z
    iget-object v4, p0, Lcom/sonymobile/flix/components/accessibility/AccessibleButton;->mButtonListeners:Ljava/util/ArrayList;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/sonymobile/flix/components/accessibility/AccessibleButton;->mButtonListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 134
    .local v3, "nbrListeners":I
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v3, :cond_2

    .line 135
    iget-object v4, p0, Lcom/sonymobile/flix/components/accessibility/AccessibleButton;->mButtonListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/flix/components/ButtonListener;

    .line 136
    .local v2, "listener":Lcom/sonymobile/flix/components/ButtonListener;
    instance-of v4, v2, Lcom/sonymobile/flix/components/accessibility/AccessibleButtonListener;

    if-eqz v4, :cond_0

    .line 137
    check-cast v2, Lcom/sonymobile/flix/components/accessibility/AccessibleButtonListener;

    .end local v2    # "listener":Lcom/sonymobile/flix/components/ButtonListener;
    invoke-interface {v2, p0, p1, p2, p4}, Lcom/sonymobile/flix/components/accessibility/AccessibleButtonListener;->onKeyboardFocusEvent(Lcom/sonymobile/flix/components/accessibility/AccessibleButton;Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;II)Z

    move-result v4

    or-int/2addr v0, v4

    .line 134
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 133
    .end local v1    # "i":I
    .end local v3    # "nbrListeners":I
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 142
    .restart local v1    # "i":I
    .restart local v3    # "nbrListeners":I
    :cond_2
    iget v4, p0, Lcom/sonymobile/flix/components/accessibility/AccessibleButton;->mDisabledKeyboardEvents:I

    xor-int/lit8 v4, v4, -0x1

    and-int/2addr p2, v4

    .line 143
    sparse-switch p2, :sswitch_data_0

    .line 164
    :cond_3
    :goto_2
    return v0

    .line 146
    :sswitch_0
    invoke-virtual {p0}, Lcom/sonymobile/flix/components/accessibility/AccessibleButton;->getAccessibility()Lcom/sonymobile/flix/components/accessibility/Accessibility;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {p0}, Lcom/sonymobile/flix/components/accessibility/AccessibleButton;->getDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/sonymobile/flix/components/accessibility/Accessibility;->sendEvent(ILjava/lang/String;)V

    goto :goto_2

    .line 151
    :sswitch_1
    if-eqz p4, :cond_3

    .line 152
    invoke-virtual {p0}, Lcom/sonymobile/flix/components/accessibility/AccessibleButton;->getAccessibility()Lcom/sonymobile/flix/components/accessibility/Accessibility;

    move-result-object v4

    invoke-static {p4}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sonymobile/flix/components/accessibility/Accessibility;->playSoundEffect(I)V

    goto :goto_2

    .line 158
    :sswitch_2
    invoke-virtual {p0}, Lcom/sonymobile/flix/components/accessibility/AccessibleButton;->makeClickSound()V

    .line 159
    invoke-super {p0, v5, v5}, Lcom/sonymobile/flix/components/Button;->click(FF)V

    goto :goto_2

    .line 143
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_0
        0x8 -> :sswitch_2
    .end sparse-switch
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/sonymobile/flix/components/accessibility/AccessibleButton;->mDescription:Ljava/lang/String;

    .line 67
    return-void
.end method
