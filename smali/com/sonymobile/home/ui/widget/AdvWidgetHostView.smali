.class public Lcom/sonymobile/home/ui/widget/AdvWidgetHostView;
.super Landroid/widget/FrameLayout;
.source "AdvWidgetHostView.java"

# interfaces
.implements Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionObserver;


# instance fields
.field private final mAdvWidgetExceptionHandler:Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionHandler;

.field private mInExceptionState:Z

.field private final mIsScrollable:Z

.field private final mProxy:Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionHandler;Z)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "proxy"    # Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;
    .param p3, "advWidgetExceptionHandler"    # Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionHandler;
    .param p4, "isScrollable"    # Z

    .prologue
    .line 39
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 40
    iput-object p2, p0, Lcom/sonymobile/home/ui/widget/AdvWidgetHostView;->mProxy:Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;

    .line 41
    iput-object p3, p0, Lcom/sonymobile/home/ui/widget/AdvWidgetHostView;->mAdvWidgetExceptionHandler:Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionHandler;

    .line 42
    iget-object v2, p0, Lcom/sonymobile/home/ui/widget/AdvWidgetHostView;->mAdvWidgetExceptionHandler:Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionHandler;

    invoke-virtual {v2, p0}, Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionHandler;->addAdvWidgetExceptionObserver(Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionObserver;)V

    .line 43
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sonymobile/home/ui/widget/AdvWidgetHostView;->mInExceptionState:Z

    .line 44
    iput-boolean p4, p0, Lcom/sonymobile/home/ui/widget/AdvWidgetHostView;->mIsScrollable:Z

    .line 45
    invoke-virtual {p2}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->getContentView()Landroid/view/View;

    move-result-object v1

    .line 46
    .local v1, "root":Landroid/view/View;
    if-nez v1, :cond_0

    .line 47
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "getContentView() must not return null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 51
    :cond_0
    invoke-static {p1}, Lcom/sonymobile/home/ui/widget/WidgetSizeCalculator;->getWidgetDefaultPaddingFromResources(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v0

    .line 52
    .local v0, "padding":Landroid/graphics/Rect;
    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 54
    invoke-virtual {p0, v1}, Lcom/sonymobile/home/ui/widget/AdvWidgetHostView;->addView(Landroid/view/View;)V

    .line 55
    return-void
.end method

.method private getChild()Landroid/view/View;
    .locals 2

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/sonymobile/home/ui/widget/AdvWidgetHostView;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/ui/widget/AdvWidgetHostView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 221
    iget-boolean v1, p0, Lcom/sonymobile/home/ui/widget/AdvWidgetHostView;->mInExceptionState:Z

    if-eqz v1, :cond_0

    .line 229
    :goto_0
    return-void

    .line 225
    :cond_0
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 226
    :catch_0
    move-exception v0

    .line 227
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/sonymobile/home/ui/widget/AdvWidgetHostView;->mProxy:Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;

    invoke-virtual {v1}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/home/ui/widget/AdvWidgetHostView;->handleException(Ljava/lang/Exception;Ljava/util/UUID;)V

    goto :goto_0
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    .line 233
    iget-boolean v2, p0, Lcom/sonymobile/home/ui/widget/AdvWidgetHostView;->mInExceptionState:Z

    if-eqz v2, :cond_0

    .line 240
    :goto_0
    return v1

    .line 237
    :cond_0
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 238
    :catch_0
    move-exception v0

    .line 239
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/sonymobile/home/ui/widget/AdvWidgetHostView;->mProxy:Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;

    invoke-virtual {v2}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/sonymobile/home/ui/widget/AdvWidgetHostView;->handleException(Ljava/lang/Exception;Ljava/util/UUID;)V

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x0

    .line 246
    iget-boolean v2, p0, Lcom/sonymobile/home/ui/widget/AdvWidgetHostView;->mInExceptionState:Z

    if-eqz v2, :cond_0

    .line 253
    :goto_0
    return v1

    .line 250
    :cond_0
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 251
    :catch_0
    move-exception v0

    .line 252
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/sonymobile/home/ui/widget/AdvWidgetHostView;->mProxy:Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;

    invoke-virtual {v2}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/sonymobile/home/ui/widget/AdvWidgetHostView;->handleException(Ljava/lang/Exception;Ljava/util/UUID;)V

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    .line 259
    iget-boolean v2, p0, Lcom/sonymobile/home/ui/widget/AdvWidgetHostView;->mInExceptionState:Z

    if-eqz v2, :cond_0

    .line 266
    :goto_0
    return v1

    .line 263
    :cond_0
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 264
    :catch_0
    move-exception v0

    .line 265
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/sonymobile/home/ui/widget/AdvWidgetHostView;->mProxy:Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;

    invoke-virtual {v2}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/sonymobile/home/ui/widget/AdvWidgetHostView;->handleException(Ljava/lang/Exception;Ljava/util/UUID;)V

    goto :goto_0
.end method

.method public getSnapshot()Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 58
    iget-object v2, p0, Lcom/sonymobile/home/ui/widget/AdvWidgetHostView;->mProxy:Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;

    invoke-virtual {v2}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->getSnapshot()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 59
    .local v1, "ret":Landroid/graphics/Bitmap;
    if-nez v1, :cond_0

    .line 60
    invoke-direct {p0}, Lcom/sonymobile/home/ui/widget/AdvWidgetHostView;->getChild()Landroid/view/View;

    move-result-object v0

    .line 61
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 62
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 63
    invoke-virtual {v0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 66
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    return-object v1
.end method

.method public getWidgetType()I
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/sonymobile/home/ui/widget/AdvWidgetHostView;->mProxy:Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;

    invoke-virtual {v0}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->getType()I

    move-result v0

    return v0
.end method

.method protected handleException(Ljava/lang/Exception;Ljava/util/UUID;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Exception;
    .param p2, "uuid"    # Ljava/util/UUID;

    .prologue
    .line 297
    iget-boolean v0, p0, Lcom/sonymobile/home/ui/widget/AdvWidgetHostView;->mInExceptionState:Z

    if-eqz v0, :cond_0

    .line 301
    :goto_0
    return-void

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/home/ui/widget/AdvWidgetHostView;->mAdvWidgetExceptionHandler:Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionHandler;

    invoke-virtual {v0, p1, p2}, Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionHandler;->handleException(Ljava/lang/Exception;Ljava/util/UUID;)V

    goto :goto_0
.end method

.method public isScrollable()Z
    .locals 1

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/sonymobile/home/ui/widget/AdvWidgetHostView;->mIsScrollable:Z

    return v0
.end method

.method public onCaughtException(Ljava/lang/Exception;Ljava/util/UUID;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Exception;
    .param p2, "uuid"    # Ljava/util/UUID;

    .prologue
    .line 318
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 145
    iget-boolean v1, p0, Lcom/sonymobile/home/ui/widget/AdvWidgetHostView;->mInExceptionState:Z

    if-eqz v1, :cond_0

    .line 153
    :goto_0
    return-void

    .line 149
    :cond_0
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 150
    :catch_0
    move-exception v0

    .line 151
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/sonymobile/home/ui/widget/AdvWidgetHostView;->mProxy:Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;

    invoke-virtual {v1}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/home/ui/widget/AdvWidgetHostView;->handleException(Ljava/lang/Exception;Ljava/util/UUID;)V

    goto :goto_0
.end method

.method public onExceptionUpdateState(Ljava/util/UUID;)V
    .locals 2
    .param p1, "uuid"    # Ljava/util/UUID;

    .prologue
    .line 326
    iget-object v1, p0, Lcom/sonymobile/home/ui/widget/AdvWidgetHostView;->mProxy:Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;

    invoke-virtual {v1}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->getUuid()Ljava/util/UUID;

    move-result-object v0

    .line 327
    .local v0, "id":Ljava/util/UUID;
    if-eqz v0, :cond_0

    .line 328
    invoke-virtual {v0, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 329
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sonymobile/home/ui/widget/AdvWidgetHostView;->mInExceptionState:Z

    .line 330
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/sonymobile/home/ui/widget/AdvWidgetHostView;->setVisibility(I)V

    .line 333
    :cond_0
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 2
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 157
    iget-boolean v1, p0, Lcom/sonymobile/home/ui/widget/AdvWidgetHostView;->mInExceptionState:Z

    if-eqz v1, :cond_0

    .line 165
    :goto_0
    return-void

    .line 161
    :cond_0
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->onFocusChanged(ZILandroid/graphics/Rect;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 162
    :catch_0
    move-exception v0

    .line 163
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/sonymobile/home/ui/widget/AdvWidgetHostView;->mProxy:Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;

    invoke-virtual {v1}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/home/ui/widget/AdvWidgetHostView;->handleException(Ljava/lang/Exception;Ljava/util/UUID;)V

    goto :goto_0
.end method

.method public onInterceptHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    .line 272
    iget-boolean v2, p0, Lcom/sonymobile/home/ui/widget/AdvWidgetHostView;->mInExceptionState:Z

    if-eqz v2, :cond_0

    .line 279
    :goto_0
    return v1

    .line 276
    :cond_0
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptHoverEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 277
    :catch_0
    move-exception v0

    .line 278
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/sonymobile/home/ui/widget/AdvWidgetHostView;->mProxy:Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;

    invoke-virtual {v2}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/sonymobile/home/ui/widget/AdvWidgetHostView;->handleException(Ljava/lang/Exception;Ljava/util/UUID;)V

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    .line 285
    iget-boolean v2, p0, Lcom/sonymobile/home/ui/widget/AdvWidgetHostView;->mInExceptionState:Z

    if-eqz v2, :cond_0

    .line 292
    :goto_0
    return v1

    .line 289
    :cond_0
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 290
    :catch_0
    move-exception v0

    .line 291
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/sonymobile/home/ui/widget/AdvWidgetHostView;->mProxy:Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;

    invoke-virtual {v2}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/sonymobile/home/ui/widget/AdvWidgetHostView;->handleException(Ljava/lang/Exception;Ljava/util/UUID;)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x0

    .line 169
    iget-boolean v2, p0, Lcom/sonymobile/home/ui/widget/AdvWidgetHostView;->mInExceptionState:Z

    if-eqz v2, :cond_0

    .line 176
    :goto_0
    return v1

    .line 173
    :cond_0
    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 174
    :catch_0
    move-exception v0

    .line 175
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/sonymobile/home/ui/widget/AdvWidgetHostView;->mProxy:Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;

    invoke-virtual {v2}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/sonymobile/home/ui/widget/AdvWidgetHostView;->handleException(Ljava/lang/Exception;Ljava/util/UUID;)V

    goto :goto_0
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x0

    .line 182
    iget-boolean v2, p0, Lcom/sonymobile/home/ui/widget/AdvWidgetHostView;->mInExceptionState:Z

    if-eqz v2, :cond_0

    .line 189
    :goto_0
    return v1

    .line 186
    :cond_0
    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onKeyLongPress(ILandroid/view/KeyEvent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 187
    :catch_0
    move-exception v0

    .line 188
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/sonymobile/home/ui/widget/AdvWidgetHostView;->mProxy:Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;

    invoke-virtual {v2}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/sonymobile/home/ui/widget/AdvWidgetHostView;->handleException(Ljava/lang/Exception;Ljava/util/UUID;)V

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x0

    .line 195
    iget-boolean v2, p0, Lcom/sonymobile/home/ui/widget/AdvWidgetHostView;->mInExceptionState:Z

    if-eqz v2, :cond_0

    .line 202
    :goto_0
    return v1

    .line 199
    :cond_0
    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onKeyUp(ILandroid/view/KeyEvent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 200
    :catch_0
    move-exception v0

    .line 201
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/sonymobile/home/ui/widget/AdvWidgetHostView;->mProxy:Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;

    invoke-virtual {v2}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/sonymobile/home/ui/widget/AdvWidgetHostView;->handleException(Ljava/lang/Exception;Ljava/util/UUID;)V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 120
    iget-boolean v1, p0, Lcom/sonymobile/home/ui/widget/AdvWidgetHostView;->mInExceptionState:Z

    if-eqz v1, :cond_0

    .line 128
    :goto_0
    return-void

    .line 124
    :cond_0
    :try_start_0
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 125
    :catch_0
    move-exception v0

    .line 126
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/sonymobile/home/ui/widget/AdvWidgetHostView;->mProxy:Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;

    invoke-virtual {v1}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/home/ui/widget/AdvWidgetHostView;->handleException(Ljava/lang/Exception;Ljava/util/UUID;)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v2, 0x0

    .line 132
    iget-boolean v1, p0, Lcom/sonymobile/home/ui/widget/AdvWidgetHostView;->mInExceptionState:Z

    if-eqz v1, :cond_0

    .line 133
    invoke-virtual {p0, v2, v2}, Lcom/sonymobile/home/ui/widget/AdvWidgetHostView;->setMeasuredDimension(II)V

    .line 141
    :goto_0
    return-void

    .line 137
    :cond_0
    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 138
    :catch_0
    move-exception v0

    .line 139
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/sonymobile/home/ui/widget/AdvWidgetHostView;->mProxy:Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;

    invoke-virtual {v1}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/home/ui/widget/AdvWidgetHostView;->handleException(Ljava/lang/Exception;Ljava/util/UUID;)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    .line 208
    iget-boolean v2, p0, Lcom/sonymobile/home/ui/widget/AdvWidgetHostView;->mInExceptionState:Z

    if-eqz v2, :cond_0

    .line 215
    :goto_0
    return v1

    .line 212
    :cond_0
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 213
    :catch_0
    move-exception v0

    .line 214
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/sonymobile/home/ui/widget/AdvWidgetHostView;->mProxy:Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;

    invoke-virtual {v2}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/sonymobile/home/ui/widget/AdvWidgetHostView;->handleException(Ljava/lang/Exception;Ljava/util/UUID;)V

    goto :goto_0
.end method

.method public onUncaughtException(Ljava/lang/Exception;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 322
    return-void
.end method

.method public requestFocus(ILandroid/graphics/Rect;)Z
    .locals 3
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v1, 0x0

    .line 305
    iget-boolean v2, p0, Lcom/sonymobile/home/ui/widget/AdvWidgetHostView;->mInExceptionState:Z

    if-eqz v2, :cond_0

    .line 312
    :goto_0
    return v1

    .line 309
    :cond_0
    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->requestFocus(ILandroid/graphics/Rect;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 310
    :catch_0
    move-exception v0

    .line 311
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/sonymobile/home/ui/widget/AdvWidgetHostView;->mProxy:Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;

    invoke-virtual {v2}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/sonymobile/home/ui/widget/AdvWidgetHostView;->handleException(Ljava/lang/Exception;Ljava/util/UUID;)V

    goto :goto_0
.end method

.method public setVisibility(I)V
    .locals 2
    .param p1, "visibility"    # I

    .prologue
    .line 108
    iget-boolean v1, p0, Lcom/sonymobile/home/ui/widget/AdvWidgetHostView;->mInExceptionState:Z

    if-eqz v1, :cond_0

    .line 116
    :goto_0
    return-void

    .line 112
    :cond_0
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 113
    :catch_0
    move-exception v0

    .line 114
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/sonymobile/home/ui/widget/AdvWidgetHostView;->mProxy:Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;

    invoke-virtual {v1}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/home/ui/widget/AdvWidgetHostView;->handleException(Ljava/lang/Exception;Ljava/util/UUID;)V

    goto :goto_0
.end method

.method protected unregisterObservingCaughtException()V
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lcom/sonymobile/home/ui/widget/AdvWidgetHostView;->mAdvWidgetExceptionHandler:Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionHandler;

    invoke-virtual {v0, p0}, Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionHandler;->removeAdvWidgetExceptionObserver(Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionObserver;)V

    .line 349
    return-void
.end method
