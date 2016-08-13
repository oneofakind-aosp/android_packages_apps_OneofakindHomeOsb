.class public Lcom/sonymobile/flix/components/Button;
.super Lcom/sonymobile/flix/components/TouchArea;
.source "Button.java"


# instance fields
.field protected mButtonListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/flix/components/ButtonListener;",
            ">;"
        }
    .end annotation
.end field

.field protected mConsumeEvents:Z

.field protected mDragged:Z

.field protected mPressed:Z

.field protected mReleaseOnClick:Z

.field protected mReleaseOnDrag:I

.field protected mReleaseOnLongPress:Z

.field protected mSourceEvent:Landroid/view/MotionEvent;


# direct methods
.method public constructor <init>(Lcom/sonymobile/flix/components/Scene;)V
    .locals 0
    .param p1, "scene"    # Lcom/sonymobile/flix/components/Scene;

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/sonymobile/flix/components/TouchArea;-><init>(Lcom/sonymobile/flix/components/Scene;)V

    .line 76
    invoke-direct {p0}, Lcom/sonymobile/flix/components/Button;->init()V

    .line 77
    return-void
.end method

.method public constructor <init>(Lcom/sonymobile/flix/components/Scene;FF)V
    .locals 0
    .param p1, "scene"    # Lcom/sonymobile/flix/components/Scene;
    .param p2, "width"    # F
    .param p3, "height"    # F

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/sonymobile/flix/components/TouchArea;-><init>(Lcom/sonymobile/flix/components/Scene;)V

    .line 90
    invoke-virtual {p0, p2, p3}, Lcom/sonymobile/flix/components/Button;->setSize(FF)V

    .line 91
    invoke-direct {p0}, Lcom/sonymobile/flix/components/Button;->init()V

    .line 92
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 95
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/sonymobile/flix/components/Button;->setTouchSlop(I)V

    .line 96
    invoke-virtual {p0, v1}, Lcom/sonymobile/flix/components/Button;->setReleaseOnClick(Z)V

    .line 97
    invoke-virtual {p0, v1}, Lcom/sonymobile/flix/components/Button;->setReleaseOnLongPress(Z)V

    .line 98
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonymobile/flix/components/Button;->setReleaseOnDrag(I)V

    .line 99
    invoke-virtual {p0, v1}, Lcom/sonymobile/flix/components/Button;->setConsumeTouchEvents(Z)V

    .line 100
    return-void
.end method


