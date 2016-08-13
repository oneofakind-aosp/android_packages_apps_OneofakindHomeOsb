.class public Lcom/sonymobile/home/presenter/view/AdvWidgetComponent;
.super Lcom/sonymobile/home/presenter/view/TouchListeningViewWrapper;
.source "AdvWidgetComponent.java"


# instance fields
.field private mHomeAdvWidget:Lcom/sonymobile/home/ui/widget/HomeAdvWidget;


# direct methods
.method public constructor <init>(Lcom/sonymobile/flix/components/Scene;Lcom/sonymobile/home/ui/widget/HomeAdvWidget;Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper$ViewWrapperContainer;)V
    .locals 6
    .param p1, "scene"    # Lcom/sonymobile/flix/components/Scene;
    .param p2, "widget"    # Lcom/sonymobile/home/ui/widget/HomeAdvWidget;
    .param p3, "container"    # Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper$ViewWrapperContainer;

    .prologue
    const/4 v3, -0x1

    .line 21
    invoke-virtual {p2}, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->getHostView()Lcom/sonymobile/home/ui/widget/AdvWidgetHostView;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move v4, v3

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/home/presenter/view/TouchListeningViewWrapper;-><init>(Lcom/sonymobile/flix/components/Scene;Landroid/view/View;IILcom/sonymobile/flix/components/viewwrapper/ViewWrapper$ViewWrapperContainer;)V

    .line 22
    iput-object p2, p0, Lcom/sonymobile/home/presenter/view/AdvWidgetComponent;->mHomeAdvWidget:Lcom/sonymobile/home/ui/widget/HomeAdvWidget;

    .line 23
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/presenter/view/AdvWidgetComponent;->setAutoUpdateViewBounds(Z)V

    .line 24
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/presenter/view/AdvWidgetComponent;->setSizeOnAdd(Z)V

    .line 25
    return-void
.end method


# virtual methods
.method public getHomeAdvWidget()Lcom/sonymobile/home/ui/widget/HomeAdvWidget;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/sonymobile/home/presenter/view/AdvWidgetComponent;->mHomeAdvWidget:Lcom/sonymobile/home/ui/widget/HomeAdvWidget;

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/sonymobile/home/presenter/view/AdvWidgetComponent;->mHomeAdvWidget:Lcom/sonymobile/home/ui/widget/HomeAdvWidget;

    invoke-virtual {v0}, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->onCreate()Z

    .line 39
    return-void
.end method

.method public onDefocus()V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/sonymobile/home/presenter/view/AdvWidgetComponent;->mHomeAdvWidget:Lcom/sonymobile/home/ui/widget/HomeAdvWidget;

    invoke-virtual {v0}, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->onDefocus()Z

    .line 55
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sonymobile/home/presenter/view/AdvWidgetComponent;->mHomeAdvWidget:Lcom/sonymobile/home/ui/widget/HomeAdvWidget;

    invoke-virtual {v0}, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->onDestroy()Z

    .line 67
    return-void
.end method

.method public onFocus()V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sonymobile/home/presenter/view/AdvWidgetComponent;->mHomeAdvWidget:Lcom/sonymobile/home/ui/widget/HomeAdvWidget;

    invoke-virtual {v0}, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->onFocus()Z

    .line 51
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sonymobile/home/presenter/view/AdvWidgetComponent;->mHomeAdvWidget:Lcom/sonymobile/home/ui/widget/HomeAdvWidget;

    invoke-virtual {v0}, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->onPause()Z

    .line 59
    return-void
.end method

.method public onRemovedFrom(Lcom/sonymobile/flix/components/Component;)V
    .locals 1
    .param p1, "parent"    # Lcom/sonymobile/flix/components/Component;

    .prologue
    .line 33
    invoke-super {p0, p1}, Lcom/sonymobile/home/presenter/view/TouchListeningViewWrapper;->onRemovedFrom(Lcom/sonymobile/flix/components/Component;)V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/home/presenter/view/AdvWidgetComponent;->mHomeAdvWidget:Lcom/sonymobile/home/ui/widget/HomeAdvWidget;

    .line 35
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sonymobile/home/presenter/view/AdvWidgetComponent;->mHomeAdvWidget:Lcom/sonymobile/home/ui/widget/HomeAdvWidget;

    invoke-virtual {v0}, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->onResume()Z

    .line 47
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sonymobile/home/presenter/view/AdvWidgetComponent;->mHomeAdvWidget:Lcom/sonymobile/home/ui/widget/HomeAdvWidget;

    invoke-virtual {v0}, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->onStart()Z

    .line 43
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sonymobile/home/presenter/view/AdvWidgetComponent;->mHomeAdvWidget:Lcom/sonymobile/home/ui/widget/HomeAdvWidget;

    invoke-virtual {v0}, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->onStop()Z

    .line 63
    return-void
.end method
