.class public Lcom/sonymobile/home/ui/pageview/PageItemView$ResizeInfo;
.super Ljava/lang/Object;
.source "PageItemView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/home/ui/pageview/PageItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResizeInfo"
.end annotation


# instance fields
.field public minSpanX:I

.field public minSpanY:I

.field public mode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 650
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 680
    iput v0, p0, Lcom/sonymobile/home/ui/pageview/PageItemView$ResizeInfo;->minSpanX:I

    .line 685
    iput v0, p0, Lcom/sonymobile/home/ui/pageview/PageItemView$ResizeInfo;->minSpanY:I

    return-void
.end method
