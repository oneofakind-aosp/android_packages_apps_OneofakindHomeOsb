.class public abstract Lcom/sonyericsson/advancedwidget/framework/AdvWidgetHost;
.super Lcom/sonyericsson/advancedwidget/framework/Stub;
.source "AdvWidgetHost.java"


# instance fields
.field private mId:Ljava/util/UUID;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/sonyericsson/advancedwidget/framework/Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract addFullScreenEffect(Landroid/view/View;)V
.end method

.method protected call(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "funcName"    # Ljava/lang/String;
    .param p2, "params"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 85
    const-string v1, "addFullScreenEffect"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    check-cast p2, Landroid/view/View;

    .end local p2    # "params":Ljava/lang/Object;
    invoke-virtual {p0, p2}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetHost;->addFullScreenEffect(Landroid/view/View;)V

    .line 101
    :goto_0
    return-object v0

    .line 88
    .restart local p2    # "params":Ljava/lang/Object;
    :cond_0
    const-string v1, "removeFullScreenEffect"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 89
    check-cast p2, Landroid/view/View;

    .end local p2    # "params":Ljava/lang/Object;
    invoke-virtual {p0, p2}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetHost;->removeFullScreenEffect(Landroid/view/View;)V

    goto :goto_0

    .line 91
    .restart local p2    # "params":Ljava/lang/Object;
    :cond_1
    const-string v1, "onConfigured"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 92
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "params":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetHost;->onConfigured(I)V

    goto :goto_0

    .line 94
    .restart local p2    # "params":Ljava/lang/Object;
    :cond_2
    const-string v1, "setId"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 95
    check-cast p2, Ljava/util/UUID;

    .end local p2    # "params":Ljava/lang/Object;
    iput-object p2, p0, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetHost;->mId:Ljava/util/UUID;

    goto :goto_0

    .line 97
    .restart local p2    # "params":Ljava/lang/Object;
    :cond_3
    const-string v1, "getFrameworkVersion"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 98
    invoke-virtual {p0}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetHost;->getFrameworkVersion()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 100
    :cond_4
    const-string v1, "AdvWidgetHost"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown function: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public final getFrameworkVersion()I
    .locals 1

    .prologue
    .line 37
    const/16 v0, 0x500

    return v0
.end method

.method public getId()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetHost;->mId:Ljava/util/UUID;

    return-object v0
.end method

.method public abstract onConfigured(I)V
.end method

.method public abstract removeFullScreenEffect(Landroid/view/View;)V
.end method
