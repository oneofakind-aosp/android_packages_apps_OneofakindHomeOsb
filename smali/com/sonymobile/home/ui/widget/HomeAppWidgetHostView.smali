.class public Lcom/sonymobile/home/ui/widget/HomeAppWidgetHostView;
.super Landroid/appwidget/AppWidgetHostView;
.source "HomeAppWidgetHostView.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mIsScrollable:Z

.field private mUpdateOrientation:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Landroid/appwidget/AppWidgetHostView;-><init>(Landroid/content/Context;)V

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetHostView;->mUpdateOrientation:I

    .line 21
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetHostView;->mIsScrollable:Z

    .line 25
    iput-object p1, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetHostView;->mContext:Landroid/content/Context;

    .line 26
    return-void
.end method

.method private containsScrollableView()Z
    .locals 6

    .prologue
    .line 56
    new-instance v4, Ljava/util/ArrayDeque;

    invoke-direct {v4}, Ljava/util/ArrayDeque;-><init>()V

    .line 57
    .local v4, "viewGroupQueue":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Landroid/view/ViewGroup;>;"
    invoke-virtual {v4, p0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 59
    :cond_0
    invoke-virtual {v4}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 60
    invoke-virtual {v4}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 64
    .local v3, "viewGroup":Landroid/view/ViewGroup;
    instance-of v5, v3, Landroid/widget/AdapterView;

    if-eqz v5, :cond_1

    .line 65
    const/4 v5, 0x1

    .line 78
    .end local v3    # "viewGroup":Landroid/view/ViewGroup;
    :goto_0
    return v5

    .line 68
    .restart local v3    # "viewGroup":Landroid/view/ViewGroup;
    :cond_1
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 69
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_0

    .line 70
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 71
    .local v0, "child":Landroid/view/View;
    instance-of v5, v0, Landroid/view/ViewGroup;

    if-eqz v5, :cond_2

    .line 72
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0    # "child":Landroid/view/View;
    invoke-virtual {v4, v0}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 69
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 78
    .end local v1    # "childCount":I
    .end local v2    # "i":I
    .end local v3    # "viewGroup":Landroid/view/ViewGroup;
    :cond_3
    const/4 v5, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getUpdateOrientation()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetHostView;->mUpdateOrientation:I

    return v0
.end method

.method public isScrollable()Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetHostView;->mIsScrollable:Z

    return v0
.end method

.method public updateAppWidget(Landroid/widget/RemoteViews;)V
    .locals 1
    .param p1, "remoteViews"    # Landroid/widget/RemoteViews;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetHostView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetHostView;->mUpdateOrientation:I

    .line 31
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetHostView;->updateAppWidget(Landroid/widget/RemoteViews;)V

    .line 32
    invoke-direct {p0}, Lcom/sonymobile/home/ui/widget/HomeAppWidgetHostView;->containsScrollableView()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetHostView;->mIsScrollable:Z

    .line 33
    return-void
.end method
