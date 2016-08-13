.class public Lcom/sonymobile/flix/test/ProxyViewRoot;
.super Landroid/widget/FrameLayout;
.source "ProxyViewRoot.java"


# instance fields
.field protected final mComponentTypes:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonymobile/flix/components/Scene;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "scene"    # Lcom/sonymobile/flix/components/Scene;

    .prologue
    .line 61
    const/4 v0, 0x3

    invoke-direct {p0, p1, p2, v0}, Lcom/sonymobile/flix/test/ProxyViewRoot;-><init>(Landroid/content/Context;Lcom/sonymobile/flix/components/Scene;I)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sonymobile/flix/components/Scene;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "scene"    # Lcom/sonymobile/flix/components/Scene;
    .param p3, "componentTypes"    # I

    .prologue
    const/4 v2, 0x1

    .line 65
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 66
    iput p3, p0, Lcom/sonymobile/flix/test/ProxyViewRoot;->mComponentTypes:I

    .line 68
    invoke-virtual {p2}, Lcom/sonymobile/flix/components/Scene;->getListeners()Lcom/sonymobile/flix/components/ComponentListeners;

    move-result-object v0

    new-instance v1, Lcom/sonymobile/flix/test/ProxyViewRoot$1;

    invoke-direct {v1, p0}, Lcom/sonymobile/flix/test/ProxyViewRoot$1;-><init>(Lcom/sonymobile/flix/test/ProxyViewRoot;)V

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/ComponentListeners;->addListener(Lcom/sonymobile/flix/components/ComponentListeners$HierarchyChangeListener;)V

    .line 80
    invoke-virtual {p0, p2}, Lcom/sonymobile/flix/test/ProxyViewRoot;->addProxyViewsForTree(Lcom/sonymobile/flix/components/Component;)V

    .line 82
    invoke-virtual {p0, v2}, Lcom/sonymobile/flix/test/ProxyViewRoot;->setWillNotCacheDrawing(Z)V

    .line 83
    invoke-virtual {p0, v2}, Lcom/sonymobile/flix/test/ProxyViewRoot;->setWillNotDraw(Z)V

    .line 84
    return-void
.end method

.method protected static isComponentWithId(Lcom/sonymobile/flix/components/Component;)Z
    .locals 2
    .param p0, "component"    # Lcom/sonymobile/flix/components/Component;

    .prologue
    .line 163
    invoke-virtual {p0}, Lcom/sonymobile/flix/components/Component;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static isComponentWithName(Lcom/sonymobile/flix/components/Component;)Z
    .locals 1
    .param p0, "component"    # Lcom/sonymobile/flix/components/Component;

    .prologue
    .line 167
    invoke-virtual {p0}, Lcom/sonymobile/flix/components/Component;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sonymobile/flix/components/Component;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static isTextComponent(Lcom/sonymobile/flix/components/Component;)Z
    .locals 1
    .param p0, "component"    # Lcom/sonymobile/flix/components/Component;

    .prologue
    .line 159
    instance-of v0, p0, Lcom/sonymobile/flix/components/Component$TextComponent;

    return v0
.end method


# virtual methods
.method protected addProxyView(Lcom/sonymobile/flix/components/Component;)Landroid/view/View;
    .locals 2
    .param p1, "component"    # Lcom/sonymobile/flix/components/Component;

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/sonymobile/flix/test/ProxyViewRoot;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lcom/sonymobile/flix/test/ProxyViewRoot;->onCreateProxyView(Landroid/content/Context;Lcom/sonymobile/flix/components/Component;)Landroid/view/View;

    move-result-object v0

    .line 102
    .local v0, "proxyView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {p1}, Lcom/sonymobile/flix/components/Component;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    move-object v1, v0

    .line 104
    check-cast v1, Lcom/sonymobile/flix/test/TestProxy;

    invoke-interface {v1, p1}, Lcom/sonymobile/flix/test/TestProxy;->onAddedForComponent(Lcom/sonymobile/flix/components/Component;)V

    .line 105
    invoke-virtual {p0, v0}, Lcom/sonymobile/flix/test/ProxyViewRoot;->addView(Landroid/view/View;)V

    .line 107
    :cond_0
    return-object v0
.end method

.method protected addProxyViewsForTree(Lcom/sonymobile/flix/components/Component;)V
    .locals 3
    .param p1, "root"    # Lcom/sonymobile/flix/components/Component;

    .prologue
    .line 120
    invoke-virtual {p0, p1}, Lcom/sonymobile/flix/test/ProxyViewRoot;->addProxyView(Lcom/sonymobile/flix/components/Component;)Landroid/view/View;

    .line 121
    invoke-virtual {p1}, Lcom/sonymobile/flix/components/Component;->getNbrChildren()I

    move-result v1

    .line 122
    .local v1, "nbrChildren":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 123
    invoke-virtual {p1, v0}, Lcom/sonymobile/flix/components/Component;->getChild(I)Lcom/sonymobile/flix/components/Component;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sonymobile/flix/test/ProxyViewRoot;->addProxyViewsForTree(Lcom/sonymobile/flix/components/Component;)V

    .line 122
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 125
    :cond_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 137
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 141
    return-void
.end method

