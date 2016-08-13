.class public Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot;
.super Ljava/lang/Object;
.source "ViewWrappersRoot.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot$RootView;,
        Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot$ViewWrapperFocusListener;
    }
.end annotation


# instance fields
.field protected mFocusListener:Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot$ViewWrapperFocusListener;

.field protected mRootView:Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot$RootView;

.field protected mViewWrapperMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot;->mViewWrapperMap:Ljava/util/HashMap;

    .line 81
    new-instance v0, Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot$RootView;

    invoke-direct {v0, p0, p1}, Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot$RootView;-><init>(Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot;->mRootView:Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot$RootView;

    .line 82
    iget-object v0, p0, Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot;->mRootView:Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot$RootView;

    invoke-virtual {v0}, Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot$RootView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot$1;

    invoke-direct {v1, p0}, Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot$1;-><init>(Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalFocusChangeListener(Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;)V

    .line 93
    return-void
.end method


# virtual methods
.method public addComponent(Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;Z)Z
    .locals 11
    .param p1, "component"    # Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;
    .param p2, "addViewToHierarchy"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 134
    invoke-virtual {p1}, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;->getView()Landroid/view/View;

    move-result-object v3

    .line 135
    .local v3, "wrappedView":Landroid/view/View;
    iget-object v6, p0, Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot;->mViewWrapperMap:Ljava/util/HashMap;

    monitor-enter v6

    .line 136
    :try_start_0
    iget-object v7, p0, Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot;->mViewWrapperMap:Ljava/util/HashMap;

    invoke-virtual {v7, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    instance-of v6, v3, Landroid/appwidget/AppWidgetHostView;

    if-eqz v6, :cond_0

    .line 149
    :try_start_1
    const-class v6, Landroid/view/View;

    const-string v7, "setIsRootNamespace"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    sget-object v10, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 151
    .local v2, "setIsRootNamespace":Ljava/lang/reflect/Method;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v2, v3, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2

    .line 167
    .end local v2    # "setIsRootNamespace":Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    .line 168
    invoke-virtual {p1}, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;->getContainer()Landroid/view/ViewGroup;

    move-result-object v0

    .line 169
    .local v0, "container":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    if-nez v6, :cond_1

    .line 170
    iget-object v5, p0, Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot;->mRootView:Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot$RootView;

    invoke-virtual {v5, v0}, Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot$RootView;->addView(Landroid/view/View;)V

    .line 174
    .end local v0    # "container":Landroid/view/ViewGroup;
    :goto_1
    return v4

    .line 137
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 152
    :catch_0
    move-exception v1

    .line 154
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    invoke-static {}, Lcom/sonymobile/flix/debug/FlixUsageWarnings$PlatformWarnings;->reflectionAccessFailed()V

    goto :goto_0

    .line 156
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v1

    .line 158
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-static {}, Lcom/sonymobile/flix/debug/FlixUsageWarnings$PlatformWarnings;->reflectionAccessFailed()V

    goto :goto_0

    .line 160
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v1

    .line 162
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-static {}, Lcom/sonymobile/flix/debug/FlixUsageWarnings$PlatformWarnings;->reflectionAccessFailed()V

    goto :goto_0

    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :cond_1
    move v4, v5

    .line 174
    goto :goto_1
.end method

.method public attachTo(Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "view"    # Landroid/view/ViewGroup;

    .prologue
    .line 112
    iget-object v0, p0, Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot;->mRootView:Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot$RootView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 113
    return-void
.end method

.method public clearFocus()V
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot;->mRootView:Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot$RootView;

    invoke-virtual {v0}, Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot$RootView;->focusLost()V

    .line 231
    return-void
.end method

.method public detach()V
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot;->mRootView:Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot$RootView;

    invoke-virtual {v0}, Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot$RootView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot;->mRootView:Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot$RootView;

    invoke-virtual {v0}, Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot$RootView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot;->mRootView:Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot$RootView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 122
    :cond_0
    return-void
.end method

.method public findViewWrapper(Landroid/view/View;)Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 260
    iget-object v1, p0, Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot;->mViewWrapperMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 261
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot;->mViewWrapperMap:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot;->mRootView:Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot$RootView;

    invoke-virtual {v2, p1}, Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot$RootView;->findWrappedView(Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;

    monitor-exit v1

    return-object v0

    .line 262
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public focus(Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;I)Z
    .locals 2
    .param p1, "component"    # Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;
    .param p2, "direction"    # I

    .prologue
    .line 212
    iget-object v0, p0, Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot;->mRootView:Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot$RootView;

    invoke-virtual {p1}, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot$RootView;->setFocus(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method protected notifyViewWrapperFocusEvent(ILandroid/view/View;I)V
    .locals 6
    .param p1, "event"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "direction"    # I

    .prologue
    .line 273
    if-nez p2, :cond_1

    .line 285
    :cond_0
    :goto_0
    return-void

    .line 276
    :cond_1
    invoke-virtual {p0, p2}, Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot;->findViewWrapper(Landroid/view/View;)Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;

    move-result-object v3

    .line 277
    .local v3, "component":Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;
    if-eqz v3, :cond_2

    .line 279
    invoke-virtual {v3, p1, v3, p2, p3}, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;->onViewWrapperFocusEvent(ILcom/sonymobile/flix/components/viewwrapper/ViewWrapper;Landroid/view/View;I)V

    .line 281
    :cond_2
    iget-object v0, p0, Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot;->mFocusListener:Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot$ViewWrapperFocusListener;

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot;->mFocusListener:Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot$ViewWrapperFocusListener;

    move-object v1, p0

    move v2, p1

    move-object v4, p2

    move v5, p3

    invoke-interface/range {v0 .. v5}, Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot$ViewWrapperFocusListener;->onViewWrapperFocusEvent(Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot;ILcom/sonymobile/flix/components/viewwrapper/ViewWrapper;Landroid/view/View;I)V

    goto :goto_0
.end method

.method public removeComponent(Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;Z)V
    .locals 3
    .param p1, "component"    # Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;
    .param p2, "removeViewFromHierarchy"    # Z

    .prologue
    .line 183
    if-eqz p2, :cond_0

    .line 184
    iget-object v0, p0, Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot;->mRootView:Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot$RootView;

    invoke-virtual {p1}, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;->getContainer()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot$RootView;->removeView(Landroid/view/View;)V

    .line 186
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot;->mViewWrapperMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 187
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot;->mViewWrapperMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    monitor-exit v1

    .line 189
    return-void

    .line 188
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public returnFocus()V
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot;->mRootView:Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot$RootView;

    invoke-virtual {v0}, Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot$RootView;->returnFocus()V

    .line 241
    return-void
.end method

.method public setFocusListener(Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot$ViewWrapperFocusListener;)V
    .locals 0
    .param p1, "focusListener"    # Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot$ViewWrapperFocusListener;

    .prologue
    .line 250
    iput-object p1, p0, Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot;->mFocusListener:Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot$ViewWrapperFocusListener;

    .line 251
    return-void
.end method
