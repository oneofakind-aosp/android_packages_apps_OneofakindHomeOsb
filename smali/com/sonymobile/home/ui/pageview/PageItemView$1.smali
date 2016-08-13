.class Lcom/sonymobile/home/ui/pageview/PageItemView$1;
.super Lcom/sonymobile/flix/components/TouchArea;
.source "PageItemView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/ui/pageview/PageItemView;-><init>(Lcom/sonymobile/flix/components/Scene;Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/ui/pageview/PageItemViewListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/ui/pageview/PageItemView;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/ui/pageview/PageItemView;Lcom/sonymobile/flix/components/Scene;)V
    .locals 0
    .param p2, "x0"    # Lcom/sonymobile/flix/components/Scene;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/sonymobile/home/ui/pageview/PageItemView$1;->this$0:Lcom/sonymobile/home/ui/pageview/PageItemView;

    invoke-direct {p0, p2}, Lcom/sonymobile/flix/components/TouchArea;-><init>(Lcom/sonymobile/flix/components/Scene;)V

    return-void
.end method


# virtual methods
.method public onHover(IZFFLandroid/view/MotionEvent;)Z
    .locals 0
    .param p1, "event"    # I
    .param p2, "inside"    # Z
    .param p3, "localX"    # F
    .param p4, "localY"    # F
    .param p5, "sourceEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 89
    return p2
.end method

.method public onTouch(IZFFLandroid/view/MotionEvent;)Z
    .locals 0
    .param p1, "event"    # I
    .param p2, "inside"    # Z
    .param p3, "localX"    # F
    .param p4, "localY"    # F
    .param p5, "sourceEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 83
    return p2
.end method
