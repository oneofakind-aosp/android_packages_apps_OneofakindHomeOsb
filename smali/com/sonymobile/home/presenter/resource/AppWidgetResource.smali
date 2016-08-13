.class public Lcom/sonymobile/home/presenter/resource/AppWidgetResource;
.super Ljava/lang/Object;
.source "AppWidgetResource.java"

# interfaces
.implements Lcom/sonymobile/home/model/ResourceItem;


# instance fields
.field private final mContentDescription:Ljava/lang/String;

.field private final mIsDefault:Z

.field private final mLabel:Ljava/lang/String;

.field private final mWidget:Lcom/sonymobile/home/ui/widget/AppWidget;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const-string v0, ""

    iput-object v0, p0, Lcom/sonymobile/home/presenter/resource/AppWidgetResource;->mLabel:Ljava/lang/String;

    .line 51
    const-string v0, ""

    iput-object v0, p0, Lcom/sonymobile/home/presenter/resource/AppWidgetResource;->mContentDescription:Ljava/lang/String;

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/home/presenter/resource/AppWidgetResource;->mWidget:Lcom/sonymobile/home/ui/widget/AppWidget;

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/home/presenter/resource/AppWidgetResource;->mIsDefault:Z

    .line 54
    return-void
.end method

.method public constructor <init>(Lcom/sonymobile/home/ui/widget/AppWidget;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "widget"    # Lcom/sonymobile/home/ui/widget/AppWidget;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "contentDescription"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p2, p0, Lcom/sonymobile/home/presenter/resource/AppWidgetResource;->mLabel:Ljava/lang/String;

    .line 41
    iput-object p1, p0, Lcom/sonymobile/home/presenter/resource/AppWidgetResource;->mWidget:Lcom/sonymobile/home/ui/widget/AppWidget;

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/home/presenter/resource/AppWidgetResource;->mIsDefault:Z

    .line 43
    iput-object p3, p0, Lcom/sonymobile/home/presenter/resource/AppWidgetResource;->mContentDescription:Ljava/lang/String;

    .line 44
    return-void
.end method


# virtual methods
.method public getContentDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/sonymobile/home/presenter/resource/AppWidgetResource;->mContentDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sonymobile/home/presenter/resource/AppWidgetResource;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getWidget()Lcom/sonymobile/home/ui/widget/AppWidget;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sonymobile/home/presenter/resource/AppWidgetResource;->mWidget:Lcom/sonymobile/home/ui/widget/AppWidget;

    return-object v0
.end method

.method public isDefault()Z
    .locals 1

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/sonymobile/home/presenter/resource/AppWidgetResource;->mIsDefault:Z

    return v0
.end method