# virtual methods
.method public addButtonListener(Lcom/sonymobile/flix/components/ButtonListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sonymobile/flix/components/ButtonListener;

    .prologue
    .line 189
    iget-object v0, p0, Lcom/sonymobile/flix/components/Button;->mButtonListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 190
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/flix/components/Button;->mButtonListeners:Ljava/util/ArrayList;

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/flix/components/Button;->mButtonListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    return-void
.end method

.method public click(FF)V
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 316
    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/flix/components/Button;->onClick(FF)V

    .line 317
    iget-object v2, p0, Lcom/sonymobile/flix/components/Button;->mButtonListeners:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sonymobile/flix/components/Button;->mButtonListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 318
    .local v1, "nbrListeners":I
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 319
    iget-object v2, p0, Lcom/sonymobile/flix/components/Button;->mButtonListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/flix/components/ButtonListener;

    invoke-interface {v2, p0, p1, p2}, Lcom/sonymobile/flix/components/ButtonListener;->onClick(Lcom/sonymobile/flix/components/Button;FF)V

    .line 318
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 317
    .end local v0    # "i":I
    .end local v1    # "nbrListeners":I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 321
    .restart local v0    # "i":I
    .restart local v1    # "nbrListeners":I
    :cond_1
    return-void
.end method

.method public drag(FF)V
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 352
    iget-boolean v2, p0, Lcom/sonymobile/flix/components/Button;->mDragged:Z

    if-nez v2, :cond_1

    .line 353
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sonymobile/flix/components/Button;->mDragged:Z

    .line 354
    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/flix/components/Button;->onDrag(FF)V

    .line 355
    iget-object v2, p0, Lcom/sonymobile/flix/components/Button;->mButtonListeners:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sonymobile/flix/components/Button;->mButtonListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 356
    .local v1, "nbrListeners":I
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 357
    iget-object v2, p0, Lcom/sonymobile/flix/components/Button;->mButtonListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/flix/components/ButtonListener;

    invoke-interface {v2, p0, p1, p2}, Lcom/sonymobile/flix/components/ButtonListener;->onDrag(Lcom/sonymobile/flix/components/Button;FF)V

    .line 356
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 355
    .end local v0    # "i":I
    .end local v1    # "nbrListeners":I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 360
    :cond_1
    return-void
.end method

.method public hoverEnter()V
    .locals 3

    .prologue
    .line 367
    invoke-virtual {p0}, Lcom/sonymobile/flix/components/Button;->onHoverEnter()V

    .line 368
    iget-object v2, p0, Lcom/sonymobile/flix/components/Button;->mButtonListeners:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sonymobile/flix/components/Button;->mButtonListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 369
    .local v1, "nbrListeners":I
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 370
    iget-object v2, p0, Lcom/sonymobile/flix/components/Button;->mButtonListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/flix/components/ButtonListener;

    invoke-interface {v2, p0}, Lcom/sonymobile/flix/components/ButtonListener;->onHoverEnter(Lcom/sonymobile/flix/components/Button;)V

    .line 369
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 368
    .end local v0    # "i":I
    .end local v1    # "nbrListeners":I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 372
    .restart local v0    # "i":I
    .restart local v1    # "nbrListeners":I
    :cond_1
    return-void
.end method

.method public hoverExit()V
    .locals 3

    .prologue
    .line 380
    invoke-virtual {p0}, Lcom/sonymobile/flix/components/Button;->onHoverExit()V

    .line 381
    iget-object v2, p0, Lcom/sonymobile/flix/components/Button;->mButtonListeners:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sonymobile/flix/components/Button;->mButtonListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 382
    .local v1, "nbrListeners":I
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 383
    iget-object v2, p0, Lcom/sonymobile/flix/components/Button;->mButtonListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/flix/components/ButtonListener;

    invoke-interface {v2, p0}, Lcom/sonymobile/flix/components/ButtonListener;->onHoverExit(Lcom/sonymobile/flix/components/Button;)V

    .line 382
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 381
    .end local v0    # "i":I
    .end local v1    # "nbrListeners":I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 385
    .restart local v0    # "i":I
    .restart local v1    # "nbrListeners":I
    :cond_1
    return-void
.end method

.method public isPressed()Z
    .locals 1

    .prologue
    .line 393
    iget-boolean v0, p0, Lcom/sonymobile/flix/components/Button;->mPressed:Z

    return v0
.end method

.method public longPress(FF)V
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 334
    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/flix/components/Button;->onLongPress(FF)V

    .line 335
    iget-object v2, p0, Lcom/sonymobile/flix/components/Button;->mButtonListeners:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sonymobile/flix/components/Button;->mButtonListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 336
    .local v1, "nbrListeners":I
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 337
    iget-object v2, p0, Lcom/sonymobile/flix/components/Button;->mButtonListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/flix/components/ButtonListener;

    invoke-interface {v2, p0, p1, p2}, Lcom/sonymobile/flix/components/ButtonListener;->onLongPress(Lcom/sonymobile/flix/components/Button;FF)V

    .line 336
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 335
    .end local v0    # "i":I
    .end local v1    # "nbrListeners":I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 339
    .restart local v0    # "i":I
    .restart local v1    # "nbrListeners":I
    :cond_1
    return-void
.end method

.method public onClick(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 421
    return-void
.end method

.method public onDrag(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 441
    return-void
.end method

.method public onHover(IZFFLandroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # I
    .param p2, "inside"    # Z
    .param p3, "localX"    # F
    .param p4, "localY"    # F
    .param p5, "sourceEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 257
    iput-object p5, p0, Lcom/sonymobile/flix/components/Button;->mSourceEvent:Landroid/view/MotionEvent;

    .line 258
    packed-switch p1, :pswitch_data_0

    .line 268
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/flix/components/Button;->mSourceEvent:Landroid/view/MotionEvent;

    .line 269
    if-eqz p2, :cond_0

    iget-boolean v0, p0, Lcom/sonymobile/flix/components/Button;->mConsumeEvents:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    return v0

    .line 260
    :pswitch_0
    invoke-virtual {p0}, Lcom/sonymobile/flix/components/Button;->hoverEnter()V

    goto :goto_0

    .line 263
    :pswitch_1
    invoke-virtual {p0}, Lcom/sonymobile/flix/components/Button;->hoverExit()V

    goto :goto_0

    .line 269
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 258
    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onHoverEnter()V
    .locals 0

    .prologue
    .line 447
    return-void
.end method

.method public onHoverExit()V
    .locals 0

    .prologue
    .line 453
    return-void
.end method

.method public onLongPress(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 432
    return-void
.end method

.method public onPress(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 403
    return-void
.end method

.method public onRelease(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 412
    return-void
.end method

.method public onTouch(IZFFLandroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # I
    .param p2, "inside"    # Z
    .param p3, "localX"    # F
    .param p4, "localY"    # F
    .param p5, "sourceEvent"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 209
    iput-object p5, p0, Lcom/sonymobile/flix/components/Button;->mSourceEvent:Landroid/view/MotionEvent;

    .line 210
    sparse-switch p1, :sswitch_data_0

    .line 250
    :cond_0
    :goto_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sonymobile/flix/components/Button;->mSourceEvent:Landroid/view/MotionEvent;

    .line 251
    if-eqz p2, :cond_3

    iget-boolean v2, p0, Lcom/sonymobile/flix/components/Button;->mConsumeEvents:Z

    if-eqz v2, :cond_3

    :goto_1
    return v0

    .line 212
    :sswitch_0
    if-eqz p2, :cond_0

    .line 213
    iget-object v2, p0, Lcom/sonymobile/flix/components/Button;->mLocalLatest:[F

    aget v2, v2, v1

    iget-object v3, p0, Lcom/sonymobile/flix/components/Button;->mLocalLatest:[F

    aget v3, v3, v0

    invoke-virtual {p0, v2, v3}, Lcom/sonymobile/flix/components/Button;->press(FF)V

    goto :goto_0

    .line 217
    :sswitch_1
    iget-object v2, p0, Lcom/sonymobile/flix/components/Button;->mLocalLatest:[F

    aget v2, v2, v1

    iget-object v3, p0, Lcom/sonymobile/flix/components/Button;->mLocalLatest:[F

    aget v3, v3, v0

    invoke-virtual {p0, v2, v3}, Lcom/sonymobile/flix/components/Button;->drag(FF)V

    .line 218
    iget v2, p0, Lcom/sonymobile/flix/components/Button;->mReleaseOnDrag:I

    if-nez v2, :cond_0

    .line 219
    iget-object v2, p0, Lcom/sonymobile/flix/components/Button;->mLocalLatest:[F

    aget v2, v2, v1

    iget-object v3, p0, Lcom/sonymobile/flix/components/Button;->mLocalLatest:[F

    aget v3, v3, v0

    invoke-virtual {p0, v2, v3}, Lcom/sonymobile/flix/components/Button;->release(FF)V

    .line 220
    invoke-virtual {p0}, Lcom/sonymobile/flix/components/Button;->abortTouchGesture()V

    goto :goto_0

    .line 224
    :sswitch_2
    iget v2, p0, Lcom/sonymobile/flix/components/Button;->mReleaseOnDrag:I

    if-ne v2, v0, :cond_0

    invoke-virtual {p0}, Lcom/sonymobile/flix/components/Button;->isWithinTouchSlop()Z

    move-result v2

    if-nez v2, :cond_0

    .line 225
    iget-object v2, p0, Lcom/sonymobile/flix/components/Button;->mLocalLatest:[F

    aget v2, v2, v1

    iget-object v3, p0, Lcom/sonymobile/flix/components/Button;->mLocalLatest:[F

    aget v3, v3, v0

    invoke-virtual {p0, v2, v3}, Lcom/sonymobile/flix/components/Button;->release(FF)V

    .line 226
    invoke-virtual {p0}, Lcom/sonymobile/flix/components/Button;->abortTouchGesture()V

    goto :goto_0

    .line 230
    :sswitch_3
    iget-boolean v2, p0, Lcom/sonymobile/flix/components/Button;->mReleaseOnClick:Z

    if-eqz v2, :cond_1

    .line 231
    iget-object v2, p0, Lcom/sonymobile/flix/components/Button;->mLocalLatest:[F

    aget v2, v2, v1

    iget-object v3, p0, Lcom/sonymobile/flix/components/Button;->mLocalLatest:[F

    aget v3, v3, v0

    invoke-virtual {p0, v2, v3}, Lcom/sonymobile/flix/components/Button;->release(FF)V

    .line 233
    :cond_1
    iget-object v2, p0, Lcom/sonymobile/flix/components/Button;->mLocalLatest:[F

    aget v2, v2, v1

    iget-object v3, p0, Lcom/sonymobile/flix/components/Button;->mLocalLatest:[F

    aget v3, v3, v0

    invoke-virtual {p0, v2, v3}, Lcom/sonymobile/flix/components/Button;->click(FF)V

    goto :goto_0

    .line 236
    :sswitch_4
    iget-boolean v2, p0, Lcom/sonymobile/flix/components/Button;->mReleaseOnLongPress:Z

    if-eqz v2, :cond_2

    .line 237
    iget-object v2, p0, Lcom/sonymobile/flix/components/Button;->mLocalLatest:[F

    aget v2, v2, v1

    iget-object v3, p0, Lcom/sonymobile/flix/components/Button;->mLocalLatest:[F

    aget v3, v3, v0

    invoke-virtual {p0, v2, v3}, Lcom/sonymobile/flix/components/Button;->release(FF)V

    .line 238
    invoke-virtual {p0}, Lcom/sonymobile/flix/components/Button;->abortTouchGesture()V

    .line 240
    :cond_2
    iget-object v2, p0, Lcom/sonymobile/flix/components/Button;->mLocalLatest:[F

    aget v2, v2, v1

    iget-object v3, p0, Lcom/sonymobile/flix/components/Button;->mLocalLatest:[F

    aget v3, v3, v0

    invoke-virtual {p0, v2, v3}, Lcom/sonymobile/flix/components/Button;->longPress(FF)V

    goto/16 :goto_0

    .line 243
    :sswitch_5
    iget-boolean v2, p0, Lcom/sonymobile/flix/components/Button;->mPressed:Z

    if-eqz v2, :cond_0

    .line 244
    iget-object v2, p0, Lcom/sonymobile/flix/components/Button;->mLocalLatest:[F

    aget v2, v2, v1

    iget-object v3, p0, Lcom/sonymobile/flix/components/Button;->mLocalLatest:[F

    aget v3, v3, v0

    invoke-virtual {p0, v2, v3}, Lcom/sonymobile/flix/components/Button;->release(FF)V

    goto/16 :goto_0

    :cond_3
    move v0, v1

    .line 251
    goto/16 :goto_1

    .line 210
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_3
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_4
        0x5 -> :sswitch_2
        0xf -> :sswitch_5
    .end sparse-switch
.end method

.method public press(FF)V
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v1, 0x0

    .line 280
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sonymobile/flix/components/Button;->mPressed:Z

    .line 281
    iput-boolean v1, p0, Lcom/sonymobile/flix/components/Button;->mDragged:Z

    .line 282
    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/flix/components/Button;->onPress(FF)V

    .line 283
    iget-object v2, p0, Lcom/sonymobile/flix/components/Button;->mButtonListeners:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sonymobile/flix/components/Button;->mButtonListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 284
    .local v1, "nbrListeners":I
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 285
    iget-object v2, p0, Lcom/sonymobile/flix/components/Button;->mButtonListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/flix/components/ButtonListener;

    invoke-interface {v2, p0, p1, p2}, Lcom/sonymobile/flix/components/ButtonListener;->onPress(Lcom/sonymobile/flix/components/Button;FF)V

    .line 284
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 287
    :cond_1
    return-void
.end method

.method public release(FF)V
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v1, 0x0

    .line 297
    iput-boolean v1, p0, Lcom/sonymobile/flix/components/Button;->mPressed:Z

    .line 298
    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/flix/components/Button;->onRelease(FF)V

    .line 299
    iget-object v2, p0, Lcom/sonymobile/flix/components/Button;->mButtonListeners:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sonymobile/flix/components/Button;->mButtonListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 300
    .local v1, "nbrListeners":I
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 301
    iget-object v2, p0, Lcom/sonymobile/flix/components/Button;->mButtonListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/flix/components/ButtonListener;

    invoke-interface {v2, p0, p1, p2}, Lcom/sonymobile/flix/components/ButtonListener;->onRelease(Lcom/sonymobile/flix/components/Button;FF)V

    .line 300
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 303
    :cond_1
    return-void
.end method

.method public removeButtonListener(Lcom/sonymobile/flix/components/ButtonListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sonymobile/flix/components/ButtonListener;

    .prologue
    .line 201
    iget-object v0, p0, Lcom/sonymobile/flix/components/Button;->mButtonListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/sonymobile/flix/components/Button;->mButtonListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 204
    :cond_0
    return-void
.end method

.method public setConsumeTouchEvents(Z)V
    .locals 0
    .param p1, "consume"    # Z

    .prologue
    .line 167
    iput-boolean p1, p0, Lcom/sonymobile/flix/components/Button;->mConsumeEvents:Z

    .line 168
    return-void
.end method

.method public setReleaseOnClick(Z)V
    .locals 0
    .param p1, "releaseOnClick"    # Z

    .prologue
    .line 113
    iput-boolean p1, p0, Lcom/sonymobile/flix/components/Button;->mReleaseOnClick:Z

    .line 114
    return-void
.end method

.method public setReleaseOnDrag(I)V
    .locals 1
    .param p1, "when"    # I

    .prologue
    const/4 v0, 0x1

    .line 147
    iput p1, p0, Lcom/sonymobile/flix/components/Button;->mReleaseOnDrag:I

    .line 148
    if-ne p1, v0, :cond_0

    .line 149
    invoke-virtual {p0, v0}, Lcom/sonymobile/flix/components/Button;->setTrackTouchDragging(Z)V

    .line 151
    :cond_0
    return-void
.end method

.method public setReleaseOnLongPress(Z)V
    .locals 0
    .param p1, "releaseOnLongPress"    # Z

    .prologue
    .line 128
    iput-boolean p1, p0, Lcom/sonymobile/flix/components/Button;->mReleaseOnLongPress:Z

    .line 129
    return-void
.end method
