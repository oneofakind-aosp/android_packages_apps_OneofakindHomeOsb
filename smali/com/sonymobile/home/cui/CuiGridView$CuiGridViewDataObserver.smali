.class Lcom/sonymobile/home/cui/CuiGridView$CuiGridViewDataObserver;
.super Ljava/lang/Object;
.source "CuiGridView.java"

# interfaces
.implements Lcom/sonymobile/home/cui/CuiGridViewObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/home/cui/CuiGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CuiGridViewDataObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/cui/CuiGridView;


# direct methods
.method private constructor <init>(Lcom/sonymobile/home/cui/CuiGridView;)V
    .locals 0

    .prologue
    .line 773
    iput-object p1, p0, Lcom/sonymobile/home/cui/CuiGridView$CuiGridViewDataObserver;->this$0:Lcom/sonymobile/home/cui/CuiGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/home/cui/CuiGridView;Lcom/sonymobile/home/cui/CuiGridView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonymobile/home/cui/CuiGridView;
    .param p2, "x1"    # Lcom/sonymobile/home/cui/CuiGridView$1;

    .prologue
    .line 773
    invoke-direct {p0, p1}, Lcom/sonymobile/home/cui/CuiGridView$CuiGridViewDataObserver;-><init>(Lcom/sonymobile/home/cui/CuiGridView;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 776
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridView$CuiGridViewDataObserver;->this$0:Lcom/sonymobile/home/cui/CuiGridView;

    # invokes: Lcom/sonymobile/home/cui/CuiGridView;->onContentChanged()V
    invoke-static {v0}, Lcom/sonymobile/home/cui/CuiGridView;->access$1000(Lcom/sonymobile/home/cui/CuiGridView;)V

    .line 777
    return-void
.end method

.method public onViewChanged(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 781
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridView$CuiGridViewDataObserver;->this$0:Lcom/sonymobile/home/cui/CuiGridView;

    # invokes: Lcom/sonymobile/home/cui/CuiGridView;->onItemChanged(I)V
    invoke-static {v0, p1}, Lcom/sonymobile/home/cui/CuiGridView;->access$1100(Lcom/sonymobile/home/cui/CuiGridView;I)V

    .line 782
    return-void
.end method
