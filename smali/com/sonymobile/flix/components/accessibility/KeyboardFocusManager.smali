.class public Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;
.super Ljava/lang/Object;
.source "KeyboardFocusManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager$FocusProperties;,
        Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager$FocusHandler;,
        Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager$FocusDelegate;,
        Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager$Focusable;
    }
.end annotation


# instance fields
.field protected mAllowInvisible:Z

.field protected mAllowedAngle:F

.field protected mAnglePenalty:F

.field protected mAutoAddChangeListeners:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lcom/sonymobile/flix/components/Component;",
            "Lcom/sonymobile/flix/components/ComponentListeners$HierarchyChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field protected mDefaultFocusEventHandler:Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager$FocusHandler;

.field private mFocusAllowed:Z

.field protected mFocusListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager$FocusHandler;",
            ">;"
        }
    .end annotation
.end field

.field protected mFocusables:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lcom/sonymobile/flix/components/Component;",
            "Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager$FocusProperties;",
            ">;"
        }
    .end annotation
.end field

.field protected mFocused:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sonymobile/flix/components/Component;",
            ">;"
        }
    .end annotation
.end field

.field protected mHorizAlign:I

.field protected mLastFocused:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sonymobile/flix/components/Component;",
            ">;"
        }
    .end annotation
.end field

.field protected mSelected:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sonymobile/flix/components/Component;",
            ">;"
        }
    .end annotation
.end field

.field protected mVertAlign:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;->mFocusables:Ljava/util/WeakHashMap;

    .line 133
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;->mAutoAddChangeListeners:Ljava/util/WeakHashMap;

    .line 134
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;->setAllowFocus(Z)V

    .line 135
    const/high16 v0, 0x42f00000    # 120.0f

    invoke-virtual {p0, v0}, Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;->setAllowedAngle(F)V

    .line 136
    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {p0, v0}, Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;->setAnglePenalty(F)V

    .line 137
    new-instance v0, Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager$1;-><init>(Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;)V

    invoke-virtual {p0, v0}, Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;->setDefaultFocusHandler(Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager$FocusHandler;)V

    .line 144
    return-void
.end method


# virtual methods
.method public activate()V
    .locals 3

    .prologue
    .line 689
    invoke-virtual {p0}, Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;->getSelected()Lcom/sonymobile/flix/components/Component;

    move-result-object v0

    .line 690
    .local v0, "selected":Lcom/sonymobile/flix/components/Component;
    if-eqz v0, :cond_0

    .line 691
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;->mSelected:Ljava/lang/ref/WeakReference;

    .line 693
    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;->notifyEventListeners(ILcom/sonymobile/flix/components/Component;I)V

    .line 695
    :cond_0
    return-void
.end method

.method public add(Lcom/sonymobile/flix/components/Component;)V
    .locals 2
    .param p1, "component"    # Lcom/sonymobile/flix/components/Component;

    .prologue
    .line 189
    iget-object v0, p0, Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;->mFocusables:Ljava/util/WeakHashMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    return-void
.end method

