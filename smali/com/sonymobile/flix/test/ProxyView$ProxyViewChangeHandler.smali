.class public Lcom/sonymobile/flix/test/ProxyView$ProxyViewChangeHandler;
.super Lcom/sonymobile/flix/components/ComponentListeners$ChangeListener$Adapter;
.source "ProxyView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/flix/test/ProxyView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProxyViewChangeHandler"
.end annotation


# instance fields
.field private final mProxyView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1, "proxyView"    # Landroid/view/View;

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/sonymobile/flix/components/ComponentListeners$ChangeListener$Adapter;-><init>()V

    .line 133
    iput-object p1, p0, Lcom/sonymobile/flix/test/ProxyView$ProxyViewChangeHandler;->mProxyView:Landroid/view/View;

    .line 134
    return-void
.end method


# virtual methods
.method public onIdChanged(Lcom/sonymobile/flix/components/Component;I)V
    .locals 1
    .param p1, "component"    # Lcom/sonymobile/flix/components/Component;
    .param p2, "id"    # I

    .prologue
    .line 138
    iget-object v0, p0, Lcom/sonymobile/flix/test/ProxyView$ProxyViewChangeHandler;->mProxyView:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setId(I)V

    .line 139
    return-void
.end method