.method protected findProxyView(Lcom/sonymobile/flix/components/Component;)Landroid/view/View;
    .locals 5
    .param p1, "child"    # Lcom/sonymobile/flix/components/Component;

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/sonymobile/flix/test/ProxyViewRoot;->getChildCount()I

    move-result v2

    .line 88
    .local v2, "nbrChildren":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 89
    invoke-virtual {p0, v1}, Lcom/sonymobile/flix/test/ProxyViewRoot;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 90
    .local v3, "view":Landroid/view/View;
    instance-of v4, v3, Lcom/sonymobile/flix/test/TestProxy;

    if-eqz v4, :cond_0

    move-object v4, v3

    .line 91
    check-cast v4, Lcom/sonymobile/flix/test/TestProxy;

    invoke-interface {v4}, Lcom/sonymobile/flix/test/TestProxy;->getComponent()Lcom/sonymobile/flix/components/Component;

    move-result-object v0

    .line 92
    .local v0, "component":Lcom/sonymobile/flix/components/Component;
    if-ne v0, p1, :cond_0

    .line 97
    .end local v0    # "component":Lcom/sonymobile/flix/components/Component;
    .end local v3    # "view":Landroid/view/View;
    :goto_1
    return-object v3

    .line 88
    .restart local v3    # "view":Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 97
    .end local v3    # "view":Landroid/view/View;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method protected onCreateProxyView(Landroid/content/Context;Lcom/sonymobile/flix/components/Component;)Landroid/view/View;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "component"    # Lcom/sonymobile/flix/components/Component;

    .prologue
    const/4 v0, 0x0

    .line 144
    invoke-static {p2}, Lcom/sonymobile/flix/test/ProxyViewRoot;->isTextComponent(Lcom/sonymobile/flix/components/Component;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 145
    iget v1, p0, Lcom/sonymobile/flix/test/ProxyViewRoot;->mComponentTypes:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    new-instance v0, Lcom/sonymobile/flix/test/ProxyTextView;

    invoke-direct {v0, p1, p2}, Lcom/sonymobile/flix/test/ProxyTextView;-><init>(Landroid/content/Context;Lcom/sonymobile/flix/components/Component;)V

    .line 154
    :cond_0
    :goto_0
    return-object v0

    .line 147
    :cond_1
    invoke-static {p2}, Lcom/sonymobile/flix/test/ProxyViewRoot;->isComponentWithId(Lcom/sonymobile/flix/components/Component;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 148
    iget v1, p0, Lcom/sonymobile/flix/test/ProxyViewRoot;->mComponentTypes:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/sonymobile/flix/test/ProxyView;

    invoke-direct {v0, p1, p2}, Lcom/sonymobile/flix/test/ProxyView;-><init>(Landroid/content/Context;Lcom/sonymobile/flix/components/Component;)V

    goto :goto_0

    .line 150
    :cond_2
    invoke-static {p2}, Lcom/sonymobile/flix/test/ProxyViewRoot;->isComponentWithName(Lcom/sonymobile/flix/components/Component;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 151
    iget v1, p0, Lcom/sonymobile/flix/test/ProxyViewRoot;->mComponentTypes:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    new-instance v0, Lcom/sonymobile/flix/test/ProxyTextView;

    invoke-direct {v0, p1, p2}, Lcom/sonymobile/flix/test/ProxyTextView;-><init>(Landroid/content/Context;Lcom/sonymobile/flix/components/Component;)V

    goto :goto_0

    .line 154
    :cond_3
    iget v1, p0, Lcom/sonymobile/flix/test/ProxyViewRoot;->mComponentTypes:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    new-instance v0, Lcom/sonymobile/flix/test/ProxyView;

    invoke-direct {v0, p1, p2}, Lcom/sonymobile/flix/test/ProxyView;-><init>(Landroid/content/Context;Lcom/sonymobile/flix/components/Component;)V

    goto :goto_0
.end method

.method protected removeProxyView(Lcom/sonymobile/flix/components/Component;)Landroid/view/View;
    .locals 1
    .param p1, "component"    # Lcom/sonymobile/flix/components/Component;

    .prologue
    .line 112
    invoke-virtual {p0, p1}, Lcom/sonymobile/flix/test/ProxyViewRoot;->findProxyView(Lcom/sonymobile/flix/components/Component;)Landroid/view/View;

    move-result-object v0

    .line 113
    .local v0, "proxyView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {p0, v0}, Lcom/sonymobile/flix/test/ProxyViewRoot;->removeView(Landroid/view/View;)V

    .line 116
    :cond_0
    return-object v0
.end method

.method protected removeProxyViewsForTree(Lcom/sonymobile/flix/components/Component;)V
    .locals 3
    .param p1, "root"    # Lcom/sonymobile/flix/components/Component;

    .prologue
    .line 128
    invoke-virtual {p0, p1}, Lcom/sonymobile/flix/test/ProxyViewRoot;->removeProxyView(Lcom/sonymobile/flix/components/Component;)Landroid/view/View;

    .line 129
    invoke-virtual {p1}, Lcom/sonymobile/flix/components/Component;->getNbrChildren()I

    move-result v1

    .line 130
    .local v1, "nbrChildren":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 131
    invoke-virtual {p1, v0}, Lcom/sonymobile/flix/components/Component;->getChild(I)Lcom/sonymobile/flix/components/Component;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sonymobile/flix/test/ProxyViewRoot;->removeProxyViewsForTree(Lcom/sonymobile/flix/components/Component;)V

    .line 130
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 133
    :cond_0
    return-void
.end method