.method public addFocusables(Lcom/sonymobile/flix/components/Component;)V
    .locals 3
    .param p1, "root"    # Lcom/sonymobile/flix/components/Component;

    .prologue
    .line 206
    instance-of v2, p1, Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager$Focusable;

    if-eqz v2, :cond_0

    const-string v2, "KeyboardFocusManager.NotFocusable"

    invoke-virtual {p1, v2}, Lcom/sonymobile/flix/components/Component;->hasProperty(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 207
    invoke-virtual {p0, p1}, Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;->add(Lcom/sonymobile/flix/components/Component;)V

    .line 209
    :cond_0
    invoke-virtual {p1}, Lcom/sonymobile/flix/components/Component;->getNbrChildren()I

    move-result v1

    .line 210
    .local v1, "nbrChildren":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 211
    invoke-virtual {p1, v0}, Lcom/sonymobile/flix/components/Component;->getChild(I)Lcom/sonymobile/flix/components/Component;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;->addFocusables(Lcom/sonymobile/flix/components/Component;)V

    .line 210
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 213
    :cond_1
    return-void
.end method

.method public clearFocus()V
    .locals 1

    .prologue
    .line 507
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;->focus(Lcom/sonymobile/flix/components/Component;)Z

    .line 508
    return-void
.end method

.method public enableAutoAddFocusables(Lcom/sonymobile/flix/components/Component;)V
    .locals 2
    .param p1, "root"    # Lcom/sonymobile/flix/components/Component;

    .prologue
    .line 240
    new-instance v0, Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager$2;

    invoke-direct {v0, p0}, Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager$2;-><init>(Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;)V

    .line 251
    .local v0, "listener":Lcom/sonymobile/flix/components/ComponentListeners$HierarchyChangeListener;
    invoke-virtual {p1}, Lcom/sonymobile/flix/components/Component;->getListeners()Lcom/sonymobile/flix/components/ComponentListeners;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sonymobile/flix/components/ComponentListeners;->addListener(Lcom/sonymobile/flix/components/ComponentListeners$HierarchyChangeListener;)V

    .line 252
    iget-object v1, p0, Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;->mAutoAddChangeListeners:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    return-void
.end method

.method public findClosest(FF)Lcom/sonymobile/flix/components/Component;
    .locals 6
    .param p1, "worldX"    # F
    .param p2, "worldY"    # F

    .prologue
    .line 657
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;->findClosest(IFFFLcom/sonymobile/flix/components/Component;)Lcom/sonymobile/flix/components/Component;

    move-result-object v0

    return-object v0
.end method

.method protected findClosest(IFFFLcom/sonymobile/flix/components/Component;)Lcom/sonymobile/flix/components/Component;
    .locals 22
    .param p1, "direction"    # I
    .param p2, "searchAngle"    # F
    .param p3, "fromX"    # F
    .param p4, "fromY"    # F
    .param p5, "from"    # Lcom/sonymobile/flix/components/Component;

    .prologue
    .line 714
    const/high16 v20, 0x3f000000    # 0.5f

    mul-float p2, p2, v20

    .line 718
    const/high16 v20, 0x42b40000    # 90.0f

    cmpl-float v20, p2, v20

    if-ltz v20, :cond_3

    .line 719
    const p2, 0x42b3ffff    # 89.99999f

    .line 723
    :cond_0
    :goto_0
    move/from16 v0, p2

    float-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->tan(D)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v19, v0

    .line 726
    .local v19, "tanSearchAngle":F
    if-eqz p5, :cond_4

    const/high16 v4, 0x3f000000    # 0.5f

    .line 727
    .local v4, "atLeast":F
    :goto_1
    const/4 v6, 0x0

    .line 728
    .local v6, "closest":Lcom/sonymobile/flix/components/Component;
    const/high16 v18, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 729
    .local v18, "minDist":F
    const-wide/16 v16, 0x0

    .line 730
    .local v16, "equalityBias":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;->mFocusables:Ljava/util/WeakHashMap;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/WeakHashMap;->entrySet()Ljava/util/Set;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_e

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    .line 731
    .local v14, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/sonymobile/flix/components/Component;Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager$FocusProperties;>;"
    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sonymobile/flix/components/Component;

    .line 732
    .local v7, "component":Lcom/sonymobile/flix/components/Component;
    if-eqz v7, :cond_1

    move-object/from16 v0, p5

    if-eq v7, v0, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;->mAllowInvisible:Z

    move/from16 v20, v0

    if-nez v20, :cond_2

    invoke-virtual {v7}, Lcom/sonymobile/flix/components/Component;->isVisible()Z

    move-result v20

    if-eqz v20, :cond_1

    .line 736
    :cond_2
    invoke-virtual {v7}, Lcom/sonymobile/flix/components/Component;->getWorldX()F

    move-result v20

    sub-float v12, v20, p3

    .line 737
    .local v12, "dx":F
    invoke-virtual {v7}, Lcom/sonymobile/flix/components/Component;->getWorldY()F

    move-result v20

    sub-float v13, v20, p4

    .line 738
    .local v13, "dy":F
    mul-float v20, v12, v12

    mul-float v21, v13, v13

    add-float v20, v20, v21

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-float v9, v0

    .line 739
    .local v9, "dist":F
    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v10

    .line 740
    .local v10, "distX":F
    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v11

    .line 741
    .local v11, "distY":F
    if-nez p1, :cond_5

    .line 742
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p5

    invoke-virtual {v0, v1, v2, v7, v9}, Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;->onChangeDistance(ILcom/sonymobile/flix/components/Component;Lcom/sonymobile/flix/components/Component;F)F

    move-result v9

    .line 744
    cmpg-float v20, v9, v18

    if-gez v20, :cond_1

    .line 745
    move/from16 v18, v9

    .line 746
    move-object v6, v7

    goto :goto_2

    .line 720
    .end local v4    # "atLeast":F
    .end local v6    # "closest":Lcom/sonymobile/flix/components/Component;
    .end local v7    # "component":Lcom/sonymobile/flix/components/Component;
    .end local v9    # "dist":F
    .end local v10    # "distX":F
    .end local v11    # "distY":F
    .end local v12    # "dx":F
    .end local v13    # "dy":F
    .end local v14    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/sonymobile/flix/components/Component;Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager$FocusProperties;>;"
    .end local v15    # "i$":Ljava/util/Iterator;
    .end local v16    # "equalityBias":D
    .end local v18    # "minDist":F
    .end local v19    # "tanSearchAngle":F
    :cond_3
    const/16 v20, 0x0

    cmpg-float v20, p2, v20

    if-gez v20, :cond_0

    .line 721
    const/16 p2, 0x0

    goto/16 :goto_0

    .line 726
    .restart local v19    # "tanSearchAngle":F
    :cond_4
    const/4 v4, 0x0

    goto :goto_1

    .line 749
    .restart local v4    # "atLeast":F
    .restart local v6    # "closest":Lcom/sonymobile/flix/components/Component;
    .restart local v7    # "component":Lcom/sonymobile/flix/components/Component;
    .restart local v9    # "dist":F
    .restart local v10    # "distX":F
    .restart local v11    # "distY":F
    .restart local v12    # "dx":F
    .restart local v13    # "dy":F
    .restart local v14    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/sonymobile/flix/components/Component;Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager$FocusProperties;>;"
    .restart local v15    # "i$":Ljava/util/Iterator;
    .restart local v16    # "equalityBias":D
    .restart local v18    # "minDist":F
    :cond_5
    const/16 v20, 0x11

    move/from16 v0, p1

    move/from16 v1, v20

    if-ne v0, v1, :cond_6

    neg-float v0, v4

    move/from16 v20, v0

    cmpg-float v20, v12, v20

    if-lez v20, :cond_7

    :cond_6
    const/16 v20, 0x42

    move/from16 v0, p1

    move/from16 v1, v20

    if-ne v0, v1, :cond_9

    cmpl-float v20, v12, v4

    if-ltz v20, :cond_9

    .line 754
    :cond_7
    mul-float v20, v10, v19

    cmpl-float v20, v20, v11

    if-lez v20, :cond_1

    .line 755
    div-float v8, v11, v10

    .line 756
    .local v8, "deviation":F
    const/high16 v20, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;->mAnglePenalty:F

    move/from16 v21, v0

    mul-float v21, v21, v8

    mul-float v21, v21, v8

    mul-float v21, v21, v8

    mul-float v21, v21, v8

    add-float v20, v20, v21

    mul-float v9, v9, v20

    .line 774
    :goto_3
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p5

    invoke-virtual {v0, v1, v2, v7, v9}, Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;->onChangeDistance(ILcom/sonymobile/flix/components/Component;Lcom/sonymobile/flix/components/Component;F)F

    move-result v9

    .line 777
    const/high16 v20, 0x3f800000    # 1.0f

    sub-float v20, v18, v20

    cmpg-float v20, v9, v20

    if-gez v20, :cond_c

    const/4 v5, 0x1

    .line 779
    .local v5, "closer":Z
    :goto_4
    if-nez v5, :cond_8

    const/high16 v20, 0x3f800000    # 1.0f

    add-float v20, v20, v18

    cmpg-float v20, v9, v20

    if-gez v20, :cond_8

    .line 783
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;->mVertAlign:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v20, v20, v13

    const/high16 v21, 0x47800000    # 65536.0f

    mul-float v20, v20, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;->mHorizAlign:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    mul-float v21, v21, v12

    add-float v20, v20, v21

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    cmpg-double v20, v20, v16

    if-gez v20, :cond_d

    const/4 v5, 0x1

    .line 785
    :cond_8
    :goto_5
    if-eqz v5, :cond_1

    .line 786
    move/from16 v18, v9

    .line 787
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;->mVertAlign:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v20, v20, v13

    const/high16 v21, 0x47800000    # 65536.0f

    mul-float v20, v20, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;->mHorizAlign:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    mul-float v21, v21, v12

    add-float v20, v20, v21

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v16, v0

    .line 788
    move-object v6, v7

    goto/16 :goto_2

    .line 760
    .end local v5    # "closer":Z
    .end local v8    # "deviation":F
    :cond_9
    const/16 v20, 0x21

    move/from16 v0, p1

    move/from16 v1, v20

    if-ne v0, v1, :cond_a

    neg-float v0, v4

    move/from16 v20, v0

    cmpg-float v20, v13, v20

    if-lez v20, :cond_b

    :cond_a
    const/16 v20, 0x82

    move/from16 v0, p1

    move/from16 v1, v20

    if-ne v0, v1, :cond_1

    cmpl-float v20, v13, v4

    if-ltz v20, :cond_1

    .line 764
    :cond_b
    mul-float v20, v11, v19

    cmpl-float v20, v20, v10

    if-lez v20, :cond_1

    .line 765
    div-float v8, v10, v11

    .line 766
    .restart local v8    # "deviation":F
    const/high16 v20, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;->mAnglePenalty:F

    move/from16 v21, v0

    mul-float v21, v21, v8

    mul-float v21, v21, v8

    mul-float v21, v21, v8

    mul-float v21, v21, v8

    add-float v20, v20, v21

    mul-float v9, v9, v20

    goto/16 :goto_3

    .line 777
    :cond_c
    const/4 v5, 0x0

    goto/16 :goto_4

    .line 783
    .restart local v5    # "closer":Z
    :cond_d
    const/4 v5, 0x0

    goto :goto_5

    .line 793
    .end local v5    # "closer":Z
    .end local v7    # "component":Lcom/sonymobile/flix/components/Component;
    .end local v8    # "deviation":F
    .end local v9    # "dist":F
    .end local v10    # "distX":F
    .end local v11    # "distY":F
    .end local v12    # "dx":F
    .end local v13    # "dy":F
    .end local v14    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/sonymobile/flix/components/Component;Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager$FocusProperties;>;"
    :cond_e
    return-object v6
.end method

.method public findFirstFocusable(Lcom/sonymobile/flix/components/Component;)Lcom/sonymobile/flix/components/Component;
    .locals 4
    .param p1, "root"    # Lcom/sonymobile/flix/components/Component;

    .prologue
    .line 622
    instance-of v3, p1, Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager$Focusable;

    if-eqz v3, :cond_0

    .line 632
    .end local p1    # "root":Lcom/sonymobile/flix/components/Component;
    :goto_0
    return-object p1

    .line 625
    .restart local p1    # "root":Lcom/sonymobile/flix/components/Component;
    :cond_0
    invoke-virtual {p1}, Lcom/sonymobile/flix/components/Component;->getNbrChildren()I

    move-result v2

    .line 626
    .local v2, "nbrChildren":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 627
    invoke-virtual {p1, v1}, Lcom/sonymobile/flix/components/Component;->getChild(I)Lcom/sonymobile/flix/components/Component;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;->findFirstFocusable(Lcom/sonymobile/flix/components/Component;)Lcom/sonymobile/flix/components/Component;

    move-result-object v0

    .line 628
    .local v0, "focusable":Lcom/sonymobile/flix/components/Component;
    if-eqz v0, :cond_1

    move-object p1, v0

    .line 629
    goto :goto_0

    .line 626
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 632
    .end local v0    # "focusable":Lcom/sonymobile/flix/components/Component;
    :cond_2
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public focus(Lcom/sonymobile/flix/components/Component;)Z
    .locals 2
    .param p1, "component"    # Lcom/sonymobile/flix/components/Component;

    .prologue
    const/4 v0, 0x0

    .line 448
    iget-boolean v1, p0, Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;->mFocusAllowed:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;->mFocused:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_0

    if-nez p1, :cond_1

    .line 449
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;->focus(Lcom/sonymobile/flix/components/Component;I)Z

    move-result v0

    .line 451
    :cond_1
    return v0
.end method

.method public focus(Lcom/sonymobile/flix/components/Component;I)Z
    .locals 4
    .param p1, "component"    # Lcom/sonymobile/flix/components/Component;
    .param p2, "direction"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 462
    iget-boolean v2, p0, Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;->mFocusAllowed:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;->mFocused:Ljava/lang/ref/WeakReference;

    if-nez v2, :cond_0

    if-nez p1, :cond_7

    .line 464
    :cond_0
    if-eqz p1, :cond_2

    instance-of v2, p1, Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager$Focusable;

    if-nez v2, :cond_2

    .line 468
    instance-of v1, p1, Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager$FocusDelegate;

    if-eqz v1, :cond_1

    .line 469
    check-cast p1, Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager$FocusDelegate;

    .end local p1    # "component":Lcom/sonymobile/flix/components/Component;
    invoke-interface {p1, p0, p2}, Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager$FocusDelegate;->onDelegateKeyboardFocus(Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;I)Z

    move-result v1

    .line 500
    :goto_0
    return v1

    .line 471
    .restart local p1    # "component":Lcom/sonymobile/flix/components/Component;
    :cond_1
    invoke-virtual {p0, p1}, Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;->findFirstFocusable(Lcom/sonymobile/flix/components/Component;)Lcom/sonymobile/flix/components/Component;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;->focus(Lcom/sonymobile/flix/components/Component;I)Z

    move-result v1

    goto :goto_0

    .line 474
    :cond_2
    invoke-virtual {p0}, Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;->getFocused()Lcom/sonymobile/flix/components/Component;

    move-result-object v0

    .line 475
    .local v0, "previous":Lcom/sonymobile/flix/components/Component;
    if-eq p1, v0, :cond_7

    .line 476
    if-eqz v0, :cond_3

    .line 478
    iget-object v2, p0, Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;->mFocused:Ljava/lang/ref/WeakReference;

    iput-object v2, p0, Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;->mLastFocused:Ljava/lang/ref/WeakReference;

    .line 480
    :cond_3
    if-eqz p1, :cond_6

    .line 482
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;->mFocused:Ljava/lang/ref/WeakReference;

    .line 486
    :goto_1
    if-eqz v0, :cond_4

    .line 489
    invoke-virtual {p0, v1, v0, p2}, Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;->notifyEventListeners(ILcom/sonymobile/flix/components/Component;I)V

    .line 491
    :cond_4
    if-eqz p1, :cond_5

    .line 493
    const/4 v2, 0x2

    invoke-virtual {p0, v2, p1, p2}, Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;->notifyEventListeners(ILcom/sonymobile/flix/components/Component;I)V

    .line 496
    :cond_5
    iput-object v3, p0, Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;->mSelected:Ljava/lang/ref/WeakReference;

    goto :goto_0

    .line 484
    :cond_6
    iput-object v3, p0, Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;->mFocused:Ljava/lang/ref/WeakReference;

    goto :goto_1

    .line 500
    .end local v0    # "previous":Lcom/sonymobile/flix/components/Component;
    :cond_7
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public focusNext(I)Z
    .locals 3
    .param p1, "direction"    # I

    .prologue
    const/4 v1, 0x0

    .line 433
    iget-boolean v2, p0, Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;->mFocusAllowed:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;->mFocused:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_1

    .line 434
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;->getNext(I)Lcom/sonymobile/flix/components/Component;

    move-result-object v0

    .line 435
    .local v0, "next":Lcom/sonymobile/flix/components/Component;
    if-eqz v0, :cond_1

    invoke-virtual {p0, v0, p1}, Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;->focus(Lcom/sonymobile/flix/components/Component;I)Z

    move-result v1

    .line 437
    .end local v0    # "next":Lcom/sonymobile/flix/components/Component;
    :cond_1
    return v1
.end method

.method public getFocused()Lcom/sonymobile/flix/components/Component;
    .locals 1

    .prologue
    .line 528
    iget-object v0, p0, Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;->mFocused:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;->mFocused:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/flix/components/Component;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLastFocused()Lcom/sonymobile/flix/components/Component;
    .locals 1

    .prologue
    .line 538
    iget-object v0, p0, Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;->mLastFocused:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;->mLastFocused:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/flix/components/Component;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNext(I)Lcom/sonymobile/flix/components/Component;
    .locals 1
    .param p1, "direction"    # I

    .prologue
    .line 569
    invoke-virtual {p0}, Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;->getFocused()Lcom/sonymobile/flix/components/Component;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;->getNext(ILcom/sonymobile/flix/components/Component;)Lcom/sonymobile/flix/components/Component;

    move-result-object v0

    return-object v0
.end method

.method public getNext(ILcom/sonymobile/flix/components/Component;)Lcom/sonymobile/flix/components/Component;
    .locals 8
    .param p1, "direction"    # I
    .param p2, "from"    # Lcom/sonymobile/flix/components/Component;

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 582
    if-eqz p2, :cond_5

    .line 585
    iget-object v0, p0, Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;->mFocusables:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager$FocusProperties;

    .line 586
    .local v7, "p":Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager$FocusProperties;
    if-eqz v7, :cond_4

    .line 587
    const/4 v6, 0x0

    .line 588
    .local v6, "next":Lcom/sonymobile/flix/components/Component;
    sparse-switch p1, :sswitch_data_0

    .line 604
    :goto_0
    if-eqz v6, :cond_4

    .line 611
    .end local v6    # "next":Lcom/sonymobile/flix/components/Component;
    .end local v7    # "p":Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager$FocusProperties;
    :goto_1
    return-object v6

    .line 590
    .restart local v6    # "next":Lcom/sonymobile/flix/components/Component;
    .restart local v7    # "p":Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager$FocusProperties;
    :sswitch_0
    iget-object v0, v7, Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager$FocusProperties;->mNextLeft:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, v7, Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager$FocusProperties;->mNextLeft:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/flix/components/Component;

    move-object v6, v0

    .line 591
    :goto_2
    goto :goto_0

    :cond_0
    move-object v6, v5

    .line 590
    goto :goto_2

    .line 593
    :sswitch_1
    iget-object v0, v7, Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager$FocusProperties;->mNextUp:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    iget-object v0, v7, Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager$FocusProperties;->mNextUp:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/flix/components/Component;

    move-object v6, v0

    .line 594
    :goto_3
    goto :goto_0

    :cond_1
    move-object v6, v5

    .line 593
    goto :goto_3

    .line 596
    :sswitch_2
    iget-object v0, v7, Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager$FocusProperties;->mNextRight:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    iget-object v0, v7, Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager$FocusProperties;->mNextRight:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/flix/components/Component;

    move-object v6, v0

    .line 597
    :goto_4
    goto :goto_0

    :cond_2
    move-object v6, v5

    .line 596
    goto :goto_4

    .line 599
    :sswitch_3
    iget-object v0, v7, Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager$FocusProperties;->mNextDown:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_3

    iget-object v0, v7, Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager$FocusProperties;->mNextDown:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/flix/components/Component;

    move-object v6, v0

    .line 600
    :goto_5
    goto :goto_0

    :cond_3
    move-object v6, v5

    .line 599
    goto :goto_5

    .line 609
    .end local v6    # "next":Lcom/sonymobile/flix/components/Component;
    :cond_4
    iget v2, p0, Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;->mAllowedAngle:F

    invoke-virtual {p2}, Lcom/sonymobile/flix/components/Component;->getWorldX()F

    move-result v3

    invoke-virtual {p2}, Lcom/sonymobile/flix/components/Component;->getWorldY()F

    move-result v4

    move-object v0, p0

    move v1, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;->findClosest(IFFFLcom/sonymobile/flix/components/Component;)Lcom/sonymobile/flix/components/Component;

    move-result-object v6

    goto :goto_1

    .line 611
    .end local v7    # "p":Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager$FocusProperties;
    :cond_5
    iget v2, p0, Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;->mAllowedAngle:F

    move-object v0, p0

    move v1, p1

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;->findClosest(IFFFLcom/sonymobile/flix/components/Component;)Lcom/sonymobile/flix/components/Component;

    move-result-object v6

    goto :goto_1

    .line 588
    nop

    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_0
        0x21 -> :sswitch_1
        0x42 -> :sswitch_2
        0x82 -> :sswitch_3
    .end sparse-switch
.end method

.method public getSelected()Lcom/sonymobile/flix/components/Component;
    .locals 1

    .prologue
    .line 681
    iget-object v0, p0, Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;->mSelected:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;->mSelected:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/flix/components/Component;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public handleEvent(ILcom/sonymobile/flix/components/Component;I)V
    .locals 1
    .param p1, "event"    # I
    .param p2, "component"    # Lcom/sonymobile/flix/components/Component;
    .param p3, "direction"    # I

    .prologue
    .line 812
    iget-object v0, p0, Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;->mDefaultFocusEventHandler:Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager$FocusHandler;

    if-eqz v0, :cond_0

    .line 813
    iget-object v0, p0, Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;->mDefaultFocusEventHandler:Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager$FocusHandler;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager$FocusHandler;->onKeyboardFocusEvent(Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;ILcom/sonymobile/flix/components/Component;I)V

    .line 817
    :goto_0
    return-void

    .line 815
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;->handleEventDefault(ILcom/sonymobile/flix/components/Component;I)V

    goto :goto_0
.end method

.method public handleEventDefault(ILcom/sonymobile/flix/components/Component;I)V
    .locals 1
    .param p1, "event"    # I
    .param p2, "component"    # Lcom/sonymobile/flix/components/Component;
    .param p3, "direction"    # I

    .prologue
    .line 838
    packed-switch p1, :pswitch_data_0

    .line 852
    :goto_0
    :pswitch_0
    return-void

    .line 841
    :pswitch_1
    const v0, 0x7f003fff

    invoke-virtual {p2, v0}, Lcom/sonymobile/flix/components/Component;->setBackgroundColor(I)V

    goto :goto_0

    .line 844
    :pswitch_2
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/sonymobile/flix/components/Component;->setBackgroundColor(I)V

    goto :goto_0

    .line 847
    :pswitch_3
    const v0, -0x50ff5001

    invoke-virtual {p2, v0}, Lcom/sonymobile/flix/components/Component;->setBackgroundColor(I)V

    goto :goto_0

    .line 838
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected notifyEventListeners(ILcom/sonymobile/flix/components/Component;I)V
    .locals 3
    .param p1, "event"    # I
    .param p2, "component"    # Lcom/sonymobile/flix/components/Component;
    .param p3, "direction"    # I

    .prologue
    .line 855
    instance-of v2, p2, Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager$Focusable;

    if-eqz v2, :cond_0

    move-object v2, p2

    check-cast v2, Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager$Focusable;

    invoke-interface {v2, p0, p1, p2, p3}, Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager$Focusable;->onKeyboardFocusEvent(Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;ILcom/sonymobile/flix/components/Component;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 863
    :goto_0
    iget-object v2, p0, Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;->mFocusListeners:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;->mFocusListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 864
    .local v1, "nbrListeners":I
    :goto_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    if-ge v0, v1, :cond_2

    .line 865
    iget-object v2, p0, Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;->mFocusListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager$FocusHandler;

    invoke-interface {v2, p0, p1, p2, p3}, Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager$FocusHandler;->onKeyboardFocusEvent(Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;ILcom/sonymobile/flix/components/Component;I)V

    .line 864
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 860
    .end local v0    # "i":I
    .end local v1    # "nbrListeners":I
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;->handleEvent(ILcom/sonymobile/flix/components/Component;I)V

    goto :goto_0

    .line 863
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 867
    .restart local v0    # "i":I
    .restart local v1    # "nbrListeners":I
    :cond_2
    return-void
.end method

.method protected onChangeDistance(ILcom/sonymobile/flix/components/Component;Lcom/sonymobile/flix/components/Component;F)F
    .locals 0
    .param p1, "direction"    # I
    .param p2, "from"    # Lcom/sonymobile/flix/components/Component;
    .param p3, "to"    # Lcom/sonymobile/flix/components/Component;
    .param p4, "normalDistance"    # F

    .prologue
    .line 798
    return p4
.end method

.method public remove(Lcom/sonymobile/flix/components/Component;)V
    .locals 1
    .param p1, "component"    # Lcom/sonymobile/flix/components/Component;

    .prologue
    .line 274
    iget-object v0, p0, Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;->mFocusables:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    return-void
.end method

.method public removeFocusables(Lcom/sonymobile/flix/components/Component;)V
    .locals 3
    .param p1, "root"    # Lcom/sonymobile/flix/components/Component;

    .prologue
    .line 223
    instance-of v2, p1, Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager$Focusable;

    if-eqz v2, :cond_0

    .line 224
    invoke-virtual {p0, p1}, Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;->remove(Lcom/sonymobile/flix/components/Component;)V

    .line 226
    :cond_0
    invoke-virtual {p1}, Lcom/sonymobile/flix/components/Component;->getNbrChildren()I

    move-result v1

    .line 227
    .local v1, "nbrChildren":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 228
    invoke-virtual {p1, v0}, Lcom/sonymobile/flix/components/Component;->getChild(I)Lcom/sonymobile/flix/components/Component;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;->removeFocusables(Lcom/sonymobile/flix/components/Component;)V

    .line 227
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 230
    :cond_1
    return-void
.end method

.method public select()V
    .locals 3

    .prologue
    .line 667
    invoke-virtual {p0}, Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;->getFocused()Lcom/sonymobile/flix/components/Component;

    move-result-object v0

    .line 668
    .local v0, "focused":Lcom/sonymobile/flix/components/Component;
    if-eqz v0, :cond_0

    .line 669
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;->mSelected:Ljava/lang/ref/WeakReference;

    .line 671
    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;->notifyEventListeners(ILcom/sonymobile/flix/components/Component;I)V

    .line 673
    :cond_0
    return-void
.end method

.method public setAllowFocus(Z)V
    .locals 0
    .param p1, "allowed"    # Z

    .prologue
    .line 299
    iput-boolean p1, p0, Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;->mFocusAllowed:Z

    .line 300
    return-void
.end method

.method public setAllowedAngle(F)V
    .locals 0
    .param p1, "angle"    # F

    .prologue
    .line 319
    iput p1, p0, Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;->mAllowedAngle:F

    .line 320
    return-void
.end method

.method public setAnglePenalty(F)V
    .locals 2
    .param p1, "penalty"    # F

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 343
    const/4 v0, 0x0

    invoke-static {p1, v0, v1}, Lcom/sonymobile/flix/util/Utils;->clamp(FFF)F

    move-result p1

    .line 344
    mul-float v0, p1, p1

    sub-float v0, v1, v0

    div-float v0, v1, v0

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;->mAnglePenalty:F

    .line 345
    return-void
.end method

.method public setDefaultFocusHandler(Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager$FocusHandler;)V
    .locals 0
    .param p1, "focusHandler"    # Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager$FocusHandler;

    .prologue
    .line 156
    iput-object p1, p0, Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;->mDefaultFocusEventHandler:Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager$FocusHandler;

    .line 157
    return-void
.end method

.method public setLastFocused(Lcom/sonymobile/flix/components/Component;)V
    .locals 1
    .param p1, "lastFocused"    # Lcom/sonymobile/flix/components/Component;

    .prologue
    .line 547
    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    :goto_0
    iput-object v0, p0, Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;->mLastFocused:Ljava/lang/ref/WeakReference;

    .line 548
    return-void

    .line 547
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
