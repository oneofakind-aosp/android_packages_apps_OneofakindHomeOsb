.class public Lcom/sonymobile/home/presenter/resource/AdvWidgetResource;
.super Ljava/lang/Object;
.source "AdvWidgetResource.java"

# interfaces
.implements Lcom/sonymobile/home/model/ResourceItem;


# instance fields
.field private final mIsDefault:Z

.field private final mLabel:Ljava/lang/String;

.field private final mWidget:Lcom/sonymobile/home/ui/widget/HomeAdvWidget;


# direct methods
.method public constructor <init>(Lcom/sonymobile/home/ui/widget/HomeAdvWidget;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "widget"    # Lcom/sonymobile/home/ui/widget/HomeAdvWidget;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "isDefault"    # Z

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/sonymobile/home/presenter/resource/AdvWidgetResource;->mWidget:Lcom/sonymobile/home/ui/widget/HomeAdvWidget;

    .line 22
    if-eqz p2, :cond_0

    .line 23
    iput-object p2, p0, Lcom/sonymobile/home/presenter/resource/AdvWidgetResource;->mLabel:Ljava/lang/String;

    .line 27
    :goto_0
    iput-boolean p3, p0, Lcom/sonymobile/home/presenter/resource/AdvWidgetResource;->mIsDefault:Z

    .line 28
    return-void

    .line 25
    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/sonymobile/home/presenter/resource/AdvWidgetResource;->mLabel:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public getContentDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sonymobile/home/presenter/resource/AdvWidgetResource;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sonymobile/home/presenter/resource/AdvWidgetResource;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getWidget()Lcom/sonymobile/home/ui/widget/HomeAdvWidget;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/sonymobile/home/presenter/resource/AdvWidgetResource;->mWidget:Lcom/sonymobile/home/ui/widget/HomeAdvWidget;

    return-object v0
.end method

.method public isDefault()Z
    .locals 1

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/sonymobile/home/presenter/resource/AdvWidgetResource;->mIsDefault:Z

    return v0
.end method
